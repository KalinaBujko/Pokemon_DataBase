CREATE VIEW RandomPokemonBattle AS
SELECT p1.Name AS FirstPokemon, p2.Name AS SecondPokemon,
       CASE WHEN p1.BaseExp > p2.BaseExp THEN p1.Name
            WHEN p1.BaseExp < p2.BaseExp THEN p2.Name
            ELSE 'Draw' END AS Winner,
       ABS(p1.BaseExp - p2.BaseExp) AS ExpDifference
FROM (
    SELECT TOP 1 * FROM Pokemons ORDER BY NEWID()
) p1
CROSS JOIN (
    SELECT TOP 1 * FROM Pokemons ORDER BY NEWID()
) p2
WHERE p1.IdPokemon != p2.IdPokemon;