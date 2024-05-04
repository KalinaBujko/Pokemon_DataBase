CREATE VIEW PokemonInJapaneseLanguage AS
SELECT p.Name AS PokemonName, 
       CASE WHEN c.CategoryNameJapanese IS NOT NULL THEN c.CategoryNameJapanese
            ELSE 'Unknown' END AS PokemonNameInJapanese
FROM Pokemons p
LEFT JOIN Categories c ON p.IdCategory = c.IdCategory;