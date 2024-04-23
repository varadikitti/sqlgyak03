SELECT * FROM Rendeles

CREATE user homework2 without login
grant SELECT ON Rendeles to homework2
execute AS user = 'homework2'
SELECT * FROM Rendeles
revert
SELECT * FROM Rendeles