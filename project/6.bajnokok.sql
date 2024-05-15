SELECT DISTINCT m.Tournament_Name AS 'Bajnokság', 
				m.Group_Name AS 'Csoport', 
                NyertesCsapat AS 'Nyertes Csapat'
FROM main m JOIN result r ON m.Match_Id = r.Match_Id JOIN 
    (SELECT 
            CASE 
                WHEN r.winner = 'home team win' THEN m.Home_Team_Code
                WHEN r.winner = 'away team win' THEN m.Away_Team_Code
            END AS NyertesCsapat, m.Tournament_Name 
        FROM main m JOIN result r ON m.Match_Id = r.Match_Id
        WHERE m.Stage_Name = 'final') Nyertesek ON m.Tournament_Name = Nyertesek.Tournament_Name
WHERE m.Stage_Name = 'group stage' AND Nyertesek.NyertesCsapat IN (m.Home_Team_Code, m.Away_Team_Code)