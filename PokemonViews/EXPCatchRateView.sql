CREATE VIEW ExpCatchRateComparison AS
SELECT Name AS PokemonName, BaseExp, CatchRate,
       CASE WHEN BaseExp = (SELECT MAX(BaseExp) FROM Pokemons) THEN 'Most EXP'
            WHEN CatchRate = (SELECT MIN(CatchRate) FROM Pokemons) THEN 'Hardest to catch'
            ELSE 'Normal' END AS Comparison
FROM Pokemons;