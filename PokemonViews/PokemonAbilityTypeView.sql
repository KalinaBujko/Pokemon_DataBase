CREATE VIEW PokemonAbilityTypeComparison AS
SELECT p.Name AS PokemonName, a.AbilityName, c.CategoryNameEnglish
FROM Pokemons p
JOIN Abilities a ON p.IdAbility = a.IdAbility
JOIN Categories c ON p.IdCategory = c.IdCategory;