SELECT 
    CASE WHEN GROUPING_ID(s.Country_Name) = 1 THEN 'ÖSSZESEN'
         ELSE s.Country_Name
    END AS 'Ország',
    
    CASE WHEN GROUPING_ID(s.Stadium_Name) = 1 THEN 'ÖSSZESEN'
         ELSE s.Stadium_Name
    END AS 'Stadion',
    
    COUNT(*) AS 'Lejátszott'
    
FROM main m JOIN stadium s ON m.Stadium_Id = s.Stadium_Id
GROUP BY ROLLUP (s.Country_Name, s.Stadium_Name)