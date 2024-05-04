CREATE VIEW PokemonWeightComparison AS
SELECT Name AS PokemonName, 'Heaviest' AS WeightComparison
FROM Pokemons
WHERE [Weight(kg)] = (SELECT MAX([Weight(kg)]) FROM Pokemons)
UNION ALL
SELECT Name AS PokemonName, 'Lightest' AS WeightComparison
FROM Pokemons
WHERE [Weight(kg)] = (SELECT MIN([Weight(kg)]) FROM Pokemons);