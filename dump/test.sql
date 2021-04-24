SELECT nome, cognome, avg(puntigara)
FROM Studenti, Gare
WHERE Studenti.nmatr = Gare.nmatr
GROUP BY nome, cognome

SELECT AVG(puntigara)
FROM Gare, Discipline
WHERE Gare.coddisc = Discipline.coddisc
AND data = '03/23/2021'
AND disciplina = 'salto in lungo'

SELECT Istituti.codist
FROM Istituti, Studenti, Gare
WHERE Studenti.nmatr = Gare.nmatr
AND Istituti.codist = Studenti.codist
GROUP BY codist
HAVING COUNT(codist)>10

SELECT Cognome
FROM Studenti, Gare, Discipline
WHERE Studenti.nmatr = Gare.nmatr
AND Discipline.coddisc = Gare.coddisc
AND disciplina = 'corsa 100 metri'
OR disciplina = 'corsa 400 metri ostacoli'

SELECT disciplina
FROM Discipline, Gare, Arbitri
WHERE Discipline.coddisc = Gare.coddisc
AND Gare.coda = Arbitri.coda
AND nomea = "Mario" AND cogna = "ROSSI"

SELECT Istituti.nome
FROM Studenti, Istituti
WHERE Istituti.codist = Studenti.codist
AND Studenti.nmatr NOT IN (
    SELECT Studenti.nmatr
    FROM Studenti, Discipline, Gare
    WHERE Discipline.coddisc = Gare.coddisc
    AND Studenti.nmatr = Gare.nmatr
    AND disciplina = "salto in lungo"
)
