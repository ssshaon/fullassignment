(
	SELECT DISTINCT
		SNAME
	FROM
		STUDENT
	WHERE
		SNUM > ANY (SELECT SNUM FROM ENROLLED)
)