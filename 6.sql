SELECT
	SNAME
FROM
	STUDENT
WHERE
	SNUM > ALL (
		SELECT
			 "MAX"(CNUM)
		FROM
			ENROLLED
		GROUP BY
			CNUM
 
	)