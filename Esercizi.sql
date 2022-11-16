--N1 il nome di tutte le sale di pisa

select sale.nome
from sale
where sale.citta= 'Pisa'

--N2 I film di Fellini prodotti dopo il 1960

SELECT film.regista, film.annoproduzione
FROM film
WHERE film.regista like 'Makoto%' and film.annoproduzione > 1960

--N3 Il titolo e la durta dei film di fantascienza giapponesi o francesi prodotti dopo il 1990



--N4 il titolo dei film di fantascienza giapponesi prodotti dopo il 1990 oppure francesi

SELECT film.genere, film.nazionalita, film.titolo
FROM film
WHERE film.annoproduzione > 1990  and film.genere like 'drammatico' and (film.nazionalita like 'USA' or film.nazionalita like 'danese')