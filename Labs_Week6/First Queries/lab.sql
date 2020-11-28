-- Question 1

SELECT DISTINCT
	prime_genre
FROM
	mytable;
	
-- Question 2

SELECT
	prime_genre,
	SUM(rating_count_tot)
FROM
	mytable
GROUP BY
	prime_genre
ORDER BY
	SUM(rating_count_tot) DESC
LIMIT 1;

-- Question 3
SELECT
	prime_genre,
	COUNT(DISTINCT(track_name))
FROM
	mytable
GROUP BY
	prime_genre
ORDER BY
	COUNT(DISTINCT(track_name)) DESC
LIMIT 1;

-- Question 4
SELECT
	prime_genre,
	COUNT(DISTINCT(track_name))
FROM
	mytable
GROUP BY
	prime_genre
ORDER BY
	COUNT(DISTINCT(track_name))
LIMIT 1;

-- Question 5
SELECT
	track_name,
	SUM(rating_count_tot)
FROM
	mytable
GROUP BY
	track_name
ORDER BY
	SUM(rating_count_tot) DESC
LIMIT 10;

-- Question 6
SELECT
	track_name,
	AVG(user_rating)
FROM
	mytable
GROUP BY
	track_name
ORDER BY
	AVG(user_rating) DESC
LIMIT 10;

-- Question 7
-- Todos são aplicativos extremamente conhecidos

--Question 8
-- Nenhum dos aplicativos é muito conhecido.

-- Question 9
-- Nenhum dos apps mais avaliados está entre os melhores avaliados

-- Question 10
SELECT
	track_name,
	SUM(rating_count_tot),
	AVG(user_rating)
FROM
	mytable
GROUP BY
	track_name
ORDER BY
	AVG(user_rating) DESC,
	SUM(rating_count_tot) DESC
LIMIT 3;

--Question 11
SELECT 
	*
FROM
	mytable
LIMIT 10

-- A query a seguir busca os 20 aplicativos mais baixados e traz o preço deles. Tendo em vista que os 11 primeiros da lista são gratuitos e no TOP 20 só há
-- 3 apps pagos, aparentemente, o preço é importante para a popularidade do app.

SELECT
	track_name,
	SUM(rating_count_tot),
	AVG(price)
FROM
	mytable
GROUP BY
	track_name
ORDER BY
	SUM(rating_count_tot) DESC
LIMIT 20;

-- As próximas duas queries verificam a quantidade de avalições para cada faixa de avaliação para confirmar se os apps pagos são melhores avaliados.
-- 82,5% dos gratuitos tem notas maiores que 4, 90,8% dos pagos tem notas maiores que 4.

SELECT
	AVG(user_rating) AS user_rating,
	SUM(rating_count_tot) AS rating_total
FROM
	mytable
WHERE
	price=0
GROUP BY
	user_rating
ORDER BY
	AVG(user_rating) DESC
LIMIT 10;

SELECT
	AVG(user_rating) AS user_rating,
	SUM(rating_count_tot) AS rating_total
FROM
	mytable
WHERE
	price<>0
GROUP BY
	user_rating
ORDER BY
	AVG(user_rating) DESC
LIMIT 10;