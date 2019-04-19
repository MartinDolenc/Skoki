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
link = "https://www.fis-ski.com/DB/ski-jumping/biographies.html?lastname=&firstname=&sectorcode=JP&gendercode=M&birthyear=&skiclub=&skis=&nationcode=&fiscode=&status=&search=true&limit=1000&offset=5000"
stran = html.fromstring(requests.get(link).content)

# Preberemo prvo ustrezno tabelo
#tabela = [[text(c).replace('*', '').strip() for c in r.xpath("(th|td)")]
#          for r in  stran.xpath("//div[@class='table__body']")[0]
#                         .xpath("//div[@class='g-lg g-md g-sm-24 g-xs-24 justify-left']")]

drzava = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='table__body']")[0]
                         .xpath("//span[@class='country__name-short']")]

#print(drzava)

#print(status)
#print(fisCodes)
#print(imePriimek)
#print(drzava)
#print(rojstvo)
#print(klub)
#print(smucke)
#print(ime)
#print(priimek)

drzava = list(dict.fromkeys(drzava))

raw_data = {'DRZAVA': drzava}

df = pd.DataFrame(raw_data, columns = ['DRZAVA'])

df.to_sql('DRZAVA', sqlite3.Connection('Skoki.db'))
