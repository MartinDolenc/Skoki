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

tabela = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='table__body']")[0]
                         .xpath("//div[@class='g-lg g-md g-sm-24 g-xs-24 justify-left']")]

imePriimek = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='table__body']")[0]
                         .xpath("//div[@class='g-lg g-md g-sm g-xs justify-left flex-sm-wrap flex-xs-wrap']")]

drzava = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='table__body']")[0]
                         .xpath("//span[@class='country__name-short']")]

rojstvo = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='table__body']")[0]
                         .xpath("//div[@class='g-lg-2 g-md-2 g-sm-3 g-xs-6 justify-right pr-lg-1 pr-md-1 pr-sm-1']")]


klub = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='table__body']")[0]
                         .xpath("//div[@class='clip-sm']")]


smucke = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='table__body']")[0]
                         .xpath("//div[@class='g-lg-3 g-md-3 g-sm-2 hidden-sm-down justify-left']")]

status = tabela[0:][::2]
status.pop(0)
fisCodes = tabela[1:][::2]
fisCodes.pop(0)

imePriimek = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='table__body']")[0]
                         .xpath("//div[@class='g-lg g-md g-sm g-xs justify-left flex-sm-wrap flex-xs-wrap']")]

ip = []
ime = []
priimek = []
for str in imePriimek:
    ip.append(str.rsplit(' ', 1))
    #ime.append(str.rsplit(' ', 1)[0])
    #priimek.append(str.rsplit(' ', 1)[1])


for l in ip:
    if len(l) > 1:
        ime.append(l[1])
        priimek.append(l[0])
    else:
        ime.append(l[0])
        priimek.append(l[0])

#print(status)
#print(fisCodes)
#print(imePriimek)
#print(drzava)
#print(rojstvo)
#print(klub)
#print(smucke)
#print(ime)
#print(priimek)

raw_data = {'FIS CODE': fisCodes, 'IME' : ime, 'PRIIMEK' : priimek, 'ROJSTVO' : rojstvo, 'KLUB' : klub, 'SMUCKE' : smucke, 'STATUS': status}

df = pd.DataFrame(raw_data, columns = ['FIS CODE', 'IME', 'PRIIMEK', 'ROJSTVO', 'KLUB', 'SMUCKE', 'STATUS'])

#engine = sqlalchemy.create_engine('mysql+pymysql://root:@localhost:3306/application')

df.to_sql('TEKMOVALEC', sqlite3.Connection('Skoki.db'))

#df.to_csv('tekmovalci.csv')

# Zapišemo v datoteko CSV
#with open("tekmovalci.csv", 'w') as f:
#    w = csv.writer(f)

#    w.writerows(fisCodes)

#f.close()

# Nadomestimo decimalne vejice in ločila tisočic ter pretvorimo v števila
#for r in tabela[1:]:
#    r[1] = float(r[1].replace(",", "."))
#    r[2] = int(r[2].replace(".", ""))