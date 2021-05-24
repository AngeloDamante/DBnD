/*Stampare i dati anagrafici dei clienti che hanno acquistato macchine fotografiche PENTAX nel mese di gennaio 2015*/
Select nome, cognome, recapito
FROM Clienti, Vendite, Macchinefoto, Marche
WHERE Clienti.codcli = Vednite.codcl1 AND Vendite.matr2 = Macchinefoto.matr
AND Macchinefoto.codm1 = Marche.codm AND Marche.marca = "Pentax"
AND datav BETWEEN "2015-01-01" AND "2015-01-31"

/*Stampare la quantita’ di  accessori della macchina fotografica di matricola 1234*/
Select count(*)
FROM Macchinefoto, Accessori, Possiede
WHERE matr = matr1 AND Possiede.coda = Accessori.coda AND matr = 1234

/*Stampare la descrizione delle macchine fotografiche del 2010 di una marca presa in input*/
Select descrizione
From Macchinefoto, Marche
Where cdom1 = codm AND anno = 2010 AND marca = [Inserisci marca:]

/*Stampare le macchine fotografiche che possiedono l’accessorio X e non quello Y*/
Select Macchinefoto.matr
From Macchinefoto, Accessori, Possiede
Where Accessori.coda = Possiede.coda AND Macchinefoto.matr = Possiede.matr1
And Accessori.coda = X AND Possiede.matr1 not in(
    Select Macchinefoto.matr
    From Macchinefoto, Accessori, Possiede
    Where Accessori.coda = Possiede.coda AND Macchinefoto.matr = Possiede.matr1
    And Accessori.coda = Y
)
