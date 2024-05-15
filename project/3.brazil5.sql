SELECT COUNT(*) AS 'Brazil válogatott: legalább 5 gól'
FROM main m JOIN result r ON m.Match_Id = r.Match_Id
WHERE (m.Home_Team_Code = 'BRA' OR m.Away_Team_Code = 'BRA') AND (r.Home_Team_Score + r.Away_Team_Score) >= 5