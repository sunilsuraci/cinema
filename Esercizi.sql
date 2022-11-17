--N1 il nome di tutte le sale di pisa

select sale.nome
from sale
where sale.citta= 'Pisa'

--N2 I film di Fellini prodotti dopo il 1960

SELECT film.regista, film.annoproduzione
FROM film
WHERE film.regista like 'Makoto%' and film.annoproduzione > 1960

--N3 Il titolo e la durta dei film di fantascienza giapponesi o francesi prodotti dopo il 1990

SELECT film.titolo, film.annoproduzione, film.nazionalita
FROM film
WHERE  film.nazionalita = 'Indiano' or film.nazionalita = 'USA' and film.genere = 'drammatico' and film.annoproduzione > 1960 

--N4 il titolo dei film di fantascienza giapponesi prodotti dopo il 1990 oppure francesi

SELECT film.genere, film.nazionalita, film.titolo
FROM film
WHERE film.annoproduzione > 1990  and film.genere like 'drammatico' and (film.nazionalita like 'USA' or film.nazionalita like 'danese')

--N5 il titolo del film dello stesso regista 'Tenet'

select film.titolo
FROM film
WHERE film.regista = (SELECT film.regista
    from film
    where film.titolo ='Tenet')


--N6 il titolo e il genere di film proiettati il giorno di natale del 2004

select film.titolo, film.genere, proiezioni.dataproiezione
from film join proiezioni on film.codfilm = proiezioni.codfilm
where proiezioni.dataproiezione = '2004-12-25'

