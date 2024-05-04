CREATE PROCEDURE UpdateTrainerDetails
    @TrainerId INT,
    @Name NVARCHAR(50),
    @League NVARCHAR(50),
    @Rank NVARCHAR(50)
AS
BEGIN
    UPDATE Trainers
    SET Name = @Name, Leauge = @League, Rank = @Rank
    WHERE IdTrainer = @TrainerId;
END;