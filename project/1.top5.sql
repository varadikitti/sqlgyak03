SELECT TOP 5 t.Team_Name AS 'Csapat', 
       COUNT(CASE WHEN m.Home_Team_Code = t.Team_Code AND r.Winner = 'home team win' THEN 1
                  WHEN m.Away_Team_Code = t.Team_Code AND r.Winner = 'away team win' THEN 1
             	  ELSE NULL 
             END) AS Gyozelmek
FROM main m JOIN teams t ON m.Home_Team_Code = t.Team_Code OR m.Away_Team_Code = t.Team_Code
		    JOIN result r ON m.Match_Id = r.Match_Id
WHERE m.Stage_Name = 'final'
GROUP BY t.Team_Name
ORDER BY Gyozelmek DESC