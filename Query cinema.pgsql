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
SELECT film.titolo
FROM film
WHERE film.regista = (SELECT regista
    from film
    where film.regista = 'Tenet')


select film.titolo
FROM film
WHERE film.regista = (SELECT film.regista
    from film
    where film.titolo ='Tenet')


--N6 il titolo e il genere di film proiettati il giorno di natale del 2004
--Query 6 

SELECT * 
from proiezioni 

select film.titolo, film.genere, proiezioni.dataproiezione
from film join proiezioni on film.codfilm = proiezioni.codfilm
where proiezioni.dataproiezione = '2004-12-25'


--N7 il titolo e il genere di film proiettati il giorno di natale  del 2004 a Napoli 
--Query 7
SELECT *
from sale

select film.titolo, film.genere, proiezioni.dataproiezione
from film join proiezioni on film.codfilm = proiezioni.codfilm,
     sale join proiezioni p on sale.codsala = p.codsala
where proiezioni.dataproiezione = '2004-12-25' and sale.citta = 'Napoli'


--N8 I nomi delle sale di Napoli in cui il giorno di natale 2004 è stato proiettato un film con R.Williams
--Query 8
SELECT *
from sale
SELECT *
from film
SELECT *
from proiezioni

SELECT *
from attori
SELECT *
from recita

SELECT sale.nome 
FROM attori join recita on attori.codattore=recita.codattore 
    join film on film.codfilm=recita.codfilm 
    join proiezioni on film.codfilm=proiezioni.codfilm 
    join sale on proiezioni.codsala=sale.codsala
WHERE sale.citta='Napoli' and proiezioni.dataproiezione='2004-12-25' and attori.nome='R.William'


select sale.nome, attori.nome
from 
where (SELECT 
        FROM
        WHERE)



--N9 il titolo del fil in cui recita Guy Pierce or Carrie-Anne Moss

SELECT film.titolo, attori.nome
FROM attori JOIN recita  r on attori.codattore = r.codattore
    join film on r.codfilm = film.codfilm
where attori.nome ='Guy Pierce' or attori.nome = 'Carrie-Anne Moss'


SELECT *
from sale
SELECT *
from film
SELECT *
from proiezioni

SELECT *
from attori
SELECT *
from recita

select film.titolo 
from attori join recita
WHERE

select film.titolo, attori.nome
from  recita left join  film
where  attori.nome = 'Guy Pierce' or attori.nome = 'Carrie-Anne Moss'

--N10 il titolo del film in cui recitano Guy Pierce e Carrie-Anne Moss

select film.titolo 
from recita join attori on recita.codattore = attori.codattore
    join film on recita.codfilm = film.codfilm
where attori.nome = 'Guy Pierce' and attori.nome = 'Carrie-Anne Moss'


--N11 per ogni film in cui recita un attore francese, il titolo del film e il nome dell'attore

SELECT *
from sale
SELECT *
from film
SELECT *
from proiezioni

SELECT *
from attori
SELECT *
from recita



SELECT attori.nazionalita
FROM recita join attori on recita.codattore = attori.codattore
    join 
WHERE