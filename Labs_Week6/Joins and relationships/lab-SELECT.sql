-- Challenge 1 - Who Have Published What At Where?

SELECT
	A.au_id AS "AUTHOR ID",
	A.au_lname AS "LAST NAME",
	A.au_fname AS "FIRST NAME",
	C.title AS "TITLE",
	D.pub_name AS "PUBLISHER"
FROM
	authors AS A
INNER JOIN
	titleauthor AS B on A.au_id=B.au_id
INNER JOIN
	titles AS C on B.title_id=C.title_id
INNER JOIN
	publishers AS D on C.pub_id=D.pub_id

-- Challenge 2 - Who Have Published How Many At Where?

SELECT
	A.au_id AS "AUTHOR ID",
	A.au_lname AS "LAST NAME",
	A.au_fname AS "FIRST NAME",
	D.pub_name AS "PUBLISHER",
	COUNT(C.title) "TITLE COUNT"
FROM
	authors AS A
INNER JOIN
	titleauthor AS B on A.au_id=B.au_id
INNER JOIN
	titles AS C on B.title_id=C.title_id
INNER JOIN
	publishers AS D on C.pub_id=D.pub_id
GROUP BY 
	D.pub_name,
	A.au_id,
	A.au_lname,
	A.au_fname
ORDER BY
	COUNT(C.title) DESC,
	D.pub_name;

-- Challenge 3 - Best Selling Authors

SELECT
	A.au_id AS "AUTHOR ID",
	A.au_lname AS "LAST NAME",
	A.au_fname AS "FIRST NAME",
	SUM(E.qty) AS "TOTAL"
FROM
	authors AS A
INNER JOIN
	titleauthor AS B on A.au_id=B.au_id
INNER JOIN
	titles AS C on B.title_id=C.title_id
INNER JOIN
	sales AS E on E.title_id=C.title_id
GROUP BY 
	A.au_id,
	A.au_lname,
	A.au_fname
ORDER BY
	SUM(E.qty) DESC
LIMIT 3

-- Challenge 4 - Best Selling Authors Ranking

SELECT
	A.au_id AS "AUTHOR ID",
	A.au_lname AS "LAST NAME",
	A.au_fname AS "FIRST NAME",
	COALESCE(SUM(E.qty),0) AS "TOTAL"
FROM
	authors AS A
LEFT JOIN
	titleauthor AS B on A.au_id=B.au_id
LEFT JOIN
	titles AS C on B.title_id=C.title_id
LEFT JOIN
	sales AS E on E.title_id=C.title_id
GROUP BY 
	A.au_id,
	A.au_lname,
	A.au_fname
ORDER BY
	"TOTAL" DESC