SELECT COUNT(*) AS 'Magyar Dupla Győzelem'
FROM main m JOIN result r ON m.Match_Id = r.Match_Id
		  JOIN teams h ON m.Home_Team_Code = h.Team_Code
		  JOIN teams a ON m.Away_Team_Code = a.Team_Code
WHERE (h.Team_Code = 'HUN' AND r.Home_Team_Score >= r.Away_Team_Score * 2) 
		OR 
	  (a.Team_Code = 'HUN' AND r.Away_Team_Score >= r.Home_Team_Score * 2)