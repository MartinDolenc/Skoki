#!/usr/bin/env python3

# Uvozimo potrebne knjižnice
from lxml import html
import requests
import csv
import re
import pandas as pd
import sqlalchemy
import sqlite3

def text(tag):
    parts = [tag.text] + [text(t) for t in tag] + [tag.tail]
    if tag.tag == 'br':
        parts.insert(0, ' ')
    return re.sub(r'\s+', ' ', ''.join(filter(None, parts)))

'''
# ekipno
# Naslov, od koder pobiramo podatke
# tekmovalci se razlikujejo samo za "competitorid"

link = "https://www.fis-ski.com/DB/general/results.html?sectorcode=JP&raceid=4861"

stran = html.fromstring(requests.get(link).content)

linkTek = [r.get("href") for r in stran.xpath("//a[@class='table-row table-row_theme_additional']")]


print(linkTek)
print(len(linkTek))
'''
# posamezno
# Naslov, od koder pobiramo podatke
# tekmovalci se razlikujejo samo za "competitorid"
link = "https://www.fis-ski.com/DB/general/results.html?sectorcode=JP&raceid=4879"

stran = html.fromstring(requests.get(link).content)

linkTek = [r.get("href") for r in stran.xpath("//div[@id='events-info-results']//a[@class='table-row']")]

for l in linkTek:
    stran = html.fromstring(requests.get(l).content)

    tabela = [text(r).replace('*', '').strip() for r in stran.xpath("//span[@class='profile-info__value']")]

    imePriimek = [text(r).replace('*', '').strip() for r in stran.xpath("//h1[@class='athlete-profile__name']")][0]

    klub = [text(r).replace('*', '').strip() for r in stran.xpath("//div[@class='athlete-profile__team spacer__section']")][0]

    drzava = [text(r).replace('*', '').strip() for r in stran.xpath("//span[@class='country__name-short']")][0]

    ime = imePriimek.rsplit(' ', 1)[0]
    priimek = imePriimek.rsplit(' ', 1)[1]

    fisCode = tabela[0]
    status = tabela[3]
    rojstvo = tabela[1]
    smucke = tabela[-2]

    print([status, fisCode, ime, priimek, drzava, rojstvo, klub, smucke])


