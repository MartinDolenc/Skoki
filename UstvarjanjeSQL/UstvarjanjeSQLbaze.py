# Uvozimo potrebne knjižnice
from lxml import html
import requests
import csv
import re
import pandas as pd
import sqlalchemy
import sqlite3
import itertools

def text(tag):
    #print(tag.text_content())
    parts = [tag.text] + [text(t) for t in tag] + [tag.tail]
    if tag.tag == 'br':
        parts.insert(0, ' ')
    return re.sub(r'\s+', ' ', ''.join(filter(None, parts)))

baza = 'Skoki_test_2009-19.db'

drzavaDrzava = []

bananiID = ['5000', '2797', '2866', '3484', '4141', '4183', '4174', '4168', '4398', '4403', '4424', '4427',
            '4434', '4443', '4580', '4454', '4457', '4460', '4698', '4718', '4721', '4733', '4736', '4858',
            '4740', '4744', '4936', '5230']

def sestaviBazo(stran):
    kraj1 = [text(r).replace('*', '').strip() for r in stran.xpath("//span[@class='bold clip-xs']")]

    drzava1 = [text(r).replace('*', '').strip() for r in stran.xpath("//span[@class='country__name-short']")]

    allEventLinks = [r.get("href") for r in
                     stran.xpath("//a[@class='pr-1 g-lg-1 g-md-1 g-sm-2 hidden-xs justify-left']")]

    cancelledEventLinks = [r.get("href") for r in
                           stran.xpath("//a[@class='g-sm justify-left hidden-xs hidden-md-up bold cancelled']")]

    eventLink = []

    for i in range(0, len(allEventLinks)):
        if allEventLinks[i] not in cancelledEventLinks:
            eventLink.append(allEventLinks[i])
        else:
            del drzava1[i]

    for d in range(0, len(drzava1)):
        if drzava1[d] == 'FIS':
            drzava1[d] = ''
            kraj1[d] = ''
            eventLink[d] = ''

    drzava1 = list(filter(None, drzava1))
    kraj1 = list(filter(None, kraj1))
    eventLink = list(filter(None, eventLink))

    y = 0

    kraj = []
    drzava = []
    datum = []
    id = []
    tip_tekme = []

    for str in eventLink:
        stran = html.fromstring(requests.get(str).content)

        spoli = [text(r).replace('*', '').strip() for r in stran.xpath("//a[@class='g-sm-8 g-xs-9 hidden-md-up']")[0]
            .xpath("//div[@class='g-xs-12 justify-right bold']")]

        links = []

        linksForReal = []
        for i in range(0, len(spoli)):

            if (spoli[i] == 'M'):
                links.append(stran.xpath("//a[@class='g-sm-8 g-xs-9 hidden-md-up']")[i].get("href"))
                datum += [text(r).replace('*', '').strip() for r in
                        stran.xpath("//a[@class='px-md-1 px-lg-1 pl-xs-1 g-lg-2 g-md-3 g-sm-2 g-xs-4 justify-left']")[i]]

                if 'Team' in [text(r).replace('*', '').strip() for r in stran.xpath("//div[@class='clip']")][0:][::2][i]:
                    tip_tekme.append('Ekipno')
                else:
                    tip_tekme.append('Posamično')

        for l in links:
            linksForReal.append(re.search(r'\d+$', l).group())

        for l in linksForReal:
            kraj.append(kraj1[y])
            drzava.append(drzava1[y])

        y += 1
        id += linksForReal

    raw_data = {'ID': id, 'KRAJ': kraj, 'DATUM': datum, 'DRZAVA': drzava, 'TIP TEKME' : tip_tekme}

    df = pd.DataFrame(raw_data, columns=['ID', 'KRAJ', 'DATUM', 'DRZAVA', 'TIP TEKME'])

    df.to_sql('TEKMA', sqlite3.Connection(baza), if_exists='append')

    idR = []
    rankiR = []
    startnaStevilkaR = []
    fisCodeR = []
    drzavaR = []
    skokiR = []
    tockeR = []
    serijaR = []
    mesto_v_ekipiR = []

    for i in id:
        print(i)

        if i not in bananiID:
            link = "https://www.fis-ski.com/DB/general/results.html?sectorcode=JP&raceid=" + i
            stran = html.fromstring(requests.get(link).content)

            if 'Team' in [text(r).replace('*', '').strip() for r in stran.xpath("//div[@class='event-header__kind']")][0]:
                if len([text(r).replace('*', '').strip() for r in
                        stran.xpath(
                            "//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right hidden-xs text-right pale']")]) > 2:

                    ranki = [text(r).replace('*', '').strip() for r in
                             stran.xpath("//div[@class='g-lg-1 g-md-1 g-sm-1 g-xs-2 justify-right bold pr-1']")]
                    fisCode = [text(r).replace('*', '').strip() for r in
                               stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-3 hidden-xs justify-right gray pr-1']")]
                    drzava1 = [text(r).replace('*', '').strip() for r in
                               stran.xpath("//a[@class='table-row table-row_theme_main']")]
                    skokiInRezultati = [text(r).replace('*', '').strip() for r in stran.xpath(
                        "//a[@class='table-row table-row_theme_additional']//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right bold hidden-xs']")]

                    ranki = list(itertools.chain(*zip(ranki, ranki)))
                    ranki = list(itertools.chain(*zip(ranki, ranki)))
                    ranki = list(itertools.chain(*zip(ranki, ranki)))

                    print(len(skokiInRezultati))

                    skoki = skokiInRezultati[0:][::2]
                    rezultati = skokiInRezultati[1:][::2]

                    fisCodeReal = []

                    for str in fisCode:
                        if len(str) == 4:
                            fisCodeReal.append(str)

                    fisCodeReal = list(itertools.chain(*zip(fisCodeReal, fisCodeReal)))

                    serija = list(itertools.chain(*zip(['1'] * (len(ranki) // 2), ['2'] * (len(ranki) // 2))))
                    mesto_v_ekipi = ['1', '2', '3', '4'] * (len(ranki) // 8)
                    mesto_v_ekipi = list(itertools.chain(*zip(mesto_v_ekipi, mesto_v_ekipi)))

                    # rezultati = list(filter(None, rezultati))
                    # skoki = list(filter(None, skoki))

                    startnaStevilka = [''] * len(ranki)

                    drzava = []
                    for str in drzava1:
                        drzava.append(str.split()[-2])

                    drzava = list(itertools.chain(*zip(drzava, drzava)))
                    drzava = list(itertools.chain(*zip(drzava, drzava)))
                    drzava = list(itertools.chain(*zip(drzava, drzava)))

                    fisCode = fisCodeReal
                else:
                    ranki = [text(r).replace('*', '').strip() for r in
                             stran.xpath("//div[@class='g-lg-1 g-md-1 g-sm-1 g-xs-2 justify-right bold pr-1']")]
                    fisCode = [text(r).replace('*', '').strip() for r in
                               stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-3 hidden-xs justify-right gray pr-1']")]
                    drzava1 = [text(r).replace('*', '').strip() for r in
                               stran.xpath("//a[@class='table-row table-row_theme_main']")]
                    skokiInRezultati = [text(r).replace('*', '').strip() for r in stran.xpath(
                        "//a[@class='table-row table-row_theme_additional']//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right bold hidden-xs']")]

                    ranki = list(itertools.chain(*zip(ranki, ranki)))
                    ranki = list(itertools.chain(*zip(ranki, ranki)))

                    print(len(skokiInRezultati))

                    skoki = skokiInRezultati[0:][::2]
                    rezultati = skokiInRezultati[1:][::2]

                    fisCodeReal = []

                    for str in fisCode:
                        if len(str) == 4:
                            fisCodeReal.append(str)

                    serija = ['1'] * len(ranki)
                    mesto_v_ekipi = ['1', '2', '3', '4'] * (len(ranki) // 4)

                    # rezultati = list(filter(None, rezultati))
                    # skoki = list(filter(None, skoki))

                    startnaStevilka = [''] * len(ranki)

                    drzava = []
                    for str in drzava1:
                        drzava.append(str.split()[-2])

                    drzava = list(itertools.chain(*zip(drzava, drzava)))
                    drzava = list(itertools.chain(*zip(drzava, drzava)))

                    fisCode = fisCodeReal

                dobiTekmovalcaIzTekme(
                    [r.get("href") for r in stran.xpath("//a[@class='table-row table-row_theme_additional']")])

            else:
                if len([text(r).replace('*', '').strip() for r in
                        stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right hidden-xs pale']")]) > 2:

                    ranki = [text(r).replace('*', '').strip() for r in
                             stran.xpath("//div[@class='g-lg-1 g-md-1 g-sm-1 g-xs-2 justify-right pr-1 gray bold']")]
                    startnaStevilka = [text(r).replace('*', '').strip() for r in
                                       stran.xpath(
                                           "//div[@class='g-lg-1 g-md-1 g-sm-1 justify-right hidden-xs pr-1 gray']")]
                    fisCode = [text(r).replace('*', '').strip() for r in
                               stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 hidden-xs justify-right gray pr-1']")]

                    drzava = [text(r).replace('*', '').strip() for r in
                              stran.xpath("//div[@id='events-info-results']//span[@class='country__name-short']")]

                    skokiInRezultati = [text(r).replace('*', '').strip() for r in
                                        stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right bold hidden-xs']")]

                    skoki = skokiInRezultati[0:][::2]
                    rezultati = skokiInRezultati[1:][::2]

                    # skoki = skoki[:len(drzava)]
                    # rezultati = rezultati[:len(drzava)]
                    ranki = ranki[:len(drzava)]
                    fisCode = fisCode[:len(drzava)]
                    startnaStevilka = startnaStevilka[:len(drzava)]

                    ranki = list(itertools.chain(*zip(ranki, ranki)))
                    startnaStevilka = list(itertools.chain(*zip(startnaStevilka, startnaStevilka)))
                    fisCode = list(itertools.chain(*zip(fisCode, fisCode)))

                    serija = list(itertools.chain(*zip(['1'] * (len(ranki) // 2), ['2'] * (len(ranki) // 2))))
                    mesto_v_ekipi = [''] * len(serija)

                    drzava = list(itertools.chain(*zip(drzava, drzava)))

                    skoki = skoki[:len(drzava)]
                    rezultati = rezultati[:len(drzava)]

                else:

                    ranki = [text(r).replace('*', '').strip() for r in
                             stran.xpath("//div[@class='g-lg-1 g-md-1 g-sm-1 g-xs-2 justify-right pr-1 gray bold']")]
                    startnaStevilka = [text(r).replace('*', '').strip() for r in
                                       stran.xpath(
                                           "//div[@class='g-lg-1 g-md-1 g-sm-1 justify-right hidden-xs pr-1 gray']")]
                    fisCode = [text(r).replace('*', '').strip() for r in
                               stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 hidden-xs justify-right gray pr-1']")]

                    drzava = [text(r).replace('*', '').strip() for r in
                              stran.xpath("//div[@id='events-info-results']//span[@class='country__name-short']")]

                    skokiInRezultati = [text(r).replace('*', '').strip() for r in
                                        stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right bold hidden-xs']")]

                    skoki = skokiInRezultati[0:][::2]
                    rezultati = skokiInRezultati[1:][::2]

                    skoki = skoki[:len(drzava)]
                    rezultati = rezultati[:len(drzava)]

                    ranki = ranki[:len(drzava)]
                    fisCode = fisCode[:len(drzava)]
                    startnaStevilka = startnaStevilka[:len(drzava)]

                    serija = ['1'] * len(ranki)
                    mesto_v_ekipi = [''] * len(serija)

                dobiTekmovalcaIzTekme([r.get("href") for r in stran.xpath("//div[@id='events-info-results']//a[@class='table-row']")])

            if (len(skoki) != 0) or (len(rezultati) != 0):

                idR += [i] * len(ranki)
                rankiR += ranki
                startnaStevilkaR += startnaStevilka
                fisCodeR += fisCode
                drzavaR += drzava
                skokiR += skoki
                tockeR += rezultati
                serijaR += serija
                mesto_v_ekipiR += mesto_v_ekipi

            else:
                serija = ['3'] * len(ranki)

                rez = [text(r).replace('*', '').strip() for r in
                       stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-3 g-xs-5 justify-right blue bold ']")]

                rezultati = rez[:len(serija)]

                skoki = [''] * len(serija)

                idR += [i] * len(ranki)
                rankiR += ranki
                startnaStevilkaR += startnaStevilka
                fisCodeR += fisCode
                drzavaR += drzava
                skokiR += skoki
                tockeR += rezultati
                serijaR += serija
                mesto_v_ekipiR += mesto_v_ekipi

            print(len(idR), len(rankiR), len(startnaStevilkaR), len(fisCodeR), len(drzavaR), len(skokiR), len(tockeR),
                  len(serijaR), len(mesto_v_ekipiR))

    raw_dataR = {'ID': idR, 'RANKI': rankiR, 'STARTNA STEVILKA': startnaStevilkaR, 'FIS CODE': fisCodeR,
                 'DRZAVA': drzavaR, 'SKOKI': skokiR,
                 'TOCKE': tockeR, 'SERIJA': serijaR, 'MESTO V EKIPI': mesto_v_ekipiR}

    dfR = pd.DataFrame(raw_dataR, columns=['ID', 'RANKI', 'STARTNA STEVILKA', 'FIS CODE', 'DRZAVA', 'SKOKI',
                                           'TOCKE', 'SERIJA', 'MESTO V EKIPI'])

    dfR.to_sql('REZULTAT', sqlite3.Connection(baza), if_exists='append')

statusTekmovalcev = []
fisCodeTekmovalcev = []
imeTekmovalcev = []
priimekTekmovalcev = []
drzavaTekmovalcev = []
rojstvoTekmovalcev = []
klubTekmovalcev = []
smuckeTekmovalcev = []

def dobiTekmovalcaIzTekme(sezLinku):

    for l in sezLinku:
        stran = html.fromstring(requests.get(l).content)

        tabelaTekmovalca = [text(r).replace('*', '').strip() for r in stran.xpath("//span[@class='profile-info__value']")]

        imePriimekTekmovalca = [text(r).replace('*', '').strip() for r in stran.xpath("//h1[@class='athlete-profile__name']")][0]

        klubTekmovalca = [text(r).replace('*', '').strip() for r in stran.xpath("//div[@class='athlete-profile__team spacer__section']")][0]

        drzavaTekmovalca = [text(r).replace('*', '').strip() for r in stran.xpath("//span[@class='country__name-short']")][0]

        ime = imePriimekTekmovalca.rsplit(' ', 1)[0]
        priimek = imePriimekTekmovalca.rsplit(' ', 1)[1]

        fisCode = tabelaTekmovalca[0]
        status = tabelaTekmovalca[3]
        rojstvo = tabelaTekmovalca[1]
        smucke = tabelaTekmovalca[-2]

        if fisCode not in fisCodeTekmovalcev:
            statusTekmovalcev.append(status)
            fisCodeTekmovalcev.append(fisCode)
            imeTekmovalcev.append(ime)
            priimekTekmovalcev.append(priimek)
            drzavaTekmovalcev.append(drzavaTekmovalca)
            rojstvoTekmovalcev.append(rojstvo)
            klubTekmovalcev.append(klubTekmovalca)
            smuckeTekmovalcev.append(smucke)

        if drzavaTekmovalca not in drzavaDrzava:
            drzavaDrzava.append(drzavaTekmovalca)


for sezona in range(2009, 2020):
    print(sezona)

    link = "https://www.fis-ski.com/DB/ski-jumping/calendar-results.html?eventselection=&place=&sectorcode=JP&seasoncode=" + str(sezona) + "&categorycode=WC&disciplinecode=&gendercode=M&racedate=&racecodex=&nationcode=&seasonmonth=X-" + str(sezona) + "&saveselection=-1&seasonselection="

    stran = html.fromstring(requests.get(link).content)

    sestaviBazo(stran)


raw_dataT = {'FIS CODE' : fisCodeTekmovalcev, 'STATUS' : statusTekmovalcev, 'IME' : imeTekmovalcev, 'PRIIMEK' : priimekTekmovalcev,
                  'DRZAVA' : drzavaTekmovalcev, 'ROJSTVO' : rojstvoTekmovalcev, 'KLUB' : klubTekmovalcev, 'SMUCKE' : smuckeTekmovalcev}

dfT = pd.DataFrame(raw_dataT, columns=['FIS CODE', 'STATUS', 'IME', 'PRIIMEK', 'DRZAVA', 'ROJSTVO', 'KLUB', 'SMUCKE'])

dfT.to_sql('TEKMOVALEC', sqlite3.Connection(baza), if_exists='append')

raw_dataD = {'DRZAVA': drzavaDrzava}

dfD = pd.DataFrame(raw_dataD, columns = ['DRZAVA'])

dfD.to_sql('DRZAVA', sqlite3.Connection(baza), if_exists='append')