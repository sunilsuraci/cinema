--N1 il nome di tutte le sale di pisa

select sale.nome
from sale
where sale.citta= 'Pisa'

--N2 I film di Fellini prodotti dopo il 1960

SELECT film.regista, film.annoproduzione
FROM film
WHERE film.regista like 'Makoto%' and film.annoproduzione > 1960