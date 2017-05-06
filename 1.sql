SELECT DISTINCT
	"SNAME"
FROM
	"STUDENT"
WHERE "SLEVEL"='1' AND
	"SNUM" IN (
		SELECT
			"SNUM"
		FROM
			"ENROLLED"
		WHERE
			"CNUM" IN (
				SELECT
					"CNUM"
				FROM
					"COURSE"
				WHERE
					"FID" IN (
						SELECT
							"FID"
						FROM
							"FACULTY"
						WHERE
						 FNAME= 'Abdullah'
					)
			)
	)