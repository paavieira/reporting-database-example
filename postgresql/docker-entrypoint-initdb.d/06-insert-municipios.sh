#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "docker" --dbname "docker" <<-EOSQL
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('983','CATUNDA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('985','JIJOCA DE JERICOACOARA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('987','FORTIM','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('989','ARARENDÁ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('991','ITAITINGA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('993','CHORÓ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1231','ACARAPE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1233','BANABUIÚ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1235','BARREIRA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1237','BARROQUINHA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1239','CHOROZINHO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1241','CROATÁ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1243','DEPUTADO IRAPUAN PINHEIRO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1245','ERERÊ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1247','EUSÉBIO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1249','GRAÇA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1251','GUAIÚBA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1253','HORIZONTE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1255','IBARETAMA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1257','IBICUITINGA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1259','IPAPORANGA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1261','MADALENA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1263','MIRAÍMA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1265','OCARA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1267','PINDORETAMA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1269','PIRES FERREIRA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1271','POTIRETAMA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1273','SALITRE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1275','TARRAFAS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1277','TEJUÇUOCA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1279','TURURU','CE'); 
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1301','ABAIARA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1303','ACARAÚ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1305','ACOPIARA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1307','AIUABA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1309','ALCÂNTARAS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1311','ALTANEIRA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1313','ALTO SANTO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1315','ANTONINA DO NORTE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1317','APUIARÉS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1319','AQUIRAZ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1321','ARACATI','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1323','ARACOIABA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1325','ARARIPE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1327','ARATUBA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1329','ARNEIROZ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1331','ASSARÉ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1333','AURORA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1335','BAIXIO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1337','BARBALHA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1339','BARRO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1341','BATURITÉ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1343','BEBERIBE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1345','BELA CRUZ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1347','BOA VIAGEM','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1349','BREJO SANTO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1351','CAMOCIM','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1353','CAMPOS SALES','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1355','CANINDÉ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1357','CAPISTRANO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1359','CARIDADE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1361','CARIRÉ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1363','CARIRIAÇU','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1365','CARIÚS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1367','CARNAUBAL','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1369','CASCAVEL','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1371','CATARINA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1373','CAUCAIA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1375','CEDRO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1377','CHAVAL','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1381','COREAÚ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1383','CRATEÚS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1385','CRATO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1387','FARIAS BRITO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1389','FORTALEZA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1391','FRECHEIRINHA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1393','GENERAL SAMPAIO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1395','GRANJA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1397','GRANJEIRO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1399','GROAÍRAS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1401','GUARACIABA DO NORTE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1403','GUARAMIRANGA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1405','HIDROLÂNDIA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1407','IBIAPINA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1409','ICÓ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1411','IGUATU','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1413','INDEPENDÊNCIA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1415','IPAUMIRIM','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1417','IPU','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1419','IPUEIRAS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1421','IRACEMA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1423','IRAUÇUBA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1425','ITAIÇABA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1427','ITAPAJÉ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1429','ITAPIPOCA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1431','ITAPIÚNA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1433','ITATIRA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1435','JAGUARETAMA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1437','JAGUARIBARA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1439','JAGUARIBE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1441','JAGUARUANA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1443','JARDIM','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1445','JATI','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1447','JUAZEIRO DO NORTE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1449','JUCÁS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1451','LAVRAS DA MANGABEIRA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1453','LIMOEIRO DO NORTE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1455','MARANGUAPE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1457','MARCO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1459','MARTINÓPOLE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1461','MASSAPÊ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1463','MAURITI','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1465','MERUOCA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1467','MILAGRES','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1469','MISSÃO VELHA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1471','MOMBAÇA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1473','MONSENHOR TABOSA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1475','MORADA NOVA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1477','MORAÚJO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1479','MORRINHOS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1481','MUCAMBO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1483','MULUNGU','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1485','NOVA OLINDA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1487','NOVA RUSSAS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1489','NOVO ORIENTE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1491','ORÓS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1493','PACAJUS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1495','PACATUBA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1497','PACOTI','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1499','PACUJÁ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1501','PALHANO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1503','PALMÁCIA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1505','PARACURU','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1507','PARAMBU','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1509','PARAMOTI','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1511','PEDRA BRANCA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1513','PENAFORTE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1515','PENTECOSTE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1517','PEREIRO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1519','PIQUET CARNEIRO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1521','PORANGA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1523','PORTEIRAS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1525','POTENGI','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1527','QUIXADÁ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1529','QUIXERAMOBIM','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1531','QUIXERÉ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1533','REDENÇÃO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1535','RERIUTABA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1537','RUSSAS','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1539','SABOEIRO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1541','SANTANA DO ACARAÚ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1543','SANTANA DO CARIRI','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1545','SANTA QUITÉRIA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1547','SÃO BENEDITO','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1549','SÃO GONÇALO DO AMARANTE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1551','SÃO JOÃO DO JAGUARIBE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1553','SÃO LUÍS DO CURU','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1555','SENADOR POMPEU','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1557','SENADOR SÁ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1559','SOBRAL','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1561','SOLONÓPOLE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1563','TABULEIRO DO NORTE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1565','TAMBORIL','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1567','TAUÁ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1569','TIANGUÁ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1571','TRAIRI','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1573','UBAJARA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1575','UMARI','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1577','URUBURETAMA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1579','URUOCA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1581','VÁRZEA ALEGRE','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1583','VIÇOSA DO CEARÁ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1585','MARACANAÚ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1587','AMONTADA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1589','CRUZ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1591','FORQUILHA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1593','ICAPUÍ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1595','ITAREMA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1597','MILHÃ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('1599','PARAIPABA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('9853','QUIXELÔ','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('9855','UMIRIM','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('9857','VARJOTA','CE');
    Insert into municipios (muni_cd,muni_nm,muni_uf_sg) values ('9917','QUITERIANÓPOLIS','CE');
EOSQL
