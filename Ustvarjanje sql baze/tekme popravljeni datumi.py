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

bananiID = ['5000', '2797', '2866', '3484', '4141', '4183', '4174', '4168', '4192', '4398', '4403', '4424', '4427',
            '4434', '4443', '4580', '4454', '4457', '4460', '4698', '4718', '4721', '4733', '4736', '4858',
            '4740', '4744', '4936', '5230']

for sezona in range(2009, 2020):
    print(sezona)

    link = "https://www.fis-ski.com/DB/ski-jumping/calendar-results.html?eventselection=&place=&sectorcode=JP&seasoncode=" + str(sezona) + "&categorycode=WC&disciplinecode=&gendercode=M&racedate=&racecodex=&nationcode=&seasonmonth=X-" + str(sezona) + "&saveselection=-1&seasonselection="

    stran = html.fromstring(requests.get(link).content)

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

    for eve in eventLink:
        stran = html.fromstring(requests.get(eve).content)

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

    popravljeni_datumi = []

    if sezona == 2019:
        for d in datum:
            popravljeni_datumi.append(d[:6] + ' 2019')
    else:
        for d in datum:
            popravljeni_datumi.append(d[:11])


    novi_datumi = []

    dat_dict = {'Jan' : '-01-', 'Feb' : '-02-', 'Mar' : '-03-', 'Nov' : '-11-', 'Dec': '-12-'}

    for d in popravljeni_datumi:
        l = d.split()
        novi_datumi.append(l[2] + dat_dict.get(l[1]) + l[0])

    '''
    print(popravljeni_datumi)
    print(novi_datumi)

    print(id)
    print(kraj)
    print(novi_datumi)
    print(drzava)
    print(tip_tekme)

    print(len(id), len(kraj), len(novi_datumi), len(drzava), len(tip_tekme))
'''

    raw_data = {'ID': id, 'KRAJ': kraj, 'DATUM': novi_datumi, 'DRZAVA': drzava, 'TIP TEKME' : tip_tekme}

    df = pd.DataFrame(raw_data, columns=['ID', 'KRAJ', 'DATUM', 'DRZAVA', 'TIP TEKME'])

    df.to_sql('TEKMA', sqlite3.Connection(baza), if_exists='append')


