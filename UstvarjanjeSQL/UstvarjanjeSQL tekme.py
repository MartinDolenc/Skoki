# Uvozimo potrebne knjižnice
from lxml import html
import requests
import csv
import re
import pandas as pd
import sqlalchemy
import sqlite3

def text(tag):
    #print(tag.text_content())
    parts = [tag.text] + [text(t) for t in tag] + [tag.tail]
    if tag.tag == 'br':
        parts.insert(0, ' ')
    return re.sub(r'\s+', ' ', ''.join(filter(None, parts)))

#   https://www.fis-ski.com/DB/ski-jumping/calendar-results.html?eventselection=&place=&sectorcode=JP&seasoncode=2019&categorycode=&disciplinecode=&gendercode=M&racedate=&racecodex=&nationcode=&seasonmonth=07-2018&saveselection=-1&seasonselection=
#   https://www.fis-ski.com/DB/ski-jumping/calendar-results.html?eventselection=&place=&sectorcode=JP&seasoncode=2016&categorycode=&disciplinecode=&gendercode=M&racedate=&racecodex=&nationcode=&seasonmonth=12-2015&saveselection=-1&seasonselection=
#
#   mesci za neko sezono x grejo od 07-(x-1) do 06-x

# koda za neko sezono:

sezona = 2018

listMesecevPS = ['07-', '08-', '09-', '10-', '11-', '12-']
listMesecevZS = ['01-', '02-', '03-', '04-', '05-', '06-']

'''
for mes in listMesecevPS:
    link = "https://www.fis-ski.com/DB/ski-jumping/calendar-results.html?eventselection=&place=&sectorcode=JP&seasoncode=" + str(sezona) + "&categorycode=&disciplinecode=&gendercode=M&racedate=&racecodex=&nationcode=&seasonmonth=" + mes + str(sezona-1) + "&saveselection=-1&seasonselection="
    stran = html.fromstring(requests.get(link).content)


for mes in listMesecevZS:
    link = "https://www.fis-ski.com/DB/ski-jumping/calendar-results.html?eventselection=&place=&sectorcode=JP&seasoncode=" + str(sezona) + "&categorycode=&disciplinecode=&gendercode=M&racedate=&racecodex=&nationcode=&seasonmonth=" + mes + str(sezona) + "&saveselection=-1&seasonselection="
    stran = html.fromstring(requests.get(link).content)
'''

link = "https://www.fis-ski.com/DB/ski-jumping/calendar-results.html?eventselection=&place=&sectorcode=JP&seasoncode=2016&categorycode=&disciplinecode=&gendercode=M&racedate=&racecodex=&nationcode=&seasonmonth=12-2015&saveselection=-1&seasonselection="
stran = html.fromstring(requests.get(link).content)

kraj1 = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='container pr-xs-0']")[0]
                         .xpath("//span[@class='bold clip-xs']")]

drzava1 = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='container pr-xs-0']")[0]
                         .xpath("//span[@class='country__name-short']")]

datum1 = [text(r).replace('*', '').strip() for r in  stran.xpath("//div[@class='container pr-xs-0']")[0]
                         .xpath("//a[@class='pl-1 pl-sm-0 px-xs-0 g-lg-4 g-md-4 g-sm-3 g-xs-5 justify-left']")]

#eventID = [text(r).replace('*', '').strip() for r in  stran.xpath("//a[@class='pr-1 g-lg-1 g-md-1 g-sm-2 hidden-xs justify-left']")[0].get("href")]

eventLink = []
for x in range(0, len(kraj1)):
    eventLink.append(stran.xpath("//a[@class='pr-1 g-lg-1 g-md-1 g-sm-2 hidden-xs justify-left']")[x].get("href"))

y = 0

kraj = []
drzava = []
datum = []
id = []

for str in eventLink:
    stran = html.fromstring(requests.get(str).content)

    spoli = [text(r).replace('*', '').strip() for r in stran.xpath("//a[@class='g-sm-8 g-xs-9 hidden-md-up']")[0]
            .xpath("//div[@class='g-xs-12 justify-right bold']")]

    links = []

    linksForReal = []
    for i in range(0, len(spoli)):

        if (spoli[i] == 'M'):
            links.append(stran.xpath("//a[@class='g-sm-8 g-xs-9 hidden-md-up']")[i].get("href"))
            neki = [text(r).replace('*', '').strip() for r in stran.xpath("//a[@class='px-md-1 px-lg-1 pl-xs-1 g-lg-2 g-md-3 g-sm-2 g-xs-4 justify-left']")[i]]
            datum += neki

    for l in links:
        linksForReal.append(re.search(r'\d+$', l).group())

    for l in linksForReal:
        kraj.append(kraj1[y])
        drzava.append(drzava1[y])

    y += 1
    id += linksForReal

    #eventID.append([text(r).replace('*', '').strip() for r in stran.xpath("//a[@class='g-lg-2 g-md-2 g-sm-3 g-xs-4 justify-center']")[0].get("href")])


#print(kraj)
#print(drzava)
#print(datum)
#print(id)

#print(len(kraj))
#print(len(drzava))
#print(len(datum))
#print(len(id))


raw_data = {'ID' : id, 'KRAJ' : kraj, 'DATUM' : datum, 'DRZAVA' : drzava}

df = pd.DataFrame(raw_data, columns = ['ID', 'KRAJ', 'DATUM', 'DRZAVA'])

df.to_sql('TEKME', sqlite3.Connection('Skoki.db'))
