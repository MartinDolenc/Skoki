-- Table: tekma
DROP TABLE IF EXISTS tekma;

CREATE TABLE tekma (
    id        INTEGER PRIMARY KEY,
    kraj      TEXT    NOT NULL,
    datum     DATE    NOT NULL,
    drzava    TEXT    REFERENCES drzava (kratica) 
                      NOT NULL,
    tip_tekme TEXT    NOT NULL
);

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2534,
                      'Ruka',
                      '2008-11-29',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2535,
                      'Ruka',
                      '2008-11-29',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2537,
                      'Trondheim',
                      '2008-12-06',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2539,
                      'Pragelato',
                      '2008-12-13',
                      'ITA',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2540,
                      'Engelberg',
                      '2008-12-20',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2541,
                      'Engelberg',
                      '2008-12-21',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2542,
                      'Oberstdorf',
                      '2008-12-29',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2543,
                      'Garmisch-Partenkirchen',
                      '2009-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2544,
                      'Innsbruck',
                      '2009-01-04',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2545,
                      'Bischofshofen',
                      '2009-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2546,
                      'Tauplitz/Bad Mitterndorf',
                      '2009-01-10',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2547,
                      'Tauplitz/Bad Mitterndorf',
                      '2009-01-11',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2550,
                      'Vancouver, BC',
                      '2009-01-24',
                      'CAN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2551,
                      'Vancouver, BC',
                      '2009-01-25',
                      'CAN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2553,
                      'Sapporo',
                      '2009-01-31',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2554,
                      'Willingen',
                      '2009-02-07',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2555,
                      'Willingen',
                      '2009-02-08',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2557,
                      'Oberstdorf',
                      '2009-02-14',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2558,
                      'Lahti',
                      '2009-03-07',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2559,
                      'Lahti',
                      '2009-03-08',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2560,
                      'Kuopio',
                      '2009-03-10',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2561,
                      'Lillehammer',
                      '2009-03-13',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2562,
                      'Vikersund',
                      '2009-03-14',
                      'NOR',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2563,
                      'Planica',
                      '2009-03-20',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2564,
                      'Planica',
                      '2009-03-21',
                      'SLO',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2565,
                      'Planica',
                      '2009-03-22',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2567,
                      'Sapporo',
                      '2009-02-01',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2569,
                      'Klingenthal',
                      '2009-02-11',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2570,
                      'Oberstdorf',
                      '2009-02-15',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2571,
                      'Trondheim',
                      '2008-12-07',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2572,
                      'Pragelato',
                      '2008-12-14',
                      'ITA',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2641,
                      'Vikersund',
                      '2009-03-15',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2721,
                      'Zakopane',
                      '2009-01-16',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2722,
                      'Zakopane',
                      '2009-01-17',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2799,
                      'Ruka',
                      '2009-11-27',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2800,
                      'Ruka',
                      '2009-11-28',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2802,
                      'Lillehammer',
                      '2009-12-05',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2803,
                      'Lillehammer',
                      '2009-12-06',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2805,
                      'Engelberg',
                      '2009-12-18',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2808,
                      'Engelberg',
                      '2009-12-19',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2809,
                      'Engelberg',
                      '2009-12-20',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2811,
                      'Oberstdorf',
                      '2009-12-29',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2813,
                      'Garmisch-Partenkirchen',
                      '2010-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2815,
                      'Innsbruck',
                      '2010-01-03',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2817,
                      'Bischofshofen',
                      '2010-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2819,
                      'Tauplitz/Bad Mitterndorf',
                      '2010-01-09',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2820,
                      'Tauplitz/Bad Mitterndorf',
                      '2010-01-10',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2822,
                      'Sapporo',
                      '2010-01-16',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2823,
                      'Sapporo',
                      '2010-01-17',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2825,
                      'Zakopane',
                      '2010-01-22',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2826,
                      'Zakopane',
                      '2010-01-23',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2828,
                      'Oberstdorf',
                      '2010-01-30',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2829,
                      'Oberstdorf',
                      '2010-01-31',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2831,
                      'Klingenthal',
                      '2010-02-03',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2833,
                      'Willingen',
                      '2010-02-06',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2834,
                      'Willingen',
                      '2010-02-07',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2841,
                      'Lahti',
                      '2010-03-06',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2842,
                      'Lahti',
                      '2010-03-07',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2844,
                      'Kuopio',
                      '2010-03-09',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2846,
                      'Lillehammer',
                      '2010-03-12',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      2848,
                      'Oslo',
                      '2010-03-14',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3009,
                      'Ruka',
                      '2010-11-27',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3010,
                      'Ruka',
                      '2010-11-28',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3012,
                      'Kuopio',
                      '2010-12-01',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3014,
                      'Lillehammer',
                      '2010-12-04',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3015,
                      'Lillehammer',
                      '2010-12-05',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3017,
                      'Engelberg',
                      '2010-12-17',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3018,
                      'Zakopane',
                      '2011-01-23',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3020,
                      'Engelberg',
                      '2010-12-18',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3022,
                      'Engelberg',
                      '2010-12-19',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3024,
                      'Oberstdorf',
                      '2010-12-29',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3026,
                      'Garmisch-Partenkirchen',
                      '2011-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3028,
                      'Innsbruck',
                      '2011-01-03',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3030,
                      'Bischofshofen',
                      '2011-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3032,
                      'Harrachov',
                      '2011-01-08',
                      'CZE',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3033,
                      'Harrachov',
                      '2011-01-09',
                      'CZE',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3035,
                      'Sapporo',
                      '2011-01-15',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3036,
                      'Sapporo',
                      '2011-01-16',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3038,
                      'Zakopane',
                      '2011-01-21',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3039,
                      'Zakopane',
                      '2011-01-22',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3041,
                      'Willingen',
                      '2011-01-29',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3042,
                      'Willingen',
                      '2011-01-30',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3044,
                      'Klingenthal',
                      '2011-02-02',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3046,
                      'Vikersund',
                      '2011-02-12',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3047,
                      'Vikersund',
                      '2011-02-13',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3056,
                      'Lahti',
                      '2011-03-12',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3057,
                      'Lahti',
                      '2011-03-13',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3059,
                      'Planica',
                      '2011-03-18',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3060,
                      'Planica',
                      '2011-03-19',
                      'SLO',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3061,
                      'Planica',
                      '2011-03-20',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3063,
                      'Oberstdorf',
                      '2011-02-05',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3064,
                      'Oberstdorf',
                      '2011-02-06',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3322,
                      'Oberstdorf',
                      '2011-12-30',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3324,
                      'Garmisch-Partenkirchen',
                      '2012-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3326,
                      'Willingen',
                      '2012-02-11',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3327,
                      'Willingen',
                      '2012-02-12',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3329,
                      'Klingenthal',
                      '2012-02-16',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3331,
                      'Oberstdorf',
                      '2012-02-18',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3332,
                      'Oberstdorf',
                      '2012-02-19',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3334,
                      'Planica',
                      '2012-03-16',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3335,
                      'Planica',
                      '2012-03-17',
                      'SLO',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3336,
                      'Planica',
                      '2012-03-18',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3337,
                      'Ruka',
                      '2011-11-27',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3339,
                      'Ruka',
                      '2011-11-27',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3341,
                      'Lillehammer',
                      '2011-12-03',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3342,
                      'Lillehammer',
                      '2011-12-04',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3344,
                      'Harrachov',
                      '2011-12-09',
                      'CZE',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3345,
                      'Harrachov',
                      '2011-12-10',
                      'CZE',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3346,
                      'Harrachov',
                      '2011-12-11',
                      'CZE',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3348,
                      'Engelberg',
                      '2011-12-17',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3349,
                      'Engelberg',
                      '2011-12-18',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3351,
                      'Innsbruck',
                      '2012-01-04',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3353,
                      'Bischofshofen',
                      '2012-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3355,
                      'Tauplitz/Bad Mitterndorf',
                      '2012-01-15',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3356,
                      'Tauplitz/Bad Mitterndorf',
                      '2012-01-15',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3358,
                      'Zakopane',
                      '2012-01-20',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3359,
                      'Zakopane',
                      '2012-01-21',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3361,
                      'Sapporo',
                      '2012-01-28',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3362,
                      'Sapporo',
                      '2012-01-29',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3364,
                      'Predazzo',
                      '2012-02-04',
                      'ITA',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3365,
                      'Predazzo',
                      '2012-02-05',
                      'ITA',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3371,
                      'Lahti',
                      '2012-03-03',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3372,
                      'Lahti',
                      '2012-03-04',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3374,
                      'Trondheim',
                      '2012-03-08',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3376,
                      'Oslo',
                      '2012-03-11',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3552,
                      'Lillehammer',
                      '2012-11-24',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3553,
                      'Lillehammer',
                      '2012-11-25',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3555,
                      'Ruka',
                      '2012-11-30',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3556,
                      'Ruka',
                      '2012-12-01',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3558,
                      'Sochi',
                      '2012-12-08',
                      'RUS',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3560,
                      'Sochi',
                      '2012-12-09',
                      'RUS',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3564,
                      'Engelberg',
                      '2012-12-15',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3565,
                      'Engelberg',
                      '2012-12-16',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3567,
                      'Oberstdorf',
                      '2012-12-30',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3569,
                      'Garmisch-Partenkirchen',
                      '2013-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3571,
                      'Innsbruck',
                      '2013-01-04',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3576,
                      'Bischofshofen',
                      '2013-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3578,
                      'Wisla',
                      '2013-01-09',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3580,
                      'Zakopane',
                      '2013-01-11',
                      'POL',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3581,
                      'Zakopane',
                      '2013-01-12',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3586,
                      'Sapporo',
                      '2013-01-19',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3587,
                      'Sapporo',
                      '2013-01-20',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3589,
                      'Vikersund',
                      '2013-01-26',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3590,
                      'Vikersund',
                      '2013-01-27',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3592,
                      'Harrachov',
                      '2013-02-03',
                      'CZE',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3593,
                      'Harrachov',
                      '2013-02-03',
                      'CZE',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3598,
                      'Willingen',
                      '2013-02-09',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3599,
                      'Willingen',
                      '2013-02-10',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3604,
                      'Klingenthal',
                      '2013-02-13',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3606,
                      'Oberstdorf',
                      '2013-02-16',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3607,
                      'Oberstdorf',
                      '2013-02-17',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3612,
                      'Lahti',
                      '2013-03-09',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3613,
                      'Lahti',
                      '2013-03-10',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3615,
                      'Kuopio',
                      '2013-03-12',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3617,
                      'Trondheim',
                      '2013-03-15',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3620,
                      'Oslo',
                      '2013-03-17',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3623,
                      'Planica',
                      '2013-03-22',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3624,
                      'Planica',
                      '2013-03-23',
                      'SLO',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3625,
                      'Planica',
                      '2013-03-24',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3860,
                      'Klingenthal',
                      '2013-11-23',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3861,
                      'Klingenthal',
                      '2013-11-24',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3863,
                      'Ruka',
                      '2013-11-29',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3864,
                      'Lahti',
                      '2014-02-28',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3866,
                      'Lillehammer',
                      '2013-12-07',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3867,
                      'Lillehammer',
                      '2013-12-08',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3869,
                      'Titisee-Neustadt',
                      '2013-12-14',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3870,
                      'Titisee-Neustadt',
                      '2013-12-15',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3872,
                      'Engelberg',
                      '2013-12-21',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3873,
                      'Engelberg',
                      '2013-12-22',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3875,
                      'Tauplitz/Bad Mitterndorf',
                      '2014-01-11',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3876,
                      'Tauplitz/Bad Mitterndorf',
                      '2014-01-12',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3878,
                      'Wisla',
                      '2014-01-16',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3880,
                      'Zakopane',
                      '2014-01-18',
                      'POL',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3881,
                      'Zakopane',
                      '2014-01-19',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3883,
                      'Sapporo',
                      '2014-01-25',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3884,
                      'Sapporo',
                      '2014-01-26',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3886,
                      'Willingen',
                      '2014-02-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3887,
                      'Willingen',
                      '2014-02-02',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3889,
                      'Falun',
                      '2014-02-26',
                      'SWE',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3891,
                      'Lahti',
                      '2014-03-01',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3892,
                      'Lahti',
                      '2014-03-02',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3894,
                      'Kuopio',
                      '2014-03-04',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3896,
                      'Trondheim',
                      '2014-03-07',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3898,
                      'Oslo',
                      '2014-03-09',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3900,
                      'Planica',
                      '2014-03-21',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3901,
                      'Planica',
                      '2014-03-22',
                      'SLO',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3902,
                      'Planica',
                      '2014-03-23',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3904,
                      'Oberstdorf',
                      '2013-12-29',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3906,
                      'Garmisch-Partenkirchen',
                      '2014-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3908,
                      'Innsbruck',
                      '2014-01-04',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      3910,
                      'Bischofshofen',
                      '2014-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4142,
                      'Klingenthal',
                      '2014-11-23',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4144,
                      'Ruka',
                      '2014-11-28',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4145,
                      'Ruka',
                      '2014-11-29',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4147,
                      'Lillehammer',
                      '2014-12-06',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4148,
                      'Lillehammer',
                      '2014-12-07',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4150,
                      'Nizhny Tagil',
                      '2014-12-13',
                      'RUS',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4151,
                      'Nizhny Tagil',
                      '2014-12-14',
                      'RUS',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4153,
                      'Engelberg',
                      '2014-12-20',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4154,
                      'Engelberg',
                      '2014-12-21',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4156,
                      'Oberstdorf',
                      '2014-12-29',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4158,
                      'Garmisch-Partenkirchen',
                      '2015-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4160,
                      'Innsbruck',
                      '2015-01-04',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4162,
                      'Bischofshofen',
                      '2015-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4164,
                      'Tauplitz/Bad Mitterndorf',
                      '2015-01-10',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4165,
                      'Tauplitz/Bad Mitterndorf',
                      '2015-01-11',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4166,
                      'Wisla',
                      '2015-01-15',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4169,
                      'Zakopane',
                      '2015-01-18',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4171,
                      'Sapporo',
                      '2015-01-24',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4172,
                      'Sapporo',
                      '2015-01-25',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4173,
                      'Willingen',
                      '2015-01-30',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4175,
                      'Willingen',
                      '2015-02-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4177,
                      'Titisee-Neustadt',
                      '2015-02-07',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4178,
                      'Titisee-Neustadt',
                      '2015-02-08',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4180,
                      'Vikersund',
                      '2015-02-14',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4181,
                      'Vikersund',
                      '2015-02-15',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4184,
                      'Lahti',
                      '2015-03-08',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4186,
                      'Kuopio',
                      '2015-03-10',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4187,
                      'Trondheim',
                      '2015-03-12',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4188,
                      'Oslo',
                      '2015-03-14',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4189,
                      'Oslo',
                      '2015-03-15',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4191,
                      'Planica',
                      '2015-03-20',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4193,
                      'Planica',
                      '2015-03-22',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4399,
                      'Klingenthal',
                      '2015-11-22',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4402,
                      'Lahti',
                      '2016-02-19',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4405,
                      'Lillehammer',
                      '2015-12-05',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4406,
                      'Lillehammer',
                      '2015-12-06',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4409,
                      'Nizhny Tagil',
                      '2015-12-12',
                      'RUS',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4411,
                      'Nizhny Tagil',
                      '2015-12-13',
                      'RUS',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4413,
                      'Engelberg',
                      '2015-12-19',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4414,
                      'Engelberg',
                      '2015-12-20',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4416,
                      'Oberstdorf',
                      '2015-12-29',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4418,
                      'Garmisch-Partenkirchen',
                      '2016-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4420,
                      'Innsbruck',
                      '2016-01-03',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4422,
                      'Bischofshofen',
                      '2016-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4425,
                      'Willingen',
                      '2016-01-10',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4428,
                      'Zakopane',
                      '2016-01-24',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4430,
                      'Sapporo',
                      '2016-01-30',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4431,
                      'Sapporo',
                      '2016-01-31',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4435,
                      'Vikersund',
                      '2016-02-12',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4437,
                      'Trondheim',
                      '2016-02-10',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4439,
                      'Vikersund',
                      '2016-02-13',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4440,
                      'Vikersund',
                      '2016-02-14',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4444,
                      'Lahti',
                      '2016-02-21',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4446,
                      'Kuopio',
                      '2016-02-23',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4449,
                      'Almaty',
                      '2016-02-27',
                      'KAZ',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4451,
                      'Almaty',
                      '2016-02-28',
                      'KAZ',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4453,
                      'Wisla',
                      '2016-03-04',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4456,
                      'Titisee-Neustadt',
                      '2016-03-12',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4458,
                      'Planica',
                      '2016-03-17',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4459,
                      'Planica',
                      '2016-03-18',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4461,
                      'Planica',
                      '2016-03-20',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4695,
                      'Ruka',
                      '2016-11-25',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4696,
                      'Ruka',
                      '2016-11-26',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4699,
                      'Klingenthal',
                      '2016-12-04',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4701,
                      'Lillehammer',
                      '2016-12-10',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4702,
                      'Lillehammer',
                      '2016-12-11',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4704,
                      'Engelberg',
                      '2016-12-17',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4705,
                      'Engelberg',
                      '2016-12-18',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4707,
                      'Oberstdorf',
                      '2016-12-30',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4709,
                      'Garmisch-Partenkirchen',
                      '2017-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4711,
                      'Innsbruck',
                      '2017-01-04',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4713,
                      'Bischofshofen',
                      '2017-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4715,
                      'Wisla',
                      '2017-01-14',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4716,
                      'Wisla',
                      '2017-01-15',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4719,
                      'Zakopane',
                      '2017-01-22',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4722,
                      'Willingen',
                      '2017-01-29',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4724,
                      'Oberstdorf',
                      '2017-02-04',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4725,
                      'Oberstdorf',
                      '2017-02-05',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4727,
                      'Sapporo',
                      '2017-02-11',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4728,
                      'Sapporo',
                      '2017-02-12',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4730,
                      'PyeongChang',
                      '2017-02-15',
                      'KOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4731,
                      'PyeongChang',
                      '2017-02-16',
                      'KOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4734,
                      'Oslo',
                      '2017-03-12',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4738,
                      'Trondheim',
                      '2017-03-16',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4741,
                      'Vikersund',
                      '2017-03-19',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4743,
                      'Planica',
                      '2017-03-24',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4745,
                      'Planica',
                      '2017-03-26',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4915,
                      'Ruka',
                      '2017-11-25',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4916,
                      'Ruka',
                      '2017-11-26',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4918,
                      'Nizhny Tagil',
                      '2017-12-02',
                      'RUS',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4919,
                      'Nizhny Tagil',
                      '2017-12-03',
                      'RUS',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4921,
                      'Titisee-Neustadt',
                      '2017-12-09',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4922,
                      'Titisee-Neustadt',
                      '2017-12-10',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4924,
                      'Engelberg',
                      '2017-12-16',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4925,
                      'Engelberg',
                      '2017-12-17',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4927,
                      'Oberstdorf',
                      '2017-12-30',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4929,
                      'Garmisch-Partenkirchen',
                      '2018-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4931,
                      'Innsbruck',
                      '2018-01-04',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4933,
                      'Bischofshofen',
                      '2018-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4935,
                      'Tauplitz/ Bad Mitterndorf',
                      '2018-01-13',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4944,
                      'Zakopane',
                      '2018-01-27',
                      'POL',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4945,
                      'Zakopane',
                      '2018-01-28',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4947,
                      'Willingen',
                      '2018-02-03',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4948,
                      'Willingen',
                      '2018-02-04',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4950,
                      'Oslo',
                      '2018-03-10',
                      'NOR',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4952,
                      'Lillehammer',
                      '2018-03-13',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4954,
                      'Trondheim',
                      '2018-03-15',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4956,
                      'Vikersund',
                      '2018-03-17',
                      'NOR',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4957,
                      'Vikersund',
                      '2018-03-18',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4959,
                      'Planica',
                      '2018-03-23',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4960,
                      'Planica',
                      '2018-03-24',
                      'SLO',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      4961,
                      'Planica',
                      '2018-03-25',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5001,
                      'Wisla',
                      '2017-11-19',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5002,
                      'Oslo',
                      '2018-03-11',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5008,
                      'Lahti',
                      '2018-03-03',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5009,
                      'Lahti',
                      '2018-03-04',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5228,
                      'Wisla',
                      '2019-11-17',
                      'POL',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5229,
                      'Wisla',
                      '2019-11-18',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5231,
                      'Ruka',
                      '2019-11-24',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5232,
                      'Ruka',
                      '2019-11-25',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5234,
                      'Nizhny Tagil',
                      '2019-12-01',
                      'RUS',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5235,
                      'Nizhny Tagil',
                      '2019-12-02',
                      'RUS',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5237,
                      'Engelberg',
                      '2019-12-15',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5238,
                      'Engelberg',
                      '2019-12-16',
                      'SUI',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5240,
                      'Oberstdorf',
                      '2019-12-30',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5242,
                      'Garmisch-Partenkirchen',
                      '2019-01-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5244,
                      'Innsbruck',
                      '2019-01-04',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5246,
                      'Bischofshofen',
                      '2019-01-06',
                      'AUT',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5249,
                      'Zakopane',
                      '2019-01-19',
                      'POL',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5250,
                      'Zakopane',
                      '2019-01-20',
                      'POL',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5252,
                      'Sapporo',
                      '2019-01-26',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5253,
                      'Sapporo',
                      '2019-01-27',
                      'JPN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5254,
                      'Oberstdorf',
                      '2019-02-01',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5255,
                      'Oberstdorf',
                      '2019-02-02',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5256,
                      'Oberstdorf',
                      '2019-02-03',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5258,
                      'Lahti',
                      '2019-02-09',
                      'FIN',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5259,
                      'Lahti',
                      '2019-02-10',
                      'FIN',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5260,
                      'Willingen',
                      '2019-02-15',
                      'GER',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5261,
                      'Willingen',
                      '2019-02-16',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5262,
                      'Willingen',
                      '2019-02-17',
                      'GER',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5264,
                      'Oslo',
                      '2019-03-09',
                      'NOR',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5265,
                      'Oslo',
                      '2019-03-10',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5269,
                      'Trondheim',
                      '2019-03-14',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5271,
                      'Vikersund',
                      '2019-03-16',
                      'NOR',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5272,
                      'Vikersund',
                      '2019-03-17',
                      'NOR',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5275,
                      'Planica',
                      '2019-03-22',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5276,
                      'Planica',
                      '2019-03-23',
                      'SLO',
                      'Ekipno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5277,
                      'Planica',
                      '2019-03-24',
                      'SLO',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5342,
                      'Val di Fiemme',
                      '2019-01-12',
                      'ITA',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5343,
                      'Val di Fiemme',
                      '2019-01-13',
                      'ITA',
                      'Posamicno'
                  );

INSERT INTO tekma (
                      id,
                      kraj,
                      datum,
                      drzava,
                      tip_tekme
                  )
                  VALUES (
                      5372,
                      'Lillehammer',
                      '2019-03-12',
                      'NOR',
                      'Posamicno'
                  );


