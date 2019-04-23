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

# Naslov, od koder pobiramo podatke
# tekmovalci se razlikujejo samo za "competitorid"
link = "https://www.fis-ski.com/DB/general/athlete-biography.html?sectorcode=jp&competitorid=118113&type=result"
stran = html.fromstring(requests.get(link).content)

# Preberemo prvo ustrezno tabelo
#tabela = [[text(c).replace('*', '').strip() for c in r.xpath("(th|td)")]
#          for r in  stran.xpath("//div[@class='table__body']")[0]
#                         .xpath("//div[@class='g-lg g-md g-sm-24 g-xs-24 justify-left']")]

tabela = [text(r).replace('*', '').strip() for r in  stran.xpath("//span[@class='profile-info__value']")]

imePriimek = [text(r).replace('*', '').strip() for r in  stran.xpath("//h1[@class='athlete-profile__name']")][0]

klub = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='athlete-profile__team spacer__section']")][0]

drzava = [text(r).replace('*', '').strip() for r in  stran.xpath("//span[@class='country__name-short']")][0]

ime = imePriimek.rsplit(' ', 1)[0]
priimek = imePriimek.rsplit(' ', 1)[1]

fisCode = tabela[0]
status = tabela[3]
rojstvo = tabela[1]
smucke = tabela[-2]

print([status, fisCode, ime, priimek, drzava, rojstvo, klub, smucke])


