select film.titolo, sale.nome
from proiezioni join sale on proiezioni.codSala=sale.codSala join film on film.codFilm=proiezioni.codFilm
order by film.titolo


--Query 1
select sale.nome
from sale
where sale.citta= 'Pisa'


--prova
SELECT *
from film
--Query 2
SELECT film.regista, film.annoproduzione
FROM film
WHERE film.regista like 'Makoto%' and film.annoproduzione > 1960

--Query 3
SELECT film.titolo, film.annoproduzione, film.nazionalita
FROM film
WHERE  film.nazionalita = 'Indiano' or film.nazionalita = 'USA' and film.genere = 'drammatico' and film.annoproduzione > 1960 


--prova
select *
from film 

--Query 4
SELECT film.genere, film.nazionalita, film.titolo
FROM film
WHERE film.annoproduzione > 1990  and film.genere like 'drammatico' and (film.nazionalita like 'USA' or film.nazionalita like 'danese')


--Query 5
SELECT film.regista, film.titolo
FROM
WHERE