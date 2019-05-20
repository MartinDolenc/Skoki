#!/usr/bin/python
# -*- encoding: utf-8 -*-

# uvozimo bottle.py
from bottle import *

# uvozimo ustrezne podatke za povezavo
import auth_public as auth

#uvozimo paket, za datume
import datetime

# uvozimo psycopg2
import psycopg2, psycopg2.extensions, psycopg2.extras
psycopg2.extensions.register_type(psycopg2.extensions.UNICODE) # se znebimo problemov s šumniki

import hashlib # računanje MD5 kriptografski hash za gesla

# odkomentiraj, če želiš sporočila o napakah
debug(True)

secret = "to skrivnost je zelo tezko uganiti 1094107c907cw982982c42"
adminGeslo = "1111"

######################################################################
# Pomožne funkcije

def password_md5(s):
    """Vrni MD5 hash danega UTF-8 niza. Gesla vedno spravimo v bazo
       kodirana s to funkcijo."""
    h = hashlib.md5()
    h.update(s.encode('utf-8'))
    return h.hexdigest()

def get_user():
    """Poglej cookie in ugotovi, kdo je prijavljeni uporabnik,
       vrni njegov username in ime. Če ni prijavljen, presumeri
       na stran za prijavo ali vrni None (advisno od auto_login).
    """
    # Dobimo username iz piškotka
    username = request.get_cookie('username', secret=secret)
    # Preverimo, ali ta uporabnik obstaja
    if username is not None:
        cur.execute("SELECT username FROM uporabnik WHERE username=%s", [username])
        r = cur.fetchone()
        if r is not None:
            # uporabnik obstaja, vrnemo njegove podatke
            return username
    # Če pridemo do sem, uporabnik ni prijavljen, naredimo redirect
    else:
        return None

def is_admin(username):
    if username is not None:
        cur.execute("SELECT isadmin FROM uporabnik WHERE username=%s", [username])
        return cur.fetchone()[0]
    else:
        return False

# Pomožne funkcije
######################################################################

@get('/static/<filename:path>')
def static(filename):
    return static_file(filename, root='static')

@get('/')
def index():
    username = get_user()
    admin = is_admin(username)
    return template('zacetna_stran.html', napakaO=None, username=username, admin=admin)

@post('/')
def postani_admin():
    username = get_user()
    adminPassword = request.forms.adminPassword
    if adminPassword == adminGeslo:
        cur.execute("UPDATE uporabnik SET isadmin = True WHERE username=%s", [username])
        admin = is_admin(username)
        return template('zacetna_stran.html', napakaO=None, username=username, admin=admin)
    else:
        admin = is_admin(username)
        return template('zacetna_stran.html', napakaO="Vnesili ste napačno admin geslo.", username=username, admin=admin)

@get('/Login')
def login():
    return template('Login.html', napaka=None)

@post('/Login')
def login_post():
    """Obdelaj izpolnjeno formo za prijavo"""
    # Uporabniško ime, ki ga je uporabnik vpisal v formo
    username = request.forms.username
    # Izračunamo MD5 has gesla, ki ga bomo spravili
    password = password_md5(request.forms.password)
    # Preverimo, ali se je uporabnik pravilno prijavil
    cur.execute("SELECT * FROM uporabnik WHERE username=%s AND password=%s", [username, password])
    if cur.fetchone() is None:
        # Username in geslo se ne ujemata
        return template("Login.html",
                               napaka="Uporabnik ne obstaja",
                               username=username)
    else:
        # Vse je v redu, nastavimo cookie in preusmerimo na glavno stran
        response.set_cookie('username', username, path='/', secret=secret)
        redirect("/")

@get("/Logout")
def logout():
    """Pobriši cookie in preusmeri na login."""
    response.delete_cookie('username')
    redirect('/')

@get('/Register')
def register():
    return template('Register.html', username=None, napaka=None)

@post("/Register")
def register_post():
    print('trying to register')
    """Registriraj novega uporabnika."""
    username = request.forms.username
    password1 = request.forms.password1
    password2 = request.forms.password2
    adminPassword = request.forms.adminPassword
    adminCheck = request.forms.adminCheckbox
    # Ali uporabnik že obstaja?
    cur.execute("SELECT * FROM uporabnik WHERE username=%s", [username])
    if cur.fetchone():
        print('ime že zasedeno')
        # Uporabnik že obstaja
        return template("Register.html",
                               username=username,
                               napaka='To uporabniško ime je že zavzeto')
    elif not password1 == password2:
        print('gesli se ne ujemata')
        # Geslo se ne ujemata
        return template("Register.html",
                               username=username,
                               napaka='Gesli se ne ujemata')
    else:
        # Vse je v redu, vstavi novega uporabnika v bazo
        print('ustvarjamo novega uporabnika')

        if adminCheck == "kot admin":
            if adminPassword == adminGeslo:
                print('dodaj admina')

                password = password_md5(password1)
                cur.execute("INSERT INTO uporabnik (username, password, isadmin) VALUES (%s, %s, %s)",
                            (username, password, True))
                # Daj uporabniku cookie
                response.set_cookie('username', username, path='/', secret=secret)
                redirect("/")
            else:
                return template("Register.html",
                                username=username,
                                napaka='Admin geslo ni pravilno')
        else:
            print('ustvarimo navadnega uporabnika')

            password = password_md5(password1)
            cur.execute("INSERT INTO uporabnik (username, password, isadmin) VALUES (%s, %s, %s)",
                        (username, password, False))
            # Daj uporabniku cookie
            response.set_cookie('username', username, path='/', secret=secret)
            redirect("/")

@get('/tekmovalci/:y')
def tekmovalci(y):
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT * FROM tekmovalec ORDER BY " + y.replace('-', ' '))
    return template('tekmovalci.html', tekmovalci=cur, urejanje=True, napakaO=None, napaka=None, username=username, admin=admin)

@post('/tekmovalci/:y')
def tekmovalci(y):
    search = request.forms.search.lower()
    username = get_user()
    admin = is_admin(username)
    napaka = None
    head_list = ['status', 'ime', 'priimek', 'drzava', 'rojstvo', 'klub', 'smucke']
    sez = search.split(':')
    if len(sez) > 1:
        search = sez[1].strip()
        if sez[0].replace(' ', '') == 'fiscode':
            cur.execute("SELECT * FROM tekmovalec WHERE CAST(fis_code AS varchar(10)) LIKE %s", ['%' + search + '%'])
        elif sez[0].strip() in head_list:
            cur.execute("SELECT * FROM tekmovalec WHERE LOWER(" + sez[0] + ") LIKE %s", ['%' + search + '%'])
        else:
            napaka = "ne sam ne"
    else:
        cur.execute("SELECT * FROM tekmovalec WHERE CAST(fis_code AS varchar(10)) LIKE %s"
                    "OR LOWER(status) LIKE %s"
                    "OR LOWER(ime) LIKE %s"
                    "OR LOWER(priimek) LIKE %s"
                    "OR LOWER(drzava) LIKE %s"
                    "OR LOWER(rojstvo) LIKE %s"
                    "OR LOWER(klub) LIKE %s"
                    "OR LOWER(smucke) LIKE %s",
                    8*['%' + search + '%'])

    return template('tekmovalci.html', tekmovalci=cur, urejanje=False, napakaO=None, napaka=napaka, username=username, admin=admin)

@get('/tekmovalec/:x/:y')
def tekmovalec(x,y):
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT * FROM tekmovalec WHERE fis_code = %s", [int(x)])
    tekmovalec = cur.fetchall()
    if 'Ranki' in y.split("-"):
        cur.execute("SELECT t.datum, t.kraj, t.drzava, t.tip_tekme, r.ranki FROM rezultat r JOIN tekmovalec ON r.fis_code = tekmovalec.fis_code JOIN tekma t ON r.id = t.id WHERE r.fis_code = %s GROUP BY t.id, r.fis_code, r.ranki ORDER BY r."+ y.replace('-', ' '), [int(x)])
    else:
        cur.execute("SELECT t.datum, t.kraj, t.drzava, t.tip_tekme, r.ranki FROM rezultat r JOIN tekmovalec ON r.fis_code = tekmovalec.fis_code JOIN tekma t ON r.id = t.id WHERE r.fis_code = %s GROUP BY t.id, r.fis_code, r.ranki ORDER BY t."+ y.replace('-', ' '), [int(x)])
    return template('tekmovalec.html', x=x, tekmovalec=tekmovalec,tekme=cur, napakaO=None, napaka=None, username=username, admin=admin)

@get('/sezone')
def sezone():
    username = get_user()
    admin = is_admin(username)
    return template('sezone.html', napakaO=None, username = username, admin=admin)

@get('/tekme/:x/:y')
def tekme(x,y):
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT id,kraj,datum,drzava,tip_tekme FROM tekma WHERE datum BETWEEN %s AND %s ORDER BY " + y.replace('-', ' '),
                [datetime.date(int(x) - 1, 11, 1), datetime.date(int(x), 3, 31)])
    return template('tekme_sezona.html', napakaO=None, x=x, tekme=cur, username = username, admin=admin)

@get('/tekma/:x/:y')
def tekma(x,y):
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT kraj, datum FROM tekma WHERE id = %s", [int(x)])
    kraj_datum = cur.fetchone()
    datumi = str(kraj_datum[1]).split('-')
    datum = datumi[2] + '.' + datumi[1] + '.' + datumi[0]
    cur.execute("SELECT tip_tekme FROM tekma WHERE id = %s LIMIT 1", [int(x)])
    if cur.fetchone()[0] == 'posamicna':
        ekipna = False
    else:
        ekipna = True
    cur.execute("SELECT serija FROM rezultat WHERE id = %s ORDER BY serija DESC LIMIT 1", [int(x)])
    serija = cur.fetchone()[0]
    if serija == 2:
        cur.execute("SELECT ranki,startna_stevilka,fis_code,ime,priimek,drzava,skoki1,tocke1,skoki2,tocke2,tocke,mesto_v_ekipi FROM dve_seriji WHERE id = %s ORDER BY " + y.replace('-', ' '),[int(x)])
        serija_bool = True
    else:
        cur.execute("SELECT ranki,startna_stevilka,fis_code,ime,priimek,drzava,tocke,mesto_v_ekipi FROM ena_serija WHERE id=%s ORDER BY " + y.replace('-', ' '),[int(x)])
        serija_bool = False

    return template('tekma.html', napakaO=None, x = x, tekma = cur, kraj=kraj_datum[0], datum=datum, username = username, urejanje=True, admin=admin, ekipna=ekipna, serija=serija_bool, napaka=None)

@post('/tekma/:x/:y')
def tekma_post(x,y):
    search = request.forms.search.lower()
    username = get_user()
    admin = is_admin(username)
    napaka = None

    cur.execute("SELECT kraj, datum FROM tekma WHERE id = %s", [int(x)])
    kraj_datum = cur.fetchone()
    datumi = str(kraj_datum[1]).split('-')
    datum = datumi[2] + '.' + datumi[1] + '.' + datumi[0]
    cur.execute("SELECT tip_tekme FROM tekma WHERE id = %s LIMIT 1", [int(x)])
    if cur.fetchone()[0] == 'posamicna':
        ekipna = False
    else:
        ekipna = True
    cur.execute("SELECT serija FROM rezultat WHERE id = %s ORDER BY serija DESC LIMIT 1", [int(x)])
    serija = cur.fetchone()[0]
    if serija == 2:
        serija_bool = True
        head_list = ['ranki', 'startna_stevilka', 'fis_code', 'skoki1', 'tocke1', 'skoki2', 'tocke2', 'tocke', 'mesto_v_ekipi']
        string = 'dve_seriji'
    else:
        serija_bool = False
        head_list = ['ranki', 'startna_stevilka', 'fis_code', 'tocke', 'mesto_v_ekipi']
        string = 'ena_serija'

    text_list = ['ime', 'priimek', 'drzava']
    sez = search.split(':')

    if len(sez) > 1:
        if sez[0].replace(' ', '_') in head_list:
            cur.execute("SELECT " + ','.join(head_list[:3]) + ',' + ','.join(text_list) + ',' + ','.join(head_list[3:]) + ' FROM ' + string + " WHERE id = %s AND CAST(" + sez[0] + " AS varchar(10)) LIKE %s",
            [int(x)] + ['%' + sez[1].strip() + '%'])
        elif sez[0].replace(' ', '_') in text_list:
            cur.execute("SELECT " + ','.join(head_list[:3]) + ',' + ','.join(text_list) + ',' + ','.join(head_list[3:]) + ' FROM ' + string + " WHERE id = %s AND LOWER(" + sez[0] + ") LIKE %s",
            [int(x)] + ['%' + sez[1].strip() + '%'])
        else:
            napaka = "ne sam ne"
    else:
        cur.execute("SELECT " + ','.join(head_list[:3]) + ',' + ','.join(text_list) + ',' + ','.join(head_list[3:]) + ' FROM ' + string + " WHERE id = %s AND (CAST("
                    + ' AS varchar(10)) LIKE %s OR CAST('.join(head_list) + " AS varchar(10)) LIKE %s"
                    + " OR LOWER(" + ') LIKE %s OR LOWER('.join(text_list) + ") LIKE %s)",
                    [int(x)] + (len(head_list) + len(text_list)) * ['%' + search + '%'])

    return template('tekma.html', napakaO=None, x=x, tekma=cur, kraj=kraj_datum[0], datum=datum, username=username, urejanje=False,
                    admin=admin, ekipna=ekipna, serija=serija_bool, napaka=napaka)


@get('/drzave')
def drzave():
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT kratica,ime FROM drzava ORDER BY kratica")
    return template('drzave.html',napakaO=None, drzave=cur,username=username,admin=admin)

@get('/drzava/:x')
def drzava(x):
    username = get_user()
    cur.execute("SELECT ime FROM drzava WHERE kratica=%s",[x])
    ime = cur.fetchone()[0]
    admin = is_admin(username)
    cur.execute("SELECT * FROM tekmovalec WHERE drzava=%s ORDER BY priimek,ime",[x])
    tekmovalci=cur.fetchall()

    cur.execute("SELECT id FROM tekma WHERE tip_tekme = 'ekipna' AND datum <= date('now') ORDER BY datum DESC LIMIT 1")
    id = cur.fetchone()[0]
    cur.execute("SELECT kraj FROM tekma WHERE tekma.id=%s",[int(id)])
    kraj = cur.fetchone()[0]
    cur.execute("SELECT datum FROM tekma WHERE tekma.id=%s",[int(id)])
    datum = cur.fetchone()[0]
    datumi = str(datum).split('-')
    datum = datumi[2] + '.' + datumi[1] + '.' + datumi[0]
    cur.execute(
        "SELECT r1.ranki, r1.startna_stevilka, t.fis_code, t.ime, t.priimek, t.drzava, r1.skoki AS skoki1, r1.tocke AS tocke1, r2.skoki AS skoki2, r2.tocke AS tocke2, r1.mesto_v_ekipi "
        "FROM rezultat r1 JOIN rezultat r2 ON r1.id = r2.id AND r1.fis_code = r2.fis_code AND r1.serija < r2.serija JOIN tekmovalec t ON r1.fis_code = t.fis_code "
        "WHERE r1.id=%s ORDER BY r1.ranki, r1.mesto_v_ekipi ASC",[int(id)])
    tekma=cur.fetchall()

    cur.execute(
        "WITH zdruzena AS (SELECT * FROM rezultat JOIN tekma ON rezultat.id = tekma.id WHERE rezultat.drzava = %s) "
        "SELECT ranki, count(*) AS stevilo FROM zdruzena WHERE tip_tekme <> 'ekipna' GROUP BY ranki ORDER BY ranki",[x])
    mesta = cur.fetchall()
    return template('drzava.html', napakaO=None, x=x, ime=ime,tekmovalci=tekmovalci,kraj=kraj,datum=datum, tekma=tekma, serija=True, ekipna=True, mesta=mesta, username = username, admin=admin )


@get('/zadnja_tekma')
def zadnja_tekma():
    cur.execute("SELECT id FROM tekma WHERE datum <= date('now') ORDER BY datum DESC LIMIT 1")
    id = cur.fetchone()[0]
    return tekma(id,'ranki-ASC')

@get('/dodaj_drzavo')
def dodaj_drzavo():
    username = get_user()
    admin = is_admin(username)
    return template('dodaj_drzavo.html',kratica='',ime='',napakaO=None, napaka=None,username=username,admin=admin)

@post('/dodaj_drzavo')
def dodaj_drzavo_post():
    username = get_user()
    admin=is_admin(username)
    kratica = request.forms.kratica
    ime = request.forms.ime

    # dodaj vse ikonce države v static/flags

    try:
        cur.execute("INSERT INTO drzava (kratica,ime) VALUES (%s,%s)",[kratica,ime])
        conn.commit()
    except Exception as ex:
        return template('dodaj_drzavo.html',kratica=kratica,ime=ime,napakaO=None,napaka='Zgodila se je napaka: %s'% ex,username=username,admin=admin)
    redirect("/")

@get('/dodaj_tekmovalca')
def dodaj_tekmovalca():
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT kratica,ime FROM drzava")
    drzave = cur.fetchall()
    return template('dodaj_tekmovalca.html', fis_code='', ime='', priimek='', drzave=drzave, rojstvo='', klub='',
                        smucke='', status='', napakaO=None, napaka=None, username=username, admin=admin)

@post('/dodaj_tekmovalca')
def dodaj_tekmovalca_post():
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT kratica,ime FROM drzava")
    drzave = cur.fetchall()
    fis_code = request.forms.fis_code
    ime = request.forms.ime
    priimek = request.forms.priimek
    drzava = request.forms.drzava
    rojstvo = request.forms.rojstvo
    klub = request.forms.klub
    smucke = request.forms.smucke
    status = request.forms.status
    try:
        cur.execute("INSERT INTO tekmovalec (fis_code, ime, priimek, drzava, rojstvo, klub, smucke, status) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)",
                    (fis_code, ime, priimek, drzava, rojstvo, klub, smucke, status))
        conn.commit()
    except Exception as ex:
        return template('dodaj_tekmovalca.html', napakaO=None, fis_code=fis_code, ime=ime, priimek=priimek, drzave=drzave, rojstvo=rojstvo, klub=klub, smucke=smucke, status=status,
                        napaka = 'Zgodila se je napaka: %s' % ex, username=username, admin=admin)
    redirect("/")

@get('/uredi_tekmovalca/:x/')
def uredi_tekmovalca(x):
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT kratica,ime FROM drzava")
    drzave = cur.fetchall()
    cur.execute("SELECT * FROM tekmovalec WHERE fis_code = %s", [int(x)])
    podatki = cur.fetchone()
    return template('uredi_tekmovalca.html', fis_code=x, status=podatki[1], ime=podatki[2], priimek=podatki[3], drzava=podatki[4], drzave=drzave, rojstvo=podatki[5], klub=podatki[6],
                        smucke=podatki[7], x=x, napakaO=None, napaka=None, username=username, admin=admin)

@post('/uredi_tekmovalca/:x/')
def uredi_tekmovalca_post(x):
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT kratica,ime FROM drzava")
    drzave = cur.fetchall()
    status=request.forms.status
    ime=request.forms.ime
    priimek=request.forms.priimek
    drzava=request.forms.drzava
    rojstvo=request.forms.rojstvo
    klub=request.forms.klub
    smucke=request.forms.smucke
    try:
        cur.execute("UPDATE tekmovalec SET status=%s,drzava=%s, rojstvo=%s,klub=%s,smucke=%s WHERE fis_code=%s",
                    [status,drzava,rojstvo,klub,smucke,x])
        conn.commit()
    except Exception as ex:
        return template('uredi_tekmovalca.html', fis_code=x, status=status, ime=ime, priimek=priimek, drzava=drzava, drzave=drzave, rojstvo=rojstvo, klub=klub,
                        smucke=smucke, x=x, napakaO=None, napaka = 'Zgodila se je napaka: %s' % ex, username=username, admin=admin)
    redirect("/")

@get('/dodaj_tekmo')
def dodaj_tekmo():
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT kratica,ime FROM drzava")
    return template('dodaj_tekmo.html', napakaO=None, id='', kraj='', drzave=cur, datum='', tip_tekme='', napaka=None, username = username, admin=admin)

@post('/dodaj_tekmo')
def dodaj_tekmo_post():
    username = get_user()
    admin = is_admin(username)
    cur.execute("SELECT kratica,ime FROM drzava")
    drzave = cur.fetchall()
    id = request.forms.id
    kraj = request.forms.kraj
    drzava = request.forms.drzava
    datum = request.forms.datum
    tip_tekme = request.forms.tip_tekme
    try:
        cur.execute("INSERT INTO tekma (id, kraj, datum, drzava, tip_tekme) VALUES (%s, %s, %s, %s, %s)",
                    (id, kraj, datum, drzava, tip_tekme))
        conn.commit()
    except Exception as ex:
        return template('dodaj_tekmo.html', id=id, kraj=kraj, datum=datum, drzave=drzave, tip_tekme=tip_tekme, napakaO=None,
                        napaka = 'Zgodila se je napaka: %s' % ex, username = username, admin=admin)
    redirect("/")

@get('/zanimivosti/:x')
def zanimivosti(x):
    username=get_user()
    admin=is_admin(username)
    sezone = [2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019]
    cur.execute("SELECT * FROM drzava ORDER BY kratica")
    drzave = cur.fetchall()
    cur.execute("SELECT fis_code,ime,priimek FROM tekmovalec ORDER BY priimek,ime")
    vsi_tekmovalci = cur.fetchall()
    return template('zanimivosti.html',sezone=sezone,drzave=drzave,napaka=None, zanimivost=int(x),
                    username=username,admin=admin,napakaO=None,izpis=False,tekmovalci=cur,vsi_tekmovalci=vsi_tekmovalci,tekme_boljsi=cur)

@post('/zanimivosti/1')
def zanimivosti_post_1():
    username=get_user()
    admin=is_admin(username)
    sezone = [2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019]
    cur.execute("SELECT * FROM drzava ORDER BY kratica")
    drzave = cur.fetchall()
    drzava = request.forms.drzava
    sezona1= request.forms.sezona1
    sezona2= request.forms.sezona2
    '''Potrebno še malo dodelat ta SQL stavek, za enkrat samo v zelo slabi strukturi, samo toliko da vidim če vse deluje.'''
    cur.execute("WITH tek AS (WITH zdruzena AS (SELECT * FROM tekmovalec JOIN drzava ON tekmovalec.drzava = drzava.kratica JOIN rezultat USING (fis_code) JOIN tekma USING (id))"
                "SELECT fis_code FROM zdruzena WHERE kratica=%s AND datum BETWEEN %s AND %s GROUP BY fis_code) SELECT * FROM tek JOIN tekmovalec USING (fis_code)",[drzava, datetime.date(int(sezona1) - 1, 11, 1), datetime.date(int(sezona2), 3, 31)])
    return template('zanimivosti.html',sezone=sezone,drzave=drzave,napaka=None,tekmovalci=cur, zanimivost=1,
                    username=username,admin=admin,napakaO=None,izpis=True,vsi_tekmovalci=cur,tekme_boljsi=cur)

@post('/zanimivosti/2')
def zanimivosti_post_2():
    username=get_user()
    admin=is_admin(username)
    cur.execute("SELECT fis_code,ime,priimek FROM tekmovalec ORDER BY priimek,ime")
    vsi_tekmovalci = cur.fetchall()
    tekmovalec1 = request.forms.tekmovalec1
    tekmovalec2 = request.forms.tekmovalec2
    id_1 = int(tekmovalec1.split('-')[0])
    print(id_1)
    id_2 = int(tekmovalec2.split('-')[0])
    '''Potrebno še pobrati rezultate iz forma in napisati SQL stavek'''
    tekme_boljsi = []
    return template('zanimivosti.html',tekme_boljsi=tekme_boljsi,vsi_tekmovalci=vsi_tekmovalci,izpis=True,
                    sezone=cur,drzave=cur,napaka=None,tekmovalci=cur,zanimivost=2,username=username,admin=admin,napakO=None)

######################################################################
# Glavni program

# priklopimo se na bazo
conn = psycopg2.connect(database=auth.db, host=auth.host, user=auth.user, password=auth.password)
conn.set_isolation_level(psycopg2.extensions.ISOLATION_LEVEL_AUTOCOMMIT) # onemogočimo transakcije
cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor) 

# poženemo strežnik na portu 8080, glej http://localhost:8000/
run(host='localhost', port=8000, reloader=True)
