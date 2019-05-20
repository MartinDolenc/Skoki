-- Table: tekmovalec
DROP TABLE IF EXISTS tekmovalec;

CREATE TABLE tekmovalec (
    fis_code INTEGER PRIMARY KEY,
    status   TEXT    NOT NULL,
    ime      TEXT    NOT NULL,
    priimek  TEXT    NOT NULL,
    drzava   TEXT    REFERENCES drzava (kratica) 
                     NOT NULL,
    rojstvo  TEXT,
    klub     TEXT,
    smucke   TEXT
);

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1900,
                           'Not active',
                           'Yang',
                           'LI',
                           'CHN',
                           '1980',
                           'Jilin',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1901,
                           'Active',
                           'Zhandong',
                           'TIAN',
                           'CHN',
                           '13-04-1983',
                           'Jilin',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1905,
                           'Active',
                           'Alexey',
                           'KOROLEV',
                           'KAZ',
                           '20-06-1987',
                           'Dynamo',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1906,
                           'Not active',
                           'Nikolay',
                           'KARPENKO',
                           'KAZ',
                           '1981',
                           'Dinamo',
                           'Rossignol, Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1922,
                           'Not active',
                           'Marco',
                           'GRIGOLI',
                           'SUI',
                           '1991',
                           'Alpina St. Moritz',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1931,
                           'Not active',
                           'Matthew',
                           'ROWLEY',
                           'CAN',
                           '1993',
                           'Altius Nordic Ski Club',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1945,
                           'Not active',
                           'David',
                           'UNTERBERGER',
                           'AUT',
                           '1988',
                           'SV Villach',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1946,
                           'Not active',
                           'Petar',
                           'FARTUNOV',
                           'BUL',
                           '1989',
                           'Cska',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1950,
                           'Not active',
                           'Alessio DE',
                           'CRIGNIS',
                           'ITA',
                           '1990',
                           'S.S. Ravascletto',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1951,
                           'Not active',
                           'Illimar',
                           'PAERN',
                           'EST',
                           '1988',
                           'Skiclub Elva',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1967,
                           'Not active',
                           'Tomas',
                           'ZMORAY',
                           'SVK',
                           '1989',
                           'VSC Dukla B.Bystrica',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1972,
                           'Not active',
                           'Stefan',
                           'THURNBICHLER',
                           'AUT',
                           '1984',
                           'Kitzbueheler Ski Club - KSC',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1984,
                           'Not active',
                           'Jakub',
                           'JANDA',
                           'CZE',
                           '1978',
                           'Dukla Liberec',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1990,
                           'Not active',
                           'Jussi',
                           'HAUTAMAEKI',
                           'FIN',
                           '1979',
                           'Puijon Hiihtoseura',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1991,
                           'Not active Not allowed',
                           'Matti',
                           'HAUTAMAEKI',
                           'FIN',
                           '1981',
                           'Puijon Hiihtoseura',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1995,
                           'Not active',
                           'Janne',
                           'AHONEN',
                           'FIN',
                           '1977',
                           'Lahden Hiihtoseura',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1996,
                           'Not active',
                           'Tami',
                           'KIURU',
                           'FIN',
                           '1976',
                           'Lahden Hiihtoseura',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           1998,
                           'Not active',
                           'Martin',
                           'SCHMITT',
                           'GER',
                           '1978',
                           'SC Furtwangen',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2009,
                           'Not active',
                           'Georg',
                           'SPAETH',
                           'GER',
                           '1981',
                           'SC Oberstdorf',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2010,
                           'Not active Not allowed',
                           'Michael',
                           'UHRMANN',
                           'GER',
                           '1978',
                           'WSV DJK Rastbuechl',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2016,
                           'Not active',
                           'Takanobu',
                           'OKABE',
                           'JPN',
                           '1970',
                           'Megmilk Snow Brand Ski Team',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2018,
                           'Not active',
                           'Kazuya',
                           'YOSHIOKA',
                           'JPN',
                           '1978',
                           'Tsuchiya Home Ski Team',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2021,
                           'Active',
                           'Kazuyoshi',
                           'FUNAKI',
                           'JPN',
                           '27-04-1975',
                           'Fit Ski',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2022,
                           'Active',
                           'Noriaki',
                           'KASAI',
                           'JPN',
                           '06-06-1972',
                           'Tsuchiya Home Ski Team',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2024,
                           'Not active',
                           'Hyunki',
                           'KIM',
                           'KOR',
                           '1983',
                           'High1 Resort',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2025,
                           'Active',
                           'Heung Chul',
                           'CHOI',
                           'KOR',
                           '03-12-1981',
                           'High1 Resort',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2026,
                           'Active',
                           'Seou',
                           'CHOI',
                           'KOR',
                           '03-12-1982',
                           'High1 Resort',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2033,
                           'Not active Not allowed',
                           'Roar',
                           'LJOEKELSOEY',
                           'NOR',
                           '1976',
                           'Orkdal IL / Troenderhopp',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2036,
                           'Not active',
                           'Marcin',
                           'BACHLEDA',
                           'POL',
                           '1982',
                           'TS Wisla Zakopane',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2039,
                           'Not active Not allowed',
                           'Adam',
                           'MALYSZ',
                           'POL',
                           '1977',
                           'KS Wisla, Ustronianka',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2045,
                           'Not active',
                           'Primoz',
                           'PETERKA',
                           'SLO',
                           '1979',
                           'SK Triglav Kranj',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2061,
                           'Not active',
                           'Antoine',
                           'GUIGNARD',
                           'SUI',
                           '1984',
                           'Le Brassus',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2062,
                           'Not active',
                           'Andreas',
                           'KUETTEL',
                           'SUI',
                           '1979',
                           'SC Einsiedeln',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2067,
                           'Active',
                           'Simon',
                           'AMMANN',
                           'SUI',
                           '25-06-1981',
                           'SSC Toggenburg',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2088,
                           'Not active',
                           'Wolfgang',
                           'LOITZL',
                           'AUT',
                           '1980',
                           'WSC Bad Mitterndorf-Steiermark',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2119,
                           'Not active',
                           'Akira',
                           'HIGASHI',
                           'JPN',
                           '1972',
                           'Nippon Kucho Service Ski Team',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2129,
                           'Not active',
                           'Pascal',
                           'BODMER',
                           'GER',
                           '1991',
                           'SV Messstetten',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2130,
                           'Not active',
                           'Keita',
                           'UMEZAKI',
                           'JPN',
                           '1981',
                           'Megmilk Snow Brand Ski Team',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2136,
                           'Not active',
                           'Tobias',
                           'BOGNER',
                           'GER',
                           '1990',
                           'SK Berchtesgaden',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2171,
                           'Active',
                           'Pius',
                           'PASCHKE',
                           'GER',
                           '20-05-1990',
                           'WSV Kiefersfelden',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2177,
                           'Not active',
                           'Danny',
                           'QUECK',
                           'GER',
                           '1989',
                           'WSV 08 Lauscha',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2178,
                           'Not active',
                           'Felix',
                           'SCHOFT',
                           'GER',
                           '1990',
                           'SC Partenkirchen',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2186,
                           'Not active',
                           'Matic',
                           'KRAMARSIC',
                           'SLO',
                           '1990',
                           'SSK Ilirija',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2530,
                           'Active',
                           'Shohei',
                           'TOCHIMOTO',
                           'JPN',
                           '21-12-1989',
                           'Megmilk Snow Brand Ski Team',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2546,
                           'Male',
                           'Pavel',
                           'KARELIN',
                           'RUS',
                           '',
                           'Nizhniy Novgorod',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2565,
                           'Active',
                           'Alexey',
                           'BUYVOLOV',
                           'RUS',
                           '31-12-1987',
                           'Sdushor CSP N. Novgorod',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2708,
                           'Active',
                           'Davide',
                           'BRESADOLA',
                           'ITA',
                           '10-09-1988',
                           'CS ESERCITO',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2778,
                           'Not active',
                           'Jason LAMY',
                           'CHAPPUIS',
                           'FRA',
                           '1986',
                           'Bois d Amont',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2805,
                           'Active',
                           'Michael',
                           'GLASDER',
                           'USA',
                           '27-03-1989',
                           'Norge Ski Club',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2813,
                           'Active',
                           'Dmitriy',
                           'VASSILIEV',
                           'RUS',
                           '26-12-1979',
                           'GBU TSOVS Moskovskaya obl MBU SSHOR',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2815,
                           'Active',
                           'Martin',
                           'KOCH',
                           'AUT',
                           '22-01-1982',
                           'SV Villach-Kaernten',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2819,
                           'Not active',
                           'Emmanuel',
                           'CHEDAL',
                           'FRA',
                           '1983',
                           'SC Courchevel',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2852,
                           'Not active',
                           'Yuta',
                           'WATASE',
                           'JPN',
                           '1982',
                           'Megmilk Snow Brand Ski Team',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2874,
                           'Not active',
                           'Anton',
                           'KALINITSCHENKO',
                           'RUS',
                           '1982',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2903,
                           'Not active',
                           'Veli-Matti',
                           'LINDSTROEM',
                           'FIN',
                           '1983',
                           'Lahden Hiihtoseura',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2915,
                           'Not active',
                           'Kimmo',
                           'YLIRIESTO',
                           'FIN',
                           '1983',
                           'Kouvolan Hiihtoseura',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2916,
                           'Not active',
                           'Juha-Matti',
                           'RUUSKANEN',
                           'FIN',
                           '1984',
                           'Puijon Hiihtoseura',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2917,
                           'Not active',
                           'Bjoern Einar',
                           'ROMOEREN',
                           'NOR',
                           '1981',
                           'Oevrevoll Hosle IL',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2918,
                           'Active',
                           'Robert',
                           'KRANJEC',
                           'SLO',
                           '16-07-1981',
                           'SK Triglav Kranj',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2919,
                           'Not active',
                           'Hiroki',
                           'YAMADA',
                           'JPN',
                           '1982',
                           'Nagano City Ski Club',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2927,
                           'Not active',
                           'Michael',
                           'NEUMAYER',
                           'GER',
                           '1979',
                           'SC 1906 Oberstdorf',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2928,
                           'Active',
                           'Manuel',
                           'FETTNER',
                           'AUT',
                           '17-06-1985',
                           'SV Innsbruck-Bergisel-Tirol',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2931,
                           'Not active',
                           'Maximilian',
                           'MECHLER',
                           'GER',
                           '1984',
                           'WSV Isny',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2933,
                           'Not active',
                           'Yukio',
                           'SAKANO',
                           'JPN',
                           '1976',
                           'Snow Brand Ski Team',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2934,
                           'Not active',
                           'Anders',
                           'BARDAL',
                           'NOR',
                           '1982',
                           'Steinkjer Skiklubb',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2939,
                           'Not active',
                           'Thomas',
                           'LOBBEN',
                           'NOR',
                           '1983',
                           'IL Moingen',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2947,
                           'Not active',
                           'Jan',
                           'MATURA',
                           'CZE',
                           '1980',
                           'Dukla Liberec',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2965,
                           'Not active',
                           'Balthasar',
                           'SCHNEIDER',
                           'AUT',
                           '1984',
                           'SC Egg',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2970,
                           'Not active',
                           'Kalle',
                           'KEITURI',
                           'FIN',
                           '1984',
                           'Kouvolan Hiihtoseura',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2976,
                           'Not active',
                           'Tomasz',
                           'POCHWALA',
                           'POL',
                           '1983',
                           'TS Wisla Zakopane',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2987,
                           'Active',
                           'Vincent DESCOMBES',
                           'SEVOIE',
                           'FRA',
                           '09-01-1984',
                           'Douanes - Chamonix',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           2999,
                           'Not active',
                           'Borek',
                           'SEDLAK',
                           'CZE',
                           '1981',
                           'Dukla Liberec',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           3006,
                           'Not active',
                           'Chil-ku',
                           'KANG',
                           'KOR',
                           '1984',
                           'High1 Resort',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           3012,
                           'Not active',
                           'Janne',
                           'HAPPONEN',
                           'FIN',
                           '1984',
                           'Puijon Hiihtoseura',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           3023,
                           'Not active',
                           'Primoz',
                           'PIKL',
                           'SLO',
                           '1982',
                           'SSK Ljubno BTC',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           3037,
                           'Not active',
                           'Taro',
                           'TAKAYANAGI',
                           'JPN',
                           '1982',
                           'Nippon Kucho Service Ski Team',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           3071,
                           'Not active',
                           'Sigurd',
                           'PETTERSEN',
                           'NOR',
                           '1980',
                           'Rollag Veggli',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           3090,
                           'Active',
                           'Lukas',
                           'HLAVA',
                           'CZE',
                           '10-09-1984',
                           'TJ Dukla Liberec',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           3104,
                           'Not active',
                           'Jure',
                           'SINKOVEC',
                           'SLO',
                           '1985',
                           'SSK SAM Ihan',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           3787,
                           'Not active',
                           'Radik',
                           'ZHAPAROV',
                           'KAZ',
                           '1984',
                           'Shvsm Dinamo',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           3988,
                           'Not active',
                           'Tomislaw',
                           'TAJNER',
                           'POL',
                           '1983',
                           'KS Wisla Ustronianka',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4009,
                           'Not active',
                           'Jure',
                           'BOGATAJ',
                           'SLO',
                           '1985',
                           'SK Triglav Kranj',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4012,
                           'Not active',
                           'Bastian',
                           'KALTENBOECK',
                           'AUT',
                           '1983',
                           'SC Bischofshofen',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4015,
                           'Not active',
                           'Stephan',
                           'HOCKE',
                           'GER',
                           '1983',
                           'WSV Schmiedefeld',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4024,
                           'Not active',
                           'Shusaku',
                           'HOSOYAMA',
                           'JPN',
                           '1984',
                           'Megmilk Snow Brand Ski Team',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4025,
                           'Active',
                           'Jernej',
                           'DAMJAN',
                           'SLO',
                           '28-05-1983',
                           'SSK Sam Ihan',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4041,
                           'Not active',
                           'David',
                           'LAZZARONI',
                           'FRA',
                           '1985',
                           'US. Autrans',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4141,
                           'Active',
                           'Andreas',
                           'KOFLER',
                           'AUT',
                           '17-05-1984',
                           'SV Innsbruck-Bergisel-Tirol',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4143,
                           'Not active Not allowed',
                           'Thomas',
                           'MORGENSTERN',
                           'AUT',
                           '1986',
                           'SV Villach-Kaernten',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4144,
                           'Not active',
                           'Roland',
                           'MUELLER',
                           'AUT',
                           '1986',
                           'SV Innsbruck-Bergisel',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4173,
                           'Not active',
                           'Andreas',
                           'AREN',
                           'SWE',
                           '1985',
                           'Holmens IF',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4174,
                           'Active',
                           'Johan',
                           'ERIKSON',
                           'SWE',
                           '20-01-1985',
                           'Holmens IF',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4176,
                           'Active',
                           'Isak',
                           'GRIMHOLM',
                           'SWE',
                           '25-03-1985',
                           'IF Friska Viljor',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4186,
                           'Active',
                           'Sebastian',
                           'COLLOREDO',
                           'ITA',
                           '09-09-1987',
                           'GS FIAMMEGIALLE',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4197,
                           'Active',
                           'Severin',
                           'FREUND',
                           'GER',
                           '11-05-1988',
                           'WSV DJK Rastbuechl',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4215,
                           'Not active',
                           'Julian',
                           'MUSIOL',
                           'GER',
                           '1986',
                           'SCM Zella-Mehlis',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4226,
                           'Active',
                           'Andreas',
                           'WANK',
                           'GER',
                           '18-02-1988',
                           'SC Hinterzarten',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4236,
                           'Not active',
                           'Ondrej',
                           'VACULIK',
                           'CZE',
                           '1986',
                           'Dukla Liberec',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4259,
                           'Active',
                           'Daiki',
                           'ITO',
                           'JPN',
                           '27-12-1985',
                           'Megmilk Snow Brand Ski Team',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4269,
                           'Not active',
                           'Shota',
                           'TANAKA',
                           'JPN',
                           '1986',
                           'Kamori Kanko and Ihara',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4299,
                           'Not active',
                           'Shuji',
                           'ENDO',
                           'JPN',
                           '1986',
                           'Seikosya Ski Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4302,
                           'Not active',
                           'Yoshihiko',
                           'OSANAI',
                           'JPN',
                           '1985',
                           'Tokyo Biso Group Ski Team',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4321,
                           'Active',
                           'Kamil',
                           'STOCH',
                           'POL',
                           '25-05-1987',
                           'KS Eve-nement Zakopane',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4322,
                           'Active',
                           'Stefan',
                           'HULA',
                           'POL',
                           '29-09-1986',
                           'KS Eve-nement Zakopane',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4325,
                           'Active',
                           'Piotr',
                           'ZYLA',
                           'POL',
                           '16-01-1987',
                           'WSS Wisla',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4333,
                           'Active',
                           'Rok',
                           'URBANC',
                           'SLO',
                           '28-02-1985',
                           'SK Triglav Kranj',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4336,
                           'Not active',
                           'Volodymyr',
                           'BOSHCHUK',
                           'UKR',
                           '1982',
                           'Verkhovina Ski School',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4367,
                           'Active',
                           'Taku',
                           'TAKEUCHI',
                           'JPN',
                           '20-05-1987',
                           'Kitano Construction Corp. Ski Club',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4379,
                           'Not active',
                           'Fumihisa',
                           'YUMOTO',
                           'JPN',
                           '1984',
                           'Tokyo Biso Group Ski Team',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4503,
                           'Not active',
                           'Daito',
                           'TAKAHASHI',
                           'JPN',
                           '1980',
                           'Tsuchiya Home Ski Team',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4547,
                           'Not active',
                           'Arttu',
                           'LAPPI',
                           'FIN',
                           '1984',
                           'Puijon Hiihtoseura',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4561,
                           'Not active',
                           'Stefan',
                           'READ',
                           'CAN',
                           '1987',
                           'Altius Nordic Ski Club',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4580,
                           'Not active',
                           'Harri',
                           'OLLI',
                           'FIN',
                           '1985',
                           'Ounasvaara Ski Club',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4588,
                           'Not active',
                           'Francois',
                           'BRAUD',
                           'FRA',
                           '1986',
                           'CNSD EMHM - Chamonix',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4593,
                           'Not active',
                           'Antonin',
                           'HAJEK',
                           'CZE',
                           '1987',
                           'Dukla Liberec',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4596,
                           'Not active',
                           'Yoann',
                           'MOREL',
                           'FRA',
                           '1984',
                           'Autrans',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4597,
                           'Not active',
                           'Assan',
                           'TAKHTAKHUNOV',
                           'KAZ',
                           '1986',
                           'Almaty',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4599,
                           'Active',
                           'Marat',
                           'ZHAPAROV',
                           'KAZ',
                           '25-08-1985',
                           'Ski Club VKO',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4613,
                           'Not active',
                           'Dimitry',
                           'IPATOV',
                           'RUS',
                           '1984',
                           'Osvsm Magadan',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4625,
                           'Not active',
                           'Blake',
                           'HUGHES',
                           'USA',
                           '1986',
                           'Park City Ski and Snowboard',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4626,
                           'Not active',
                           'Anders',
                           'JOHNSON',
                           'USA',
                           '1989',
                           'Park City Ski and Snowboard',
                           'Rossignol'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4643,
                           'Not active',
                           'Martin',
                           'CIKL',
                           'CZE',
                           '1987',
                           'Dukla Liberec',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4646,
                           'Active',
                           'Jurij',
                           'TEPES',
                           'SLO',
                           '14-02-1989',
                           'SD Dolomiti',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4664,
                           'Not active',
                           'Ilja',
                           'ROSLIAKOV',
                           'RUS',
                           '1983',
                           'Murmansk',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4678,
                           'Active',
                           'Mackenzie',
                           'BOYD-CLOWES',
                           'CAN',
                           '13-07-1991',
                           'Altius Nordic Ski Club',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4682,
                           'Active',
                           'Trevor',
                           'MORRICE',
                           'CAN',
                           '23-09-1991',
                           'Altius Nordic Ski Club',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4692,
                           'Not active',
                           'Remi',
                           'FRANCAIS',
                           'SUI',
                           '1989',
                           'SC Les Diablerets',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4698,
                           'Not active',
                           'Nicolas',
                           'FETTNER',
                           'AUT',
                           '1987',
                           'SV Innsbruck-Bergisel',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4706,
                           'Not active',
                           'Daniel',
                           'LACKNER',
                           'AUT',
                           '1987',
                           'UVB Hinzenbach',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4714,
                           'Not active',
                           'Andreas',
                           'STROLZ',
                           'AUT',
                           '1988',
                           'SC Arlberg',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4720,
                           'Not active',
                           'Roberto',
                           'DELLASEGA',
                           'ITA',
                           '1990',
                           'GS FIAMMEGIALLE',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4724,
                           'Not active',
                           'Andrea',
                           'MORASSI',
                           'ITA',
                           '1988',
                           'CS CARABINIERI',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4728,
                           'Not active',
                           'Alessandro',
                           'PITTIN',
                           'ITA',
                           '1990',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4734,
                           'Not active',
                           'Rafal',
                           'SLIZ',
                           'POL',
                           '1983',
                           'KS WISLA USTRONIANKA',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4737,
                           'Not active',
                           'Anze',
                           'DAMJAN',
                           'SLO',
                           '1987',
                           'SSK Ilirija',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4748,
                           'Not active',
                           'Ivan',
                           'KARAULOV',
                           'KAZ',
                           '1980',
                           'Almaty',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4755,
                           'Not active',
                           'Eric',
                           'CAMEROTA',
                           'USA',
                           '1900',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4760,
                           'Not active',
                           'Bryan',
                           'FLETCHER',
                           'USA',
                           '1986',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4764,
                           'Not active',
                           'Nicholas',
                           'FAIRALL',
                           'USA',
                           '1989',
                           'Andover Outing Club',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4782,
                           'Not active',
                           'Erik',
                           'SIMON',
                           'GER',
                           '1987',
                           'SG Nickelhuette Aue',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4801,
                           'Active',
                           'Roman',
                           'KOUDELKA',
                           'CZE',
                           '09-07-1989',
                           'LSK Lomnice nad Popelkou - Dukla',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4880,
                           'Active',
                           'Denis',
                           'KORNILOV',
                           'RUS',
                           '17-08-1986',
                           'Sdushor CSP N. Novgorod Dinamo',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4882,
                           'Not active',
                           'Jon',
                           'AARAAS',
                           'NOR',
                           '1986',
                           'Ready/Kollenhopp',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4889,
                           'Not active Not allowed',
                           'Anders',
                           'JACOBSEN',
                           'NOR',
                           '1985',
                           'Ringkollen Skiklubb',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4909,
                           'Not active',
                           'Olli',
                           'PEKKALA',
                           'FIN',
                           '1987',
                           'Lahden Hiihtoseura',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4920,
                           'Not active',
                           'Oleksandr',
                           'LAZAROVYCH',
                           'UKR',
                           '1984',
                           'Vorokhta Ski School',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4922,
                           'Not active',
                           'Vitaliy',
                           'SHUMBARETS',
                           'UKR',
                           '1983',
                           'SKA Tysovets',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4939,
                           'Active',
                           'Mitja',
                           'MEZNAR',
                           'SLO',
                           '30-06-1988',
                           'NSK TRZIC FMG',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4957,
                           'Not active',
                           'Vegard',
                           'SWENSEN',
                           'NOR',
                           '1986',
                           'Asker Skiklubb',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4963,
                           'Active',
                           'Kenshiro',
                           'ITO',
                           'JPN',
                           '08-01-1990',
                           'Megmilk Snow Brand Ski Team',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           4972,
                           'Active',
                           'Miran',
                           'ZUPANCIC',
                           'SLO',
                           '11-11-1989',
                           'SK Zagorje',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5016,
                           'Not active',
                           'Bill',
                           'DEMONG',
                           'USA',
                           '1980',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5019,
                           'Not active',
                           'Chris',
                           'LAMB',
                           'USA',
                           '1989',
                           'Procter Academy',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5026,
                           'Active',
                           'Tomaz',
                           'NAGLIC',
                           'SLO',
                           '18-07-1989',
                           'SSK Alpina Ziri',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5037,
                           'Not active',
                           'Stefan',
                           'HAYBOECK',
                           'AUT',
                           '1989',
                           'UVB Hinzenbach',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5038,
                           'Not active',
                           'Mario',
                           'INNAUER',
                           'AUT',
                           '1990',
                           'SV Innsbruck-Bergisel',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5039,
                           'Active',
                           'Manuel',
                           'POPPINGER',
                           'AUT',
                           '19-05-1989',
                           'SV Innsbruck-Bergisel-Tirol',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5040,
                           'Active',
                           'Gregor',
                           'SCHLIERENZAUER',
                           'AUT',
                           '07-01-1990',
                           'SV Innsbruck-Bergisel-Tirol',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5046,
                           'Not active',
                           'Matej',
                           'DOBOVSEK',
                           'SLO',
                           '1990',
                           'SK Triglav Kranj',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5053,
                           'Not active',
                           'Robert',
                           'HRGOTA',
                           'SLO',
                           '1988',
                           'SSK Velenje',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5062,
                           'Not active',
                           'Jiri',
                           'MAZOCH',
                           'CZE',
                           '1990',
                           'Dukla Liberec',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5063,
                           'Active',
                           'Cestmir',
                           'KOZISEK',
                           'CZE',
                           '09-11-1991',
                           'LSK Lomnice nad Popelkou-DUKLA',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5064,
                           'Not active',
                           'Tom',
                           'HILDE',
                           'NOR',
                           '1987',
                           'Asker Skiklubb',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5067,
                           'Not active',
                           'Atle Pedersen',
                           'ROENSEN',
                           'NOR',
                           '1988',
                           'Eidsvoll IF',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5068,
                           'Not active',
                           'Kim Rene ELVERUM',
                           'SORSELL',
                           'NOR',
                           '1988',
                           'Ullensaker Skiklubb',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5099,
                           'Not active',
                           'John',
                           'LYONS',
                           'USA',
                           '1988',
                           'Saint Paul SKI Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5109,
                           'Active',
                           'Andraz',
                           'POGRAJC',
                           'SLO',
                           '26-09-1991',
                           'SK Zagorje',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5114,
                           'Not active',
                           'Alexey',
                           'PCHELINTSEV',
                           'KAZ',
                           '1991',
                           'Almaty',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5115,
                           'Active',
                           'Carl',
                           'NORDIN',
                           'SWE',
                           '23-12-1989',
                           'IF Friska Viljor',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5119,
                           'Not active',
                           'Anssi',
                           'KOIVURANTA',
                           'FIN',
                           '1988',
                           'Kuusamon Er�-Veikot',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5123,
                           'Not active',
                           'Fredrik',
                           'BALKAASEN',
                           'SWE',
                           '1989',
                           'Holmens IF',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5124,
                           'Not active',
                           'Alexander',
                           'MITZ',
                           'SWE',
                           '1990',
                           'Holmens IF',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5130,
                           'Not active',
                           'Rok',
                           'MANDL',
                           'SLO',
                           '1988',
                           'SSK Costella Ilirija',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5141,
                           'Not active',
                           'Lukasz',
                           'RUTKOWSKI',
                           'POL',
                           '1988',
                           'KS Rutkow-Ski',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5142,
                           'Active',
                           'Dawid',
                           'KUBACKI',
                           'POL',
                           '12-03-1990',
                           'TS Wisla Zakopane',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5168,
                           'Active',
                           'Vladimir',
                           'ZOGRAFSKI',
                           'BUL',
                           '14-07-1993',
                           'NSA',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5174,
                           'Active',
                           'Andreas',
                           'STJERNEN',
                           'NOR',
                           '30-07-1988',
                           'Sprova IL',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5176,
                           'Not active',
                           'Toenis',
                           'KARTAU',
                           'EST',
                           '1990',
                           'Skiclub Elva',
                           'Elan'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5177,
                           'Not active',
                           'Mats',
                           'PIHO',
                           'EST',
                           '1990',
                           'Sportclub Taevataeht',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5181,
                           'Active',
                           'Kenneth',
                           'GANGNES',
                           'NOR',
                           '15-05-1989',
                           'Kolbukameratene IL',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5185,
                           'Not active',
                           'Olli',
                           'MUOTKA',
                           'FIN',
                           '1988',
                           'Lahti Ski Club',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5186,
                           'Not active',
                           'Markus',
                           'EGGENHOFER',
                           'AUT',
                           '1987',
                           'SC Bischofshofen',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5188,
                           'Not active',
                           'Nicolas',
                           'MAYER',
                           'FRA',
                           '1990',
                           'Courchevel',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5193,
                           'Not active',
                           'Ole Marius',
                           'INGVALDSEN',
                           'NOR',
                           '1985',
                           'Steinkjer Skiklubb',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5219,
                           'Not active',
                           'Nicholas',
                           'ALEXANDER',
                           'USA',
                           '1988',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5234,
                           'Not active',
                           'Adrian',
                           'SCHULER',
                           'SUI',
                           '1992',
                           'Einsiedeln',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5235,
                           'Not active',
                           'Siim-Tanel',
                           'SAMMELSELG',
                           'EST',
                           '1993',
                           'Nomme Sportclub, Lahden Hiihtoseur',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5237,
                           'Active',
                           'Yumu',
                           'HARADA',
                           'JPN',
                           '15-09-1990',
                           'Megmilk Snow Brand Ski Team',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5242,
                           'Active',
                           'Tomofumi',
                           'NAITO',
                           'JPN',
                           '22-02-1993',
                           'Ski Association of Koga City',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5253,
                           'Active',
                           'Markus',
                           'EISENBICHLER',
                           'GER',
                           '03-04-1991',
                           'TSV Siegsdorf',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5262,
                           'Active',
                           'Stephan',
                           'LEYHE',
                           'GER',
                           '05-01-1992',
                           'SC Willingen',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5263,
                           'Not active',
                           'Jan',
                           'MAYLAENDER',
                           'GER',
                           '1992',
                           'SC Degenfeld',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5273,
                           'Not active',
                           'Daniel',
                           'WENIG',
                           'GER',
                           '1991',
                           'SK Berchtesgaden',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5284,
                           'Active',
                           'Matjaz',
                           'PUNGERTAR',
                           'SLO',
                           '14-08-1990',
                           'SSK Menges',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5288,
                           'Active',
                           'Michael',
                           'HAYBOECK',
                           'AUT',
                           '05-03-1991',
                           'UVB Hinzenbach-Oberoesterreich',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5293,
                           'Active',
                           'Fredrik',
                           'BJERKEENGEN',
                           'NOR',
                           '11-11-1988',
                           'Kolbukameratene IL',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5297,
                           'Not active',
                           'Jakub',
                           'KOT',
                           'POL',
                           '1990',
                           'AZS Zakopane',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5298,
                           'Active',
                           'Maciej',
                           'KOT',
                           'POL',
                           '09-06-1991',
                           'AZS Zakopane',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5301,
                           'Not active',
                           'Grzegorz',
                           'MIETUS',
                           'POL',
                           '1993',
                           'AZS ZAKOPANE',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5302,
                           'Not active',
                           'Krzysztof',
                           'MIETUS',
                           'POL',
                           '1991',
                           'AZS Zakopane',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5311,
                           'Not active',
                           'Saso',
                           'TADIC',
                           'SLO',
                           '1988',
                           'SSK Ljubno BTC',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5320,
                           'Not active',
                           'Alexandre',
                           'MABBOUX',
                           'FRA',
                           '1991',
                           'Le Grand Bornand',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5324,
                           'Not active',
                           'Diego',
                           'DELLASEGA',
                           'ITA',
                           '1990',
                           'G.S. FIAMME ORO MOENA',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5326,
                           'Active',
                           'Klemens',
                           'MURANKA',
                           'POL',
                           '31-08-1994',
                           'TS Wisla Zakopane',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5336,
                           'Not active',
                           'Peter',
                           'FRENETTE',
                           'USA',
                           '1992',
                           'New York Ski Ed Foundation',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5346,
                           'Active',
                           'Josef',
                           'LARSSON',
                           'SWE',
                           '05-12-1989',
                           'Solleftea Gif',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5349,
                           'Not active',
                           'Volodymyr',
                           'VEREDYUK',
                           'UKR',
                           '1993',
                           'Vorokhta Ski School',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5355,
                           'Not active',
                           'Mika',
                           'KAUHANEN',
                           'FIN',
                           '1989',
                           'Puijon Hiihtoseura',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5360,
                           'Not active',
                           'Sami',
                           'NIEMI',
                           'FIN',
                           '1991',
                           'Ounasvaaran Hiihtoseura',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5361,
                           'Not active',
                           'Mika',
                           'KULMALA',
                           'FIN',
                           '1989',
                           'Lahden Hiihtoseura',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5374,
                           'Not active',
                           'Vasyl',
                           'ZHURAKIVSKYY',
                           'UKR',
                           '1991',
                           'Kremenets Ski School',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5385,
                           'Not active',
                           'Espen Enger',
                           'HALVORSEN',
                           'NOR',
                           '1990',
                           'Eidsvold Vaerks Skiklubb',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5396,
                           'Not active',
                           'Ville',
                           'LARINTO',
                           'FIN',
                           '1990',
                           'Lahden Hiihtoseura',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5397,
                           'Not active',
                           'Sami',
                           'HEISKANEN',
                           'FIN',
                           '1991',
                           'Puijon Hiihtoseura',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5404,
                           'Not active',
                           'Christian',
                           'ULMER',
                           'GER',
                           '1984',
                           'SC Wiesensteig',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5407,
                           'Not active',
                           'Ziga',
                           'MANDL',
                           'SLO',
                           '1990',
                           'SSK Costella Ilirija',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5416,
                           'Not active',
                           'Simen Key',
                           'GRIMSRUD',
                           'NOR',
                           '1992',
                           'Asker Skiklubb',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5429,
                           'Not active',
                           'Jan',
                           'ZIOBRO',
                           'POL',
                           '1991',
                           'WKS Zakopane',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5435,
                           'Active',
                           'Gregor',
                           'DESCHWANDEN',
                           'SUI',
                           '27-02-1991',
                           'Horw',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5438,
                           'Not active',
                           'Thomas',
                           'DIETHART',
                           'AUT',
                           '1992',
                           'UVB Hinzenbach-Oberoesterreich',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5439,
                           'Not active',
                           'Christoph',
                           'STAUDER',
                           'AUT',
                           '1992',
                           'SV Innsbruck-Bergisel-Tirol',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5442,
                           'Not active',
                           'Florian',
                           'SCHABEREITER',
                           'AUT',
                           '1991',
                           'ESV Muerzzuschlag',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5443,
                           'Not active',
                           'Rok',
                           'ZIMA',
                           'SLO',
                           '1988',
                           'NSK Trzic Trifix',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5451,
                           'Active',
                           'Junshiro',
                           'KOBAYASHI',
                           'JPN',
                           '11-06-1991',
                           'Megmilk Snow Brand Ski Team',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5466,
                           'Active',
                           'Ilmir',
                           'HAZETDINOV',
                           'RUS',
                           '28-10-1991',
                           'SDUSHOR 33 MOSKOVSKAYA OBLAST - RES',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5468,
                           'Not active',
                           'Stanislav',
                           'OSHEPKOV',
                           'RUS',
                           '1989',
                           'Perm, Center for Sports Traini',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5479,
                           'Not active',
                           'Dejan',
                           'JUDEZ',
                           'SLO',
                           '1990',
                           'SK Triglav Kranj',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5481,
                           'Not active',
                           'David',
                           'WINKLER',
                           'GER',
                           '1989',
                           'SK Winterberg',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5493,
                           'Not active',
                           'Tomasz',
                           'BYRT',
                           'POL',
                           '1993',
                           'WSS Wisla',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5494,
                           'Active',
                           'Aleksander',
                           'ZNISZCZOL',
                           'POL',
                           '08-03-1994',
                           'WSS Wisla',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5497,
                           'Active',
                           'Stefan',
                           'KRAFT',
                           'AUT',
                           '13-05-1993',
                           'SV Schwarzach-Salzburg',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5512,
                           'Active',
                           'Krzysztof',
                           'LEJA',
                           'POL',
                           '21-02-1996',
                           'AZS ZAKOPANE',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5515,
                           'Active',
                           'Florian',
                           'ALTENBURGER',
                           'AUT',
                           '02-11-1993',
                           'SC Seekirchen-Salzburg',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5517,
                           'Active',
                           'Thomas',
                           'LACKNER',
                           'AUT',
                           '09-04-1993',
                           'HSV Absam-Bergisel-Tirol',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5518,
                           'Active',
                           'Clemens',
                           'AIGNER',
                           'AUT',
                           '02-02-1993',
                           'SV Innsbruck-Bergisel-Tirol',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5519,
                           'Active',
                           'Ulrich',
                           'WOHLGENANNT',
                           'AUT',
                           '01-08-1994',
                           'SK Kehlegg-Vorarlberg',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5521,
                           'Active',
                           'Kento',
                           'SAKUYAMA',
                           'JPN',
                           '03-07-1990',
                           'Kitano Construction Corp.Ski Team',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5522,
                           'Active',
                           'Sho',
                           'SUZUKI',
                           'JPN',
                           '20-04-1990',
                           'Sapporo Teine Ski kyokai',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5523,
                           'Active',
                           'Hiroaki',
                           'WATANABE',
                           'JPN',
                           '18-09-1991',
                           'Tokyo Biso Group Ski Team',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5547,
                           'Not active',
                           'Bartlomiej',
                           'KLUSEK',
                           'POL',
                           '1993',
                           'LKS Klimczok Bystra',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5550,
                           'Not active',
                           'Stanislaw',
                           'BIELA',
                           'POL',
                           '1994',
                           'UKS SOLTYSIANIE STARE BYSTRE',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5564,
                           'Active',
                           'Richard',
                           'FREITAG',
                           'GER',
                           '14-08-1991',
                           'SG Nickelhuette Aue',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5567,
                           'Active',
                           'Karl',
                           'GEIGER',
                           'GER',
                           '11-02-1993',
                           'SC 1906 Oberstdorf',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5585,
                           'Active',
                           'Markus',
                           'SCHIFFNER',
                           'AUT',
                           '05-06-1992',
                           'UVB Hinzenbach-Oberoesterreich',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5589,
                           'Active',
                           'Robert',
                           'JOHANSSON',
                           'NOR',
                           '23-03-1990',
                           'Soere Aal IL',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5590,
                           'Not active',
                           'Pascal',
                           'EGLOFF',
                           'SUI',
                           '1992',
                           'Grabserberg',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5607,
                           'Not active',
                           'Yevgeniy',
                           'LEVKIN',
                           'KAZ',
                           '1992',
                           'Almaty Skiclub',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5626,
                           'Active',
                           'Anze',
                           'SEMENIC',
                           'SLO',
                           '01-08-1993',
                           'NSK TRZIC FMG',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5644,
                           'Not active',
                           'Aldo',
                           'LEETOJA',
                           'EST',
                           '1988',
                           'Skiclub Telemark',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5647,
                           'Not active',
                           'Kail',
                           'PIHO',
                           'EST',
                           '1991',
                           'Sportsclub Taevataht',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5658,
                           'Active',
                           'Peter',
                           'PREVC',
                           'SLO',
                           '20-09-1992',
                           'SK Triglav Kranj',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5661,
                           'Not active',
                           'Bogomil',
                           'PAVLOV',
                           'BUL',
                           '1992',
                           'Moten',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5664,
                           'Active',
                           'Vitaliy',
                           'KALINICHENKO',
                           'UKR',
                           '09-08-1993',
                           'Vorokhta Ski School',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5676,
                           'Active',
                           'Nejc',
                           'DEZMAN',
                           'SLO',
                           '07-12-1992',
                           'SK Triglav Kranj',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5695,
                           'Active',
                           'Rok',
                           'JUSTIN',
                           'SLO',
                           '06-04-1993',
                           'SSD Stol Zirovnica',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5706,
                           'Active',
                           'Alexey',
                           'ROMASHOV',
                           'RUS',
                           '29-04-1992',
                           'Saint-Petersburg KOR1',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5710,
                           'Not active',
                           'Kai',
                           'KOVALJEFF',
                           'FIN',
                           '1985',
                           'Lieksan Hiihtoseura',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5723,
                           'Active',
                           'Ronan LAMY',
                           'CHAPPUIS',
                           'FRA',
                           '10-09-1993',
                           'Bois D''amont',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5737,
                           'Not active',
                           'David',
                           'VIRY',
                           'FRA',
                           '1989',
                           'Xonrupt',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5741,
                           'Not active',
                           'Pascal',
                           'SOMMER',
                           'SUI',
                           '1992',
                           'Am Bachtel Wald',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5745,
                           'Not active',
                           'Andrzej',
                           'ZAPOTOCZNY',
                           'POL',
                           '1991',
                           'AZS ZAKOPANE',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5749,
                           'Not active',
                           'Johan Remen',
                           'EVENSEN',
                           'NOR',
                           '1985',
                           'Molde Omegn Idrettforening',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5750,
                           'Not active',
                           'Lukas',
                           'MUELLER',
                           'AUT',
                           '1992',
                           'SV Villach-Kaernten',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5757,
                           'Not active',
                           'Lauri',
                           'ASIKAINEN',
                           'FIN',
                           '1989',
                           'Kuusamon Erae-Veikot',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5760,
                           'Active',
                           'Roman Sergeevich',
                           'TROFIMOV',
                           'RUS',
                           '19-11-1989',
                           'Sdushor CSP N. Novgorod',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5764,
                           'Active',
                           'Alexander',
                           'SARDYKO',
                           'RUS',
                           '08-05-1990',
                           'Sdushor CSP N.Novgorod-Krasnoyarsk',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5778,
                           'Active',
                           'Federico',
                           'CECON',
                           'ITA',
                           '11-06-1994',
                           'GS FIAMMEGIALLE',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5782,
                           'Active',
                           'Daniele',
                           'VARESCO',
                           'ITA',
                           '25-07-1995',
                           'GS FIAMME ORO',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5788,
                           'Active',
                           'Sabirzhan',
                           'MUMINOV',
                           'KAZ',
                           '16-04-1994',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5789,
                           'Not active',
                           'Anatoliy',
                           'KARPENKO',
                           'KAZ',
                           '1987',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5796,
                           'Active',
                           'Jarkko',
                           'MAATTA',
                           'FIN',
                           '28-12-1994',
                           'Kainuun Hiihtoseura',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5803,
                           'Not active',
                           'Yukon DE',
                           'LEEUW',
                           'CAN',
                           '1993',
                           'Altius Nordic ski Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5805,
                           'Not active',
                           'Eric',
                           'MITCHELL',
                           'CAN',
                           '1992',
                           'Altius Nordic Ski Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5891,
                           'Active',
                           'Jaka',
                           'HVALA',
                           'SLO',
                           '15-07-1993',
                           'Ssk Ponikve',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5894,
                           'Not active',
                           'Matic',
                           'BENEDIK',
                           'SLO',
                           '1993',
                           'SSK Alpina Ziri',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5904,
                           'Not active',
                           'Vegard Haukoe',
                           'SKLETT',
                           'NOR',
                           '1986',
                           'Grong IL',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5924,
                           'Active',
                           'Luca',
                           'EGLOFF',
                           'SUI',
                           '06-06-1995',
                           'Grabserberg',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5933,
                           'Not active',
                           'Zeno DI',
                           'LENARDO',
                           'ITA',
                           '1995',
                           'MONTE LUSSARI',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5939,
                           'Active',
                           'Krzysztof',
                           'BIEGUN',
                           'POL',
                           '21-05-1994',
                           'SS-R LZS Sokol Szczyrk',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5945,
                           'Active',
                           'Daniel',
                           'HUBER',
                           'AUT',
                           '02-01-1993',
                           'SC Seekirchen-Salzburg',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5963,
                           'Active',
                           'Reruhi',
                           'SHIMIZU',
                           'JPN',
                           '04-12-1993',
                           'Megmilk Snow Brand Ski Team',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5972,
                           'Active',
                           'Anders',
                           'FANNEMEL',
                           'NOR',
                           '13-05-1991',
                           'Hornindal IL',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5974,
                           'Active',
                           'Joachim',
                           'HAUER',
                           'NOR',
                           '02-02-1991',
                           'Baekkelagets SK',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5987,
                           'Not active',
                           'Rune',
                           'VELTA',
                           'NOR',
                           '1989',
                           'Lommedalen IL',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           5988,
                           'Not active',
                           'Johan Martin',
                           'BRANDT',
                           'NOR',
                           '1987',
                           'Steinkjer Skiklubb',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6000,
                           'Not active',
                           'Ossi-Pekka',
                           'VALTA',
                           'FIN',
                           '1991',
                           'Lahden Hiihtoseura',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6005,
                           'Not active',
                           'Lars',
                           'ANTONISSEN',
                           'NED',
                           '1995',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6008,
                           'Active',
                           'Pascal',
                           'KAELIN',
                           'SUI',
                           '11-01-1993',
                           'Einsiedeln',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6009,
                           'Active',
                           'Andreas',
                           'SCHULER',
                           'SUI',
                           '30-12-1995',
                           'Einsiedeln',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6032,
                           'Not active',
                           'Sergey',
                           'BYCHKOV',
                           'RUS',
                           '1991',
                           'Moskva Shvsm',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6033,
                           'Not active',
                           'Georgiy',
                           'CHERVYAKOV',
                           'RUS',
                           '1990',
                           'Ski school SDUSSHOR Start SCT Perm',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6036,
                           'Active',
                           'Mikhail',
                           'NAZAROV',
                           'RUS',
                           '14-10-1994',
                           'Moscow Region TSSP',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6055,
                           'Not active',
                           'Milos',
                           'KADLEC',
                           'CZE',
                           '1992',
                           'Skl Nove mesto na morave',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6084,
                           'Active',
                           'Philipp',
                           'ASCHENWALD',
                           'AUT',
                           '12-11-1995',
                           'SC Mayerhofen-Tirol',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6085,
                           'Active',
                           'Thomas',
                           'HOFER',
                           'AUT',
                           '28-01-1996',
                           'SV Innsbruck-Bergisel-Tirol',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6086,
                           'Not active',
                           'Simon',
                           'GREIDERER',
                           'AUT',
                           '1996',
                           'HSV Absam-Bergisel-Tirol',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6088,
                           'Active',
                           'Filip',
                           'SAKALA',
                           'CZE',
                           '21-05-1996',
                           'TJ Dukla Frenstat pod Radhostem',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6093,
                           'Active',
                           'Stefan',
                           'HUBER',
                           'AUT',
                           '08-03-1994',
                           'SC Seekirchen-Salzburg',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6097,
                           'Not active',
                           'Mats Soehagen',
                           'BERGGAARD',
                           'NOR',
                           '1995',
                           'Stranden IL',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6098,
                           'Active',
                           'Daniel Andre',
                           'TANDE',
                           'NOR',
                           '24-01-1994',
                           'Kongsberg IF',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6100,
                           'Active',
                           'Johann Andre',
                           'FORFANG',
                           'NOR',
                           '04-07-1995',
                           'Tromsoe Skiklubb',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6119,
                           'Active',
                           'Gabriel',
                           'KARLEN',
                           'SUI',
                           '10-03-1994',
                           'Gstaad',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6145,
                           'Not active',
                           'Kaarel',
                           'NURMSALU',
                           'EST',
                           '1991',
                           'Skiclub Telemark',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6151,
                           'Active',
                           'Yukiya',
                           'SATO',
                           'JPN',
                           '19-06-1995',
                           'Megmilk Snow Brand Ski Team',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6165,
                           'Active',
                           'Jakub',
                           'WOLNY',
                           'POL',
                           '15-05-1995',
                           'LKS Klimczok Bystra',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6177,
                           'Active',
                           'Fatih Arda',
                           'IPCIOGLU',
                           'TUR',
                           '28-09-1997',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6179,
                           'Active',
                           'Ayberk',
                           'DEMIR',
                           'TUR',
                           '14-02-1997',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6189,
                           'Not active',
                           'Petr',
                           'CHAADAEV',
                           'RUS',
                           '1987',
                           'Moscow',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6194,
                           'Active',
                           'Mikhail',
                           'MAKSIMOCHKIN',
                           'RUS',
                           '29-08-1993',
                           'Sdushor CSP N. Novgorod Dinamo',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6235,
                           'Active',
                           'Killian',
                           'PEIER',
                           'SUI',
                           '28-03-1995',
                           'Vallee du Joux',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6255,
                           'Active',
                           'Frans',
                           'TAEHKAEVUORI',
                           'FIN',
                           '29-04-1992',
                           'Lahden Hiihtoseura',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6258,
                           'Active',
                           'Martti',
                           'NOMME',
                           'EST',
                           '07-08-1993',
                           'Andsumae Skiclub',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6281,
                           'Not active',
                           'Sebastian',
                           'BRADATSCH',
                           'GER',
                           '1996',
                           'WSC 07 Ruhla',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6288,
                           'Active',
                           'Ryoyu',
                           'KOBAYASHI',
                           'JPN',
                           '08-11-1996',
                           'Tsuchiya Home Ski Team',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6296,
                           'Not active',
                           'David',
                           'ZAUNER',
                           'AUT',
                           '1985',
                           'WSV Eisenerz-Steiermark',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6305,
                           'Active',
                           'Joshua',
                           'MAURER',
                           'CAN',
                           '20-09-1996',
                           'Altius Nordic Ski Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6307,
                           'Not active',
                           'Dusty',
                           'KOREK',
                           'CAN',
                           '1995',
                           'Altius Nordic ski club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6311,
                           'Not active',
                           'Akseli',
                           'KOKKONEN',
                           'NOR',
                           '1984',
                           'Staorheim IL',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6312,
                           'Not active',
                           'Phillip',
                           'SJOEEN',
                           'NOR',
                           '1995',
                           'Baekkelagets SK',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6327,
                           'Active',
                           'Elias',
                           'TOLLINGER',
                           'AUT',
                           '25-03-1995',
                           'SV Innsbruck-Bergisel-Tirol',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6328,
                           'Active',
                           'Frantisek',
                           'HOLIK',
                           'CZE',
                           '23-10-1998',
                           'LSK Lomnice nad Popelkou-Dukla',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6342,
                           'Active',
                           'Marinus',
                           'KRAUS',
                           'GER',
                           '13-02-1991',
                           'WSV Oberaudorf',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6392,
                           'Active',
                           'Naoki',
                           'NAKAMURA',
                           'JPN',
                           '19-09-1996',
                           'Tokai Univ.',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6398,
                           'Not active',
                           'Sebastian',
                           'KLINGA',
                           'FIN',
                           '1992',
                           'Lahden Hiihtoseura',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6414,
                           'Active',
                           'Vojtech',
                           'STURSA',
                           'CZE',
                           '03-08-1995',
                           'TJ Dukla Liberec',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6428,
                           'Active',
                           'Juho',
                           'OJALA',
                           'FIN',
                           '17-03-1995',
                           'Kuusamon Erae-Veikot',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6437,
                           'Active',
                           'Anze',
                           'LANISEK',
                           'SLO',
                           '20-04-1996',
                           'Ssk Menges',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6480,
                           'Active',
                           'Cene',
                           'PREVC',
                           'SLO',
                           '12-03-1996',
                           'Sk Triglav kranj',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6483,
                           'Active',
                           'Ziga',
                           'JELAR',
                           'SLO',
                           '22-10-1997',
                           'Sk Triglav kranj',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6492,
                           'Active',
                           'Konstantin',
                           'SOKOLENKO',
                           'KAZ',
                           '09-11-1987',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6510,
                           'Active',
                           'Alexander',
                           'SHUVALOV',
                           'RUS',
                           '30-11-1992',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6530,
                           'Active',
                           'Przemyslaw',
                           'KANTYKA',
                           'POL',
                           '15-12-1996',
                           'LKS Klimczok Bystra',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6532,
                           'Active',
                           'Andreas Granerud',
                           'BUSKUM',
                           'NOR',
                           '05-06-1996',
                           'Lensbygda',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6551,
                           'Active',
                           'Martin',
                           'HAMANN',
                           'GER',
                           '10-04-1997',
                           'SG Nickelhuette Aue',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6552,
                           'Active',
                           'Felix',
                           'HOFFMANN',
                           'GER',
                           '14-10-1997',
                           'SWV Goldlauter',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6553,
                           'Active',
                           'David',
                           'SIEGEL',
                           'GER',
                           '28-08-1996',
                           'SV Baiersbronn',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6558,
                           'Active',
                           'Tim',
                           'FUCHS',
                           'GER',
                           '03-08-1997',
                           'SC Degenfeld',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6559,
                           'Active',
                           'Eduard',
                           'TOROK',
                           'ROU',
                           '02-05-1997',
                           'CS Dinamo Bucuresti',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6560,
                           'Active',
                           'Sorin Iulian',
                           'PITEA',
                           'ROU',
                           '09-07-1997',
                           'CS Dinamo Bucuresti',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6581,
                           'Not active',
                           'William',
                           'RHOADS',
                           'USA',
                           '1995',
                           'Park City Ski and Snowboard',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6588,
                           'Active',
                           'Joakim',
                           'AUNE',
                           'NOR',
                           '10-08-1993',
                           'Byaasen',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6625,
                           'Active',
                           'Richard',
                           'HAUKEDAL',
                           'NOR',
                           '31-08-1996',
                           'Baekkelagets SK',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6633,
                           'Active',
                           'Tilen',
                           'BARTOL',
                           'SLO',
                           '17-04-1997',
                           'SSK Sam Ihan',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6639,
                           'Active',
                           'Thomas ROCH',
                           'DUPLAND',
                           'FRA',
                           '03-02-1996',
                           'Saint Gervais',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6645,
                           'Active',
                           'Evgeniy',
                           'KLIMOV',
                           'RUS',
                           '03-02-1994',
                           'GBU TSTOVS Moskovskaya obl Start Pe',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6652,
                           'Active',
                           'Johannes',
                           'SCHUBERT',
                           'GER',
                           '04-04-1997',
                           'Sg Nickelhuette aue',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6671,
                           'Active',
                           'Kevin',
                           'BICKNER',
                           'USA',
                           '23-09-1996',
                           'Norge Ski Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6679,
                           'Active',
                           'Vladislav',
                           'BOYARINTSEV',
                           'RUS',
                           '31-10-1994',
                           'Saint-Petersburg KOR1 Dinamo',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6696,
                           'Active',
                           'Andreas',
                           'WELLINGER',
                           'GER',
                           '28-08-1995',
                           'SC Ruhpolding',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6698,
                           'Active',
                           'Andrzej',
                           'STEKALA',
                           'POL',
                           '30-06-1995',
                           'AZS Zakopane',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6711,
                           'Active',
                           'Clemens',
                           'LEITNER',
                           'AUT',
                           '07-11-1998',
                           'Nordic Team Absam-Tirol',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6715,
                           'Active',
                           'Janni',
                           'REISENAUER',
                           'AUT',
                           '07-11-1997',
                           'TSU St. Veit-Salzburg',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6716,
                           'Active',
                           'Paul',
                           'BRASME',
                           'FRA',
                           '03-08-1997',
                           'U.S VENTRON',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6724,
                           'Active',
                           'Viktor',
                           'POLASEK',
                           'CZE',
                           '18-07-1997',
                           'Nove Mesto-Dukla',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6734,
                           'Active',
                           'Marius',
                           'LINDVIK',
                           'NOR',
                           '27-06-1998',
                           'Raelingen Skiklubb',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6753,
                           'Active',
                           'Paul',
                           'WINTER',
                           'GER',
                           '05-10-1997',
                           'SC Willingen',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6758,
                           'Active',
                           'Alex',
                           'INSAM',
                           'ITA',
                           '19-12-1997',
                           'GS FIAMME ORO',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6781,
                           'Active',
                           'Masamitsu',
                           'ITO',
                           'JPN',
                           '27-02-1998',
                           'Tsuchiya Home Ski Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6788,
                           'Active',
                           'Maximilian',
                           'STEINER',
                           'AUT',
                           '04-05-1996',
                           'WSV Bad Ischl-NTS-Oberoesterreich',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6801,
                           'Active',
                           'Matthew',
                           'SOUKUP',
                           'CAN',
                           '31-08-1997',
                           'Altius Nordic Ski Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6844,
                           'Active',
                           'Sigurd Nymoen',
                           'SOEBERG',
                           'NOR',
                           '31-08-1994',
                           'Furnes Ski',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6845,
                           'Active',
                           'Bor',
                           'PAVLOVCIC',
                           'SLO',
                           '27-06-1998',
                           'Nd Ratece planica',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6877,
                           'Active',
                           'Casey',
                           'LARSON',
                           'USA',
                           '16-12-1998',
                           'Norge Ski Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6878,
                           'Active',
                           'Markus',
                           'RUPITSCH',
                           'AUT',
                           '08-11-1997',
                           'KSG Klagenfurt-Kaernten',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6880,
                           'Active',
                           'Halvor Egner',
                           'GRANERUD',
                           'NOR',
                           '29-05-1996',
                           'Asker Skiklubb',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6883,
                           'Active',
                           'Tomas',
                           'VANCURA',
                           'CZE',
                           '10-09-1996',
                           'TJ Dukla Liberec',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6894,
                           'Active',
                           'Rok',
                           'TARMAN',
                           'SLO',
                           '18-10-1997',
                           'Nd Ratece planica',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6910,
                           'Active',
                           'Andreas',
                           'ALAMOMMO',
                           'FIN',
                           '23-12-1998',
                           'Ounasvaaran Hiihtoseura',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6912,
                           'Active',
                           'Niko',
                           'KYTOSAHO',
                           'FIN',
                           '18-12-1999',
                           'Lahti Ski Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6918,
                           'Active',
                           'Artti',
                           'AIGRO',
                           'EST',
                           '29-08-1999',
                           'Pohjakotkas',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6941,
                           'Active',
                           'Nikita',
                           'DEVYATKIN',
                           'KAZ',
                           '03-04-1999',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6951,
                           'Active',
                           'Kevin',
                           'MALTSEV',
                           'EST',
                           '04-07-2000',
                           'Elva Skiclub',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6956,
                           'Active',
                           'Jonathan',
                           'LEAROYD',
                           'FRA',
                           '03-11-2000',
                           'Courchevel',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6982,
                           'Active',
                           'Fredrik',
                           'VILLUMSTAD',
                           'NOR',
                           '21-03-1999',
                           'SKIMT',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6986,
                           'Active',
                           'Bartosz',
                           'CZYZ',
                           'POL',
                           '14-08-1999',
                           'WSS Wisla',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6987,
                           'Active',
                           'Pawel',
                           'WASEK',
                           'POL',
                           '02-06-1999',
                           'WSS Wisla',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6996,
                           'Active',
                           'Antti',
                           'AALTO',
                           'FIN',
                           '02-04-1995',
                           'Kiteen Urheilijat',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6997,
                           'Active',
                           'Yuken',
                           'IWASA',
                           'JPN',
                           '02-07-1999',
                           'Tokyo Biso Kogyo Corporation',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           6999,
                           'Active',
                           'Sandro',
                           'HAUSWIRTH',
                           'SUI',
                           '29-08-2000',
                           'Gstaad',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7006,
                           'Active',
                           'Keiichi',
                           'SATO',
                           'JPN',
                           '27-07-1997',
                           'Megmilk Snow Brand Ski Team',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7035,
                           'Active',
                           'Nico',
                           'POLYCHRONIDIS',
                           'GRE',
                           '08-11-1989',
                           'EOS Dramas',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7067,
                           'Active',
                           'Robin',
                           'PEDERSEN',
                           'NOR',
                           '31-08-1996',
                           'Stalkameratene Il',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7079,
                           'Not active',
                           'Santeri',
                           'YLITAPIO',
                           'FIN',
                           '1997',
                           'Ounasvaara Ski club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7091,
                           'Active',
                           'Domen',
                           'PREVC',
                           'SLO',
                           '04-06-1999',
                           'Sk Triglav kranj',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7095,
                           'Active',
                           'Janne',
                           'KORHONEN',
                           'FIN',
                           '30-10-1996',
                           'Lieksan Hiihtoseura',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7132,
                           'Active',
                           'Vadim',
                           'SHISHKIN',
                           'RUS',
                           '02-11-1995',
                           'Nishniy Tagil',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7143,
                           'Active',
                           'Justin',
                           'LISSO',
                           'GER',
                           '12-12-1999',
                           'Wsv Schmiedefeld',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7147,
                           'Active',
                           'Timi',
                           'ZAJC',
                           'SLO',
                           '26-04-2000',
                           'SSK Ljubno BTC',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7175,
                           'Active',
                           'Aljaz',
                           'OSTERC',
                           'SLO',
                           '02-03-1999',
                           'Ssk Velenje',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7179,
                           'Active',
                           'David',
                           'HAAGEN',
                           'AUT',
                           '2002',
                           'ESV Muerzzuschlag',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7196,
                           'Active',
                           'Constantin',
                           'SCHMID',
                           'GER',
                           '27-11-1999',
                           'Wsv Oberaudorf',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7211,
                           'Active',
                           'Moritz',
                           'BAER',
                           'GER',
                           '16-05-1997',
                           'SF Gmund-Duernbach',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7252,
                           'Active',
                           'Aleksandr',
                           'BAZHENOV',
                           'RUS',
                           '13-07-1995',
                           'ZDUSHOR ZVS CSP',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7256,
                           'Active',
                           'Joacim Oedegaard',
                           'BJOERENG',
                           'NOR',
                           '14-12-1995',
                           'Roeykenhopp',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7259,
                           'Active',
                           'Oscar P',
                           'WESTERHEIM',
                           'NOR',
                           '03-01-1996',
                           'Baekkelagets SK',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7282,
                           'Active',
                           'Muhammed Ali',
                           'BEDIR',
                           'TUR',
                           '24-03-2000',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7285,
                           'Active',
                           'Dominik',
                           'PETER',
                           'SUI',
                           '2001',
                           'Am Bachtel wald',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7333,
                           'Active',
                           'Giovanni',
                           'BRESADOLA',
                           'ITA',
                           '17-02-2001',
                           'GS MONTE GINER',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7336,
                           'Active',
                           'Tomasz',
                           'PILCH',
                           'POL',
                           '20-10-2000',
                           'WSS Wisla',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7343,
                           'Active',
                           'Sergey',
                           'TKACHENKO',
                           'KAZ',
                           '08-06-1999',
                           'Ski Club VKO',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7354,
                           'Active',
                           'Eetu',
                           'NOUSIAINEN',
                           'FIN',
                           '29-04-1997',
                           'Puijo Ski club',
                           'Fischer'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7420,
                           'Active',
                           'Kiril',
                           'KOTIK',
                           'RUS',
                           '02-11-1998',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7433,
                           'Active',
                           'Mats Bjerke',
                           'MYHREN',
                           'NOR',
                           '23-09-1997',
                           'Soere Aal',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7450,
                           'Active',
                           'Jan',
                           'HOERL',
                           'AUT',
                           '16-10-1998',
                           'SC Bischofshofen',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7464,
                           'Active',
                           'Maksim',
                           'SERGEEV',
                           'RUS',
                           '16-06-1999',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7542,
                           'Active',
                           'Zak',
                           'MOGEL',
                           'SLO',
                           '02-03-2001',
                           'Ssk Ljubno btc',
                           'Slatnar'
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7553,
                           'Active',
                           'Andrew',
                           'URLAUB',
                           'USA',
                           '12-04-2001',
                           'Flying Eagles Ski Club',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7586,
                           'Active',
                           'Nurshat',
                           'TURSUNZHANOV',
                           'KAZ',
                           '2003',
                           '',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7588,
                           'Active',
                           'Thomas Aasen',
                           'MARKENG',
                           'NOR',
                           '18-06-2000',
                           'Lensbygda Sportsklubb',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7679,
                           'Active',
                           'Sondre',
                           'RINGEN',
                           'NOR',
                           '09-10-1996',
                           'Baekkelagets SK',
                           ''
                       );

INSERT INTO tekmovalec (
                           fis_code,
                           status,
                           ime,
                           priimek,
                           drzava,
                           rojstvo,
                           klub,
                           smucke
                       )
                       VALUES (
                           7885,
                           'Active',
                           'Kalle',
                           'HEIKKINEN',
                           'FIN',
                           '16-09-1999',
                           'Kuusamon Era-veikot',
                           ''
                       );


