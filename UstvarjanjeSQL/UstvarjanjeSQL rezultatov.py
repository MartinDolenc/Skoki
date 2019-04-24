#!/usr/bin/env python3

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
    parts = [tag.text] + [text(t) for t in tag] + [tag.tail]
    if tag.tag == 'br':
        parts.insert(0, ' ')
    return re.sub(r'\s+', ' ', ''.join(filter(None, parts)))

# za posamezne tekme

link = "https://www.fis-ski.com/DB/general/results.html?sectorcode=JP&raceid=4403"
stran = html.fromstring(requests.get(link).content)

if len([text(r).replace('*', '').strip() for r in stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right hidden-xs pale']")]) > 2:

    ranki = [text(r).replace('*', '').strip() for r in
             stran.xpath("//div[@class='g-lg-1 g-md-1 g-sm-1 g-xs-2 justify-right pr-1 gray bold']")]
    startnaStevilka = [text(r).replace('*', '').strip() for r in
                       stran.xpath("//div[@class='g-lg-1 g-md-1 g-sm-1 justify-right hidden-xs pr-1 gray']")]
    fisCode = [text(r).replace('*', '').strip() for r in
               stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 hidden-xs justify-right gray pr-1']")]
    skokiInRezultati = [text(r).replace('*', '').strip() for r in
                        stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right bold hidden-xs']")]
    drzava = [text(r).replace('*', '').strip() for r in stran.xpath("//span[@class='country__name-short']")]

    skoki = skokiInRezultati[0:][::2]
    rezultati = skokiInRezultati[1:][::2]

    ranki = list(itertools.chain(*zip(ranki, ranki)))
    startnaStevilka = list(itertools.chain(*zip(startnaStevilka, startnaStevilka)))
    fisCode = list(itertools.chain(*zip(fisCode, fisCode)))

    serija = list(itertools.chain(*zip(['1'] * (len(ranki) // 2), ['2'] * (len(ranki) // 2))))
    mesto_v_ekipi = [''] * len(serija)

    drzava = drzava[2:]

    drzava = list(itertools.chain(*zip(drzava, drzava)))
    
    print(ranki)
    print(startnaStevilka)
    print(fisCode)
    print(drzava)
    print(skoki)
    print(rezultati)
    print(serija)
    print(mesto_v_ekipi)

    print([len(ranki), len(startnaStevilka), len(fisCode), len(drzava), len(skoki), len(rezultati), len(serija), len(mesto_v_ekipi)])

else:

    ranki = [text(r).replace('*', '').strip() for r in
             stran.xpath("//div[@class='g-lg-1 g-md-1 g-sm-1 g-xs-2 justify-right pr-1 gray bold']")]
    startnaStevilka = [text(r).replace('*', '').strip() for r in
                       stran.xpath("//div[@class='g-lg-1 g-md-1 g-sm-1 justify-right hidden-xs pr-1 gray']")]
    fisCode = [text(r).replace('*', '').strip() for r in
               stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 hidden-xs justify-right gray pr-1']")]
    skokiInRezultati = [text(r).replace('*', '').strip() for r in
                        stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right bold hidden-xs']")]
    drzava = [text(r).replace('*', '').strip() for r in stran.xpath("//span[@class='country__name-short']")]

    skoki = skokiInRezultati[0:][::2]
    rezultati = skokiInRezultati[1:][::2]

    serija =['1'] * len(ranki)
    mesto_v_ekipi = [''] * len(serija)

    drzava = drzava[2:]

    print(ranki)
    print(startnaStevilka)
    print(fisCode)
    print(drzava)
    print(skoki)
    print(rezultati)
    print(serija)
    print(mesto_v_ekipi)

    print([len(ranki), len(startnaStevilka), len(fisCode), len(drzava), len(skoki), len(rezultati), len(serija), len(mesto_v_ekipi)])
'''

# za ekipno

link = "https://www.fis-ski.com/DB/general/results.html?sectorcode=JP&raceid=2853"
stran = html.fromstring(requests.get(link).content)

ranki = [text(r).replace('*', '').strip() for r in stran.xpath("//div[@class='g-lg-1 g-md-1 g-sm-1 g-xs-2 justify-right bold pr-1']")]
fisCode = [text(r).replace('*', '').strip() for r in stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-3 hidden-xs justify-right gray pr-1']")]
drzava1 = [text(r).replace('*', '').strip() for r in stran.xpath("//a[@class='table-row table-row_theme_main']")]
skokiInRezultati = [text(r).replace('*', '').strip() for r in stran.xpath("//a[@class='table-row table-row_theme_additional']//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right bold hidden-xs']")]

ranki = list(itertools.chain(*zip(ranki,ranki)))
ranki = list(itertools.chain(*zip(ranki,ranki)))
ranki = list(itertools.chain(*zip(ranki,ranki)))

print(len(skokiInRezultati))

skoki = skokiInRezultati[0:][::2]
rezultati = skokiInRezultati[1:][::2]

fisCodeReal = []

for str in fisCode:
    if len(str) == 4:
        fisCodeReal.append(str)

fisCodeReal = list(itertools.chain(*zip(fisCodeReal,fisCodeReal)))

serija = list(itertools.chain(*zip(['1']*(len(ranki)//2),['2']*(len(ranki)//2))))
mesto_v_ekipi = ['1', '2', '3', '4']*(len(ranki)//8)
mesto_v_ekipi = list(itertools.chain(*zip(mesto_v_ekipi,mesto_v_ekipi)))

#rezultati = list(filter(None, rezultati))
#skoki = list(filter(None, skoki))

startnaStevilka = ['']*len(ranki)

drzava = []
for str in drzava1:
    drzava.append(str.split()[-2])

drzava = list(itertools.chain(*zip(drzava,drzava)))
drzava = list(itertools.chain(*zip(drzava,drzava)))
drzava = list(itertools.chain(*zip(drzava,drzava)))

fisCode = fisCodeReal

print(ranki)
print(startnaStevilka)
print(fisCode)
print(drzava)
print(skoki)
print(rezultati)
print(serija)
print(mesto_v_ekipi)

print([len(ranki), len(startnaStevilka), len(fisCode), len(drzava), len(skoki), len(rezultati), len(serija), len(mesto_v_ekipi)])
'''

#link = "https://www.fis-ski.com/DB/general/results.html?sectorcode=JP&raceid=4862"
#stran = html.fromstring(requests.get(link).content)

#print(len([text(r).replace('*', '').strip() for r in stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right hidden-xs pale']")]))

#link = "https://www.fis-ski.com/DB/general/results.html?sectorcode=JP&raceid=4861"
#stran = html.fromstring(requests.get(link).content)

#print('Team' in [text(r).replace('*', '').strip() for r in stran.xpath("//div[@class='g-lg-2 g-md-2 g-sm-2 justify-right hidden-xs pale']")][0])

# Naslov, od koder pobiramo podatke
#link = "https://www.fis-ski.com/DB/ski-jumping/biographies.html?lastname=&firstname=&sectorcode=JP&gendercode=M&birthyear=&skiclub=&skis=&nationcode=&fiscode=&status=&search=true&limit=1000&offset=5000"
#stran = html.fromstring(requests.get(link).content)

#drzava = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='table__body']")[0]
#                         .xpath("//span[@class='country__name-short']")]


