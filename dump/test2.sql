/*Stampare tutti i libri presenti in biblioteca ed i clienti che eventualmente
li hanno presi in prestito*/

SELECT titolo, nome, cogn
FROM soci, libri, prestiti
WHERE soci.ntess = prestiti.ntess1
AND libri.codisbn = prestiti.codisbn1
OR datapl is null  /*tabella di appoggio*/

/* 2 */
SELECT
FROM Autori, Libri
WHERE Libri.coda1 = Autori.coda
GROUP BY coda, nome, cognome
HAVING count(*) <= 10
