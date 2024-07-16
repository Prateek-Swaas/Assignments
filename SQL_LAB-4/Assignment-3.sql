INSERT INTO standings (team, points)
SELECT home_team , 
SUM(CASE 
	WHEN result = 'H' THEN 3 
	WHEN result = 'D' THEN 1 
	ELSE 0 
END) AS points
FROM matches
GROUP BY home_team;


INSERT INTO standings (team, points)
SELECT away_team , 
SUM(CASE 
	WHEN result = 'A' THEN 3 
	WHEN result = 'D' THEN 1 
	ELSE 0 
END) AS points
FROM matches
GROUP BY away_team
ON DUPLICATE KEY UPDATE points = points + VALUES(points);


SELECT team,points FROM standings ORDER BY points DESC;