SELECT YEAR(d.Match_Date) AS 'Év',
       m.Stage_Name AS 'Szakasz',
       AVG(r.Home_Team_Score + r.Away_Team_Score) AS 'Átlag'
FROM main m JOIN result r ON m.Match_Id = r.Match_Id
			JOIN match_details d ON m.Match_Id = d.Match_Id
GROUP BY m.Tournament_Name, m.Stage_Name, YEAR(d.Match_Date)
HAVING YEAR(d.Match_Date) <= 2000