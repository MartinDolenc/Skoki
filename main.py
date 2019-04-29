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

# odkomentiraj, če želiš sporočila o napakah
debug(True)

@get('/static/<filename:path>')
def static(filename):
    return static_file(filename, root='static')

@get('/test')
def index():
    cur.execute("SELECT * FROM tekmovalec ORDER BY priimek, ime")
    return template('tekmovalci.html', tekmovalci=cur)

# test funkcija
@get('/')
def test():
    cur.execute("SELECT * FROM tekmovalec ORDER BY priimek, ime")
    return template('test.html', tekmovalci=cur)

@get('/Login_test')
def login_test():
    return template('Login_test.html')

@get('/Video_test')
def video_test():
    return template('Video.html')

@get('/sezone')
def sezone():
    return template('sezone.html')

@get('/tekma/:x/')
def tekma(x):
    cur.execute("SELECT id,kraj,datum,drzava,tip_tekme FROM tekma WHERE datum BETWEEN %s AND %s",
            [datetime.date(int(x)-1, 11, 1), datetime.date(int(x), 3, 31)])
    return template('tekme_sezona.html', x=x, tekme=cur)

@get('/dodaj_tekmovalca')
def dodaj_tekmovalca():
    return template('dodaj_tekmovalca.html', fis_code='', ime='', priimek='', drzava='', rojstvo='', klub='', smucke='', status='', napaka=None)

@post('/dodaj_tekmovalca')
def dodaj_tekmovalca_post():
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
        return template('dodaj_tekmovalca.html', fis_code=fis_code, ime=ime, priimek=priimek, drzava=drzava, rojstvo=rojstvo, klub=klub, smucke=smucke, status=status,
                        napaka = 'Zgodila se je napaka: %s' % ex)
    redirect("/")

######################################################################
# Glavni program

# priklopimo se na bazo
conn = psycopg2.connect(database=auth.db, host=auth.host, user=auth.user, password=auth.password)
conn.set_isolation_level(psycopg2.extensions.ISOLATION_LEVEL_AUTOCOMMIT) # onemogočimo transakcije
cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor) 

# poženemo strežnik na portu 8080, glej http://localhost:8000/
run(host='localhost', port=8000)
