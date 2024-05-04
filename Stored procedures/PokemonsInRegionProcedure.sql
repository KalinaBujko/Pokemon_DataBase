CREATE PROCEDURE GetRandomNumberOfPokemonInRegion
    @RegionName NVARCHAR(50)
AS
BEGIN
    DECLARE @RandomNumber INT;
    SELECT @RandomNumber = COUNT(*) FROM Pokemons WHERE IdRegion = (SELECT IdRegion FROM Regions WHERE [Region name] = @RegionName);

    PRINT 'Pokemon number in region ' + @RegionName + ': ' + CAST(@RandomNumber AS NVARCHAR(10));
END;