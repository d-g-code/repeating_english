BEGIN TRANSACTION;
CREATE TABLE database_sentence (
    word_eng_id INTEGER PRIMARY KEY,
    sentence TEXT NOT NULL,
    id,
    FOREIGN KEY(id) REFERENCES types(id)
);
CREATE TABLE database_words (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    add_date TEXT NOT NULL,
    word_eng TEXT NOT NULL,
    word_pol TEXT NOT NULL,
    amount_repeat INTEGER,
    repeat_correct_session INTEGER
);
INSERT INTO "database_words" VALUES(1,'19-01-2022','pattern','wzor',0,0);
INSERT INTO "database_words" VALUES(2,'19-01-2022','statement','oswiadczenie',0,0);
INSERT INTO "database_words" VALUES(3,'19-01-2022','case','przypadek',0,0);
INSERT INTO "database_words" VALUES(4,'19-01-2022','sequence','porzadek',0,0);
INSERT INTO "database_words" VALUES(5,'19-01-2022','mapping','odwzorowanie',0,0);
INSERT INTO "database_words" VALUES(6,'19-01-2022','providing','pod warunkiem że',0,0);
INSERT INTO "database_words" VALUES(7,'19-01-2022','handy','użyteczny',0,0);
INSERT INTO "database_words" VALUES(8,'19-01-2022','figuring','liczba',0,0);
INSERT INTO "database_words" VALUES(9,'19-01-2022','rather','raczej',0,0);
INSERT INTO "database_words" VALUES(10,'19-01-2022','provide','dostarczac, zaopatrzyc, zapewnic',1,0);
INSERT INTO "database_words" VALUES(11,'19-01-2022','and','i, a',1,0);
INSERT INTO "database_words" VALUES(12,'19-01-2022','to','do, żeby',7,0);
INSERT INTO "database_words" VALUES(13,'19-01-2022','in','w',0,0);
INSERT INTO "database_words" VALUES(14,'19-01-2022','is','jest',0,0);
INSERT INTO "database_words" VALUES(15,'19-01-2022','you','ty, ciebie, tobą',0,0);
INSERT INTO "database_words" VALUES(16,'19-01-2022','that','ten, że, który',6,0);
INSERT INTO "database_words" VALUES(17,'19-01-2022','it','to, ono',5,0);
INSERT INTO "database_words" VALUES(18,'19-01-2022','he','on',0,0);
INSERT INTO "database_words" VALUES(19,'19-01-2022','was','był/była, byłem/byłam',0,0);
INSERT INTO "database_words" VALUES(20,'19-01-2022','for','dla, za, na',0,0);
INSERT INTO "database_words" VALUES(21,'19-01-2022','on','na, przy, u',1,0);
INSERT INTO "database_words" VALUES(22,'19-01-2022','are','są, jesteś',0,0);
INSERT INTO "database_words" VALUES(23,'19-01-2022','as','jak, tak jak, równie, tak samo jak, tak jak',9,0);
INSERT INTO "database_words" VALUES(24,'19-01-2022','with','z',0,0);
INSERT INTO "database_words" VALUES(25,'19-01-2022','his','jego',5,0);
INSERT INTO "database_words" VALUES(26,'19-01-2022','they','oni, ci',1,0);
INSERT INTO "database_words" VALUES(27,'19-01-2022','I','ja',0,0);
INSERT INTO "database_words" VALUES(28,'19-01-2022','at','w, przy, na, w czasie(np. obiadu), o(np. o godzinie)',4,0);
INSERT INTO "database_words" VALUES(29,'19-01-2022','be','być, bądź',0,0);
INSERT INTO "database_words" VALUES(30,'19-01-2022','this','ten, to, (zwykle o przedmotach w zasiegu ręki',4,0);
INSERT INTO "database_words" VALUES(31,'19-01-2022','have','mieć',0,0);
INSERT INTO "database_words" VALUES(32,'19-01-2022','from','od, z',4,0);
INSERT INTO "database_words" VALUES(33,'19-01-2022','or','albo, lub',3,0);
INSERT INTO "database_words" VALUES(34,'19-01-2022','one','jeden',0,0);
INSERT INTO "database_words" VALUES(35,'19-01-2022','had','czas przeszły od mieć',1,0);
INSERT INTO "database_words" VALUES(36,'19-01-2022','by','przez, według, po',1,0);
INSERT INTO "database_words" VALUES(37,'19-01-2022','where','gdzie',0,0);
INSERT INTO "database_words" VALUES(38,'19-01-2022','but','ale, oprócz',0,0);
INSERT INTO "database_words" VALUES(39,'19-01-2022','not','nie',2,0);
INSERT INTO "database_words" VALUES(40,'19-01-2022','what','co, jaki',1,0);
INSERT INTO "database_words" VALUES(41,'19-01-2022','all','wszystko, wszyscy, cały',0,0);
INSERT INTO "database_words" VALUES(42,'19-01-2022','were','byli/były, byliśmy/byłyśmy',0,0);
INSERT INTO "database_words" VALUES(43,'19-01-2022','we','my',1,0);
INSERT INTO "database_words" VALUES(44,'19-01-2022','when','kiedy',0,0);
INSERT INTO "database_words" VALUES(45,'19-01-2022','your','twój, wasz, twoje',0,0);
INSERT INTO "database_words" VALUES(46,'19-01-2022','can','móc',0,0);
INSERT INTO "database_words" VALUES(47,'19-01-2022','said','czas przeszły od powiedzieć',1,0);
INSERT INTO "database_words" VALUES(48,'19-01-2022','there','tam',0,0);
INSERT INTO "database_words" VALUES(49,'19-01-2022','use','używać',0,0);
INSERT INTO "database_words" VALUES(50,'19-01-2022','each','każdy (każdy z osobna, poszczególny)',2,0);
INSERT INTO "database_words" VALUES(51,'19-01-2022','which','który/która',0,0);
INSERT INTO "database_words" VALUES(52,'19-01-2022','she','ona',0,0);
INSERT INTO "database_words" VALUES(53,'19-01-2022','do','robić, zrobić',1,0);
INSERT INTO "database_words" VALUES(54,'19-01-2022','how','jak',0,0);
INSERT INTO "database_words" VALUES(55,'19-01-2022','their','ich',1,0);
INSERT INTO "database_words" VALUES(56,'19-01-2022','if','jeśli, gdyby',1,0);
INSERT INTO "database_words" VALUES(57,'19-01-2022','will','być w czasie przyszłym, wola, życzyć sobie',1,0);
INSERT INTO "database_words" VALUES(58,'19-01-2022','up','w górę, do góry, wyże',0,0);
INSERT INTO "database_words" VALUES(59,'20-01-2022','other','inny, inaczej',0,0);
INSERT INTO "database_words" VALUES(60,'20-01-2022','about','o, około',1,0);
INSERT INTO "database_words" VALUES(61,'20-01-2022','out','na zewnątrz, zewnętrzny',2,0);
INSERT INTO "database_words" VALUES(62,'20-01-2022','many','wiele',0,0);
INSERT INTO "database_words" VALUES(63,'20-01-2022','then','potem, następnie, wtedy',2,0);
INSERT INTO "database_words" VALUES(64,'20-01-2022','them','im, ich, nich',2,0);
INSERT INTO "database_words" VALUES(65,'20-01-2022','these','te, ci',2,0);
INSERT INTO "database_words" VALUES(66,'20-01-2022','so','więc, żeby, tak',0,0);
INSERT INTO "database_words" VALUES(67,'20-01-2022','some','trochę, kilka, niektóre',1,0);
INSERT INTO "database_words" VALUES(68,'20-01-2022','her','jej, ją',1,0);
INSERT INTO "database_words" VALUES(69,'20-01-2022','would','tryb przypuszczający np. zrobiłby/zrobiłaby',1,0);
INSERT INTO "database_words" VALUES(70,'20-01-2022','make','robić, zrobić, zarobić',1,0);
INSERT INTO "database_words" VALUES(71,'20-01-2022','like','jak, lubić',1,0);
INSERT INTO "database_words" VALUES(72,'20-01-2022','him','jego, jemu, niego',1,0);
INSERT INTO "database_words" VALUES(73,'20-01-2022','into','w',2,0);
INSERT INTO "database_words" VALUES(74,'20-01-2022','time','czas, raz',0,0);
INSERT INTO "database_words" VALUES(75,'20-01-2022','has','ma',2,0);
INSERT INTO "database_words" VALUES(76,'20-01-2022','look','patrzeć, spojrzenie',1,0);
INSERT INTO "database_words" VALUES(77,'20-01-2022','two','dwa',0,0);
INSERT INTO "database_words" VALUES(78,'20-01-2022','more','więcej, bardziej',0,0);
INSERT INTO "database_words" VALUES(79,'20-01-2022','here','tutaj',2,0);
INSERT INTO "database_words" VALUES(80,'20-01-2022','go','iść, jechać',1,0);
INSERT INTO "database_words" VALUES(81,'20-01-2022','see','widzieć, zobacz',0,0);
INSERT INTO "database_words" VALUES(82,'20-01-2022','why','dlaczego',1,0);
INSERT INTO "database_words" VALUES(83,'20-01-2022','no','nie, żaden',2,0);
INSERT INTO "database_words" VALUES(84,'20-01-2022','way','droga, sposób',0,0);
INSERT INTO "database_words" VALUES(85,'20-01-2022','could','mógł/mogła, mógłby/mogłaby',2,0);
INSERT INTO "database_words" VALUES(86,'20-01-2022','people','ludzie',0,0);
INSERT INTO "database_words" VALUES(87,'20-01-2022','my','mój',0,0);
INSERT INTO "database_words" VALUES(88,'20-01-2022','than','niż',1,0);
INSERT INTO "database_words" VALUES(89,'20-01-2022','first','pierwszy, najpierw',0,0);
INSERT INTO "database_words" VALUES(90,'20-01-2022','yes','tak',0,0);
INSERT INTO "database_words" VALUES(91,'20-01-2022','been','był/była, został',2,0);
INSERT INTO "database_words" VALUES(92,'20-01-2022','call','dzwonić, nazywać',0,0);
INSERT INTO "database_words" VALUES(93,'20-01-2022','who','kto, który, którzy',0,0);
INSERT INTO "database_words" VALUES(94,'20-01-2022','of','nie tłumaczy się lub oznacza z, o',2,0);
INSERT INTO "database_words" VALUES(95,'20-01-2022','now','teraz',0,0);
INSERT INTO "database_words" VALUES(96,'20-01-2022','find','znajdować',2,0);
INSERT INTO "database_words" VALUES(97,'20-01-2022','long','długi, długo',0,0);
INSERT INTO "database_words" VALUES(98,'20-01-2022','down','w dół',0,0);
INSERT INTO "database_words" VALUES(99,'20-01-2022','day','dzień',0,0);
INSERT INTO "database_words" VALUES(100,'20-01-2022','did','czas przeszły od robić',0,0);
INSERT INTO "database_words" VALUES(101,'20-01-2022','get','dostawać, otrzymywać, kupować',0,0);
INSERT INTO "database_words" VALUES(102,'20-01-2022','come','przyjść, przyjechać',0,0);
INSERT INTO "database_words" VALUES(103,'20-01-2022','always','zawsze',1,0);
INSERT INTO "database_words" VALUES(104,'20-01-2022','may','móc (maj, jeśli dużą literą)',1,0);
INSERT INTO "database_words" VALUES(105,'20-01-2022','part','część, rozłączać',1,0);
INSERT INTO "database_words" VALUES(106,'20-01-2022','over','ponad, nad czymś',2,0);
INSERT INTO "database_words" VALUES(107,'20-01-2022','new','nowy',0,0);
INSERT INTO "database_words" VALUES(108,'20-01-2022','the best','najlepszy, najlepiej',1,0);
INSERT INTO "database_words" VALUES(109,'20-01-2022','take','wziąć, brać',2,0);
INSERT INTO "database_words" VALUES(110,'20-01-2022','only','tylko, jedyny',0,0);
INSERT INTO "database_words" VALUES(111,'20-01-2022','little','mało, mały, troch',1,0);
INSERT INTO "database_words" VALUES(112,'21-01-2022','work','praca, pracować',0,0);
INSERT INTO "database_words" VALUES(113,'21-01-2022','know','wiedzieć, znać',0,0);
INSERT INTO "database_words" VALUES(114,'21-01-2022','place','miejsce, umieszczać',0,0);
INSERT INTO "database_words" VALUES(115,'21-01-2022','year','rok',0,0);
INSERT INTO "database_words" VALUES(116,'21-01-2022','signature','podpis',2,0);
INSERT INTO "database_words" VALUES(117,'21-01-2022','live','żyć, mieszkać',2,0);
INSERT INTO "database_words" VALUES(118,'21-01-2022','me','mnie, mi',0,0);
INSERT INTO "database_words" VALUES(119,'21-01-2022','back','z powrotem, plecy, tył',0,0);
INSERT INTO "database_words" VALUES(120,'21-01-2022','give','dawać',2,0);
INSERT INTO "database_words" VALUES(121,'21-01-2022','the most','najwięcej, najbardziej, większość',2,0);
INSERT INTO "database_words" VALUES(122,'21-01-2022','very','bardzo',2,0);
INSERT INTO "database_words" VALUES(123,'21-01-2022','after','potem, za',0,0);
INSERT INTO "database_words" VALUES(124,'21-01-2022','thing','rzecz',0,0);
INSERT INTO "database_words" VALUES(125,'21-01-2022','our','nasz',0,0);
INSERT INTO "database_words" VALUES(126,'21-01-2022','just','tylko, właśnie',2,0);
INSERT INTO "database_words" VALUES(127,'21-01-2022','name','imię, nazwać',0,0);
INSERT INTO "database_words" VALUES(128,'21-01-2022','good','dobry, dobro',0,0);
INSERT INTO "database_words" VALUES(129,'21-01-2022','purchase','zakup, kupić',2,0);
INSERT INTO "database_words" VALUES(130,'21-01-2022','man','człowiek, mężczyzna',2,0);
INSERT INTO "database_words" VALUES(131,'21-01-2022','think','myśleć',2,0);
INSERT INTO "database_words" VALUES(132,'21-01-2022','say','mówić, powiedzieć',2,0);
INSERT INTO "database_words" VALUES(133,'21-01-2022','great','wielki, świetny',0,0);
INSERT INTO "database_words" VALUES(134,'21-01-2022','word','słowo',0,0);
INSERT INTO "database_words" VALUES(135,'21-01-2022','help','pomoc, pomagać',0,0);
INSERT INTO "database_words" VALUES(136,'21-01-2022','through','przez, na wylot',2,0);
INSERT INTO "database_words" VALUES(137,'21-01-2022','much','wiele',2,0);
INSERT INTO "database_words" VALUES(138,'21-01-2022','before','zanim, przed',0,0);
INSERT INTO "database_words" VALUES(139,'21-01-2022','tip','napiwek, wskazówka, wierzchołek',2,0);
INSERT INTO "database_words" VALUES(140,'21-01-2022','right','prawa strona, prawo do czegoś, słuszny',0,0);
INSERT INTO "database_words" VALUES(141,'21-01-2022','too','za, zbyt, także',2,0);
INSERT INTO "database_words" VALUES(142,'21-01-2022','mean','znaczyć, mieć na myśli, złośliwy',2,0);
INSERT INTO "database_words" VALUES(143,'21-01-2022','old','stary',0,0);
INSERT INTO "database_words" VALUES(144,'21-01-2022','any','dowolny, wszelki',2,0);
INSERT INTO "database_words" VALUES(145,'21-01-2022','same','taki sam, tak samo',1,0);
INSERT INTO "database_words" VALUES(146,'21-01-2022','tell','powiedzieć',2,0);
INSERT INTO "database_words" VALUES(147,'21-01-2022','boy','chłopiec, chłopak',0,0);
INSERT INTO "database_words" VALUES(148,'21-01-2022','follow','śledzić, być zwolennikiem, następować po czymś',2,0);
INSERT INTO "database_words" VALUES(150,'21-01-2022','came','czas przeszły od przychodzić',2,0);
INSERT INTO "database_words" VALUES(151,'21-01-2022','want','chcieć',1,0);
INSERT INTO "database_words" VALUES(152,'21-01-2022','show','pokaz, pokazać',0,0);
INSERT INTO "database_words" VALUES(153,'21-01-2022','also','też, ponadto',0,0);
INSERT INTO "database_words" VALUES(154,'21-01-2022','around','dookoła, około',1,0);
INSERT INTO "database_words" VALUES(155,'21-01-2022','form','kształt, formularz, kształtować',0,0);
INSERT INTO "database_words" VALUES(156,'21-01-2022','three','trzy',0,0);
INSERT INTO "database_words" VALUES(157,'21-01-2022','small','mały',0,0);
INSERT INTO "database_words" VALUES(158,'21-01-2022','set','ustawiać',1,0);
INSERT INTO "database_words" VALUES(159,'21-01-2022','put','włożyć, położyć',1,0);
INSERT INTO "database_words" VALUES(160,'21-01-2022','end','koniec, kończyć',0,0);
INSERT INTO "database_words" VALUES(161,'21-01-2022','does','robi',2,0);
INSERT INTO "database_words" VALUES(162,'21-01-2022','another','kolejny, inny',1,0);
INSERT INTO "database_words" VALUES(163,'21-01-2022','well','dobrze',2,0);
INSERT INTO "database_words" VALUES(164,'21-01-2022','large','duży',2,0);
INSERT INTO "database_words" VALUES(165,'21-01-2022','must','musieć',2,0);
INSERT INTO "database_words" VALUES(166,'25-01-2022','every','każdy (z określonej grupy)',0,0);
INSERT INTO "database_words" VALUES(167,'01-02-2022','schedule,','harmonogram, terminarz',0,0);
INSERT INTO "database_words" VALUES(168,'01-02-2022','nowadays,','w dzisiejszych czasach, obecnie, dzisiaj',0,0);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('database_words',168);
COMMIT;
