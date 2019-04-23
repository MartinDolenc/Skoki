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

link = [r.get("href") for r in stran.xpath("//a[@class='table-row table-row_theme_additional']")]


print(link)
print(len(link))
'''


# posamezno
# Naslov, od koder pobiramo podatke
# tekmovalci se razlikujejo samo za "competitorid"
link = "https://www.fis-ski.com/DB/general/results.html?sectorcode=JP&raceid=5045"
stran = html.fromstring(requests.get(link).content)

# Preberemo prvo ustrezno tabelo
#tabela = [[text(c).replace('*', '').strip() for c in r.xpath("(th|td)")]
#          for r in  stran.xpath("//div[@class='table__body']")[0]
#                         .xpath("//div[@class='g-lg g-md g-sm-24 g-xs-24 justify-left']")]

link = [r.get("href") for r in stran.xpath("//div[@id='events-info-results']")[0]
                .xpath("//a[@class='table-row']")]

print(link)
print(len(link))
