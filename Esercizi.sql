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

--N7 il titolo e il genere di film proiettati il giorno di natale  del 2004 a Napoli 

select film.titolo, film.genere, proiezioni.dataproiezione
from film join proiezioni on film.codfilm = proiezioni.codfilm,
     sale join proiezioni p on sale.codsala = p.codsala
where proiezioni.dataproiezione = '2004-12-25' and sale.citta = 'Napoli'

--N8 I nomi delle sale di Napoli in cui il giorno di natale 2004 è stato proiettato un film con R.Williams

SELECT sale.nome 
FROM attori join recita on attori.codattore=recita.codattore 
    join film on film.codfilm=recita.codfilm 
    join proiezioni on film.codfilm=proiezioni.codfilm 
    join sale on proiezioni.codsala=sale.codsala
WHERE sale.citta='Napoli' and proiezioni.dataproiezione='2004-12-25' and attori.nome='R.William'

--N9 il titolo del film in cui recita M. Mastroianni or S. Loren

SELECT film.titolo, attori.nome
FROM attori JOIN recita  r on attori.codattore = r.codattore
    join film on r.codfilm = film.codfilm
where attori.nome ='Guy Pierce' or attori.nome = 'Carrie-Anne Moss'



--N10 il titolo del film in cui recitano Guy Pierce e Carrie-Anne Moss

select film.titolo 
from recita join attori on recita.codattore = attori.codattore
    join film on recita.codfilm = film.codfilm
where attori.nome = 'Guy Pierce' and attori.nome = 'Carrie-Anne Moss'

--N11 per ogni film in cui recita un attore francese, il titolo del film e il nome dell'attore




--N12 per oni film che è stato proiettato a pisa nel gennaio 2005, il titolo del film e il nome della sala.




-- N13 il numero di sale di pisa con più di 60 Posti
