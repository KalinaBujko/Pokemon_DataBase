CREATE DATABASE [Pokemony]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pokemony', FILENAME = N'W:\MSSQLServer\MSSQL15.SQLEXPRESS\MSSQL\DATA\Pokemony.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pokemony_log', FILENAME = N'W:\MSSQLServer\MSSQL15.SQLEXPRESS\MSSQL\DATA\Pokemony_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Pokemony] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pokemony].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pokemony] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pokemony] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pokemony] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pokemony] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pokemony] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pokemony] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pokemony] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pokemony] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pokemony] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pokemony] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pokemony] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pokemony] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pokemony] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pokemony] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pokemony] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pokemony] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pokemony] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pokemony] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pokemony] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pokemony] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pokemony] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pokemony] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pokemony] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pokemony] SET  MULTI_USER 
GO
ALTER DATABASE [Pokemony] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pokemony] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pokemony] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pokemony] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pokemony] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pokemony] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Pokemony] SET QUERY_STORE = ON
GO
ALTER DATABASE [Pokemony] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Pokemony]
GO
/****** Object:  Table [dbo].[Abilities]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abilities](
	[IdAbility] [int] NOT NULL,
	[AbilityName] [nvarchar](50) NOT NULL,
	[Ability] [varchar](50) NULL,
	[Generation] [int] NULL,
	[Weakness] [nvarchar](50) NULL,
 CONSTRAINT [PK_Umiejętności pokemonów] PRIMARY KEY CLUSTERED 
(
	[IdAbility] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[IdCategory] [int] NOT NULL,
	[CategoryNameEnglish] [nvarchar](50) NOT NULL,
	[CategoryNameJapanese] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kategorie pokemonów] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EffortValueYield]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EffortValueYield](
	[IdEffortValueYield] [int] NOT NULL,
	[Pokemon] [nvarchar](50) NULL,
	[Exp] [int] NOT NULL,
	[HP] [int] NULL,
	[Attack] [int] NULL,
	[Defense] [int] NULL,
	[Sp. Attack] [int] NULL,
	[Sp. Defense] [int] NULL,
	[Speed] [int] NULL,
	[TotalEVs] [int] NULL,
 CONSTRAINT [PK_Wartość wysiłku] PRIMARY KEY CLUSTERED 
(
	[IdEffortValueYield] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvolutionFamilies]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvolutionFamilies](
	[IdEvolutionFamily] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Number] [int] NOT NULL,
 CONSTRAINT [PK_Rodziny ewolucji] PRIMARY KEY CLUSTERED 
(
	[IdEvolutionFamily] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[IdGame] [int] NOT NULL,
	[Game] [nvarchar](50) NULL,
	[Platform] [nvarchar](50) NULL,
	[Premiere] [date] NULL,
 CONSTRAINT [PK_Gry pokemon] PRIMARY KEY CLUSTERED 
(
	[IdGame] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generations]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generations](
	[IdGeneration] [int] NOT NULL,
	[GenerationName] [nvarchar](50) NULL,
	[GenerationStart] [date] NULL,
	[GenerationEnd] [date] NULL,
	[PokemonNumber] [int] NULL,
	[IdGenerationsGame] [int] NULL,
 CONSTRAINT [PK_Generacje pokemonów] PRIMARY KEY CLUSTERED 
(
	[IdGeneration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitats]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitats](
	[IdHabitat] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[IdPokedexColor] [int] NULL,
 CONSTRAINT [PK_Siedliska pokemonów] PRIMARY KEY CLUSTERED 
(
	[IdHabitat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PokedexColor]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokedexColor](
	[IdPokedexColor] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NULL,
 CONSTRAINT [PK_Pokedex color] PRIMARY KEY CLUSTERED 
(
	[IdPokedexColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pokemons]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pokemons](
	[IdPokemon] [int] NOT NULL,
	[NationalPokedexNumber] [nvarchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[IdCategory] [int] NULL,
	[IdType] [int] NULL,
	[IdAbility] [int] NULL,
	[CatchRate] [int] NULL,
	[HatchTime] [nvarchar](50) NULL,
	[Height(cm)] [float] NULL,
	[Weight(kg)] [float] NULL,
	[LevellingRate] [nvarchar](50) NULL,
	[BaseExp] [int] NULL,
	[IdPokedexColor] [int] NULL,
	[BaseFriendship] [int] NULL,
	[IdGeneration] [int] NULL,
	[EvolutionLevel] [int] NULL,
	[IdEvolutionFamily] [int] NULL,
	[IdTotalEVs] [int] NULL,
	[IdHabitat] [int] NULL,
	[IdRegion] [int] NULL,
 CONSTRAINT [PK_Pokemons] PRIMARY KEY CLUSTERED 
(
	[IdPokemon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[IdRegion] [int] NOT NULL,
	[Region name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[IdRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainers]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainers](
	[IdTrainer] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IdRegion] [int] NULL,
	[Leauge] [nvarchar](50) NULL,
	[Rank] [nvarchar](50) NULL,
	[IdGeneration] [int] NULL,
 CONSTRAINT [PK_Trenerzy pokemonów] PRIMARY KEY CLUSTERED 
(
	[IdTrainer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 23.04.2024 12:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[IdTypes] [int] NOT NULL,
	[Types] [nvarchar](50) NOT NULL,
	[AbilityId] [int] NULL,
	[Weakness] [nvarchar](50) NULL,
 CONSTRAINT [PK_Typy pokemonów] PRIMARY KEY CLUSTERED 
(
	[IdTypes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Abilities]  WITH CHECK ADD  CONSTRAINT [FK_Abilities_Generations] FOREIGN KEY([Generation])
REFERENCES [dbo].[Generations] ([IdGeneration])
GO
ALTER TABLE [dbo].[Abilities] CHECK CONSTRAINT [FK_Abilities_Generations]
GO
ALTER TABLE [dbo].[Generations]  WITH CHECK ADD  CONSTRAINT [FK_Generations_Games] FOREIGN KEY([IdGenerationsGame])
REFERENCES [dbo].[Games] ([IdGame])
GO
ALTER TABLE [dbo].[Generations] CHECK CONSTRAINT [FK_Generations_Games]
GO
ALTER TABLE [dbo].[Habitats]  WITH CHECK ADD  CONSTRAINT [FK_Habitats_PokedexColor] FOREIGN KEY([IdPokedexColor])
REFERENCES [dbo].[PokedexColor] ([IdPokedexColor])
GO
ALTER TABLE [dbo].[Habitats] CHECK CONSTRAINT [FK_Habitats_PokedexColor]
GO
ALTER TABLE [dbo].[Pokemons]  WITH CHECK ADD  CONSTRAINT [FK_Pokemons_Abilities] FOREIGN KEY([IdAbility])
REFERENCES [dbo].[Abilities] ([IdAbility])
GO
ALTER TABLE [dbo].[Pokemons] CHECK CONSTRAINT [FK_Pokemons_Abilities]
GO
ALTER TABLE [dbo].[Pokemons]  WITH CHECK ADD  CONSTRAINT [FK_Pokemons_Categories] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Categories] ([IdCategory])
GO
ALTER TABLE [dbo].[Pokemons] CHECK CONSTRAINT [FK_Pokemons_Categories]
GO
ALTER TABLE [dbo].[Pokemons]  WITH CHECK ADD  CONSTRAINT [FK_Pokemons_EffortValueYield] FOREIGN KEY([IdTotalEVs])
REFERENCES [dbo].[EffortValueYield] ([IdEffortValueYield])
GO
ALTER TABLE [dbo].[Pokemons] CHECK CONSTRAINT [FK_Pokemons_EffortValueYield]
GO
ALTER TABLE [dbo].[Pokemons]  WITH CHECK ADD  CONSTRAINT [FK_Pokemons_EvolutionFamilies] FOREIGN KEY([IdEvolutionFamily])
REFERENCES [dbo].[EvolutionFamilies] ([IdEvolutionFamily])
GO
ALTER TABLE [dbo].[Pokemons] CHECK CONSTRAINT [FK_Pokemons_EvolutionFamilies]
GO
ALTER TABLE [dbo].[Pokemons]  WITH CHECK ADD  CONSTRAINT [FK_Pokemons_Generations] FOREIGN KEY([IdGeneration])
REFERENCES [dbo].[Generations] ([IdGeneration])
GO
ALTER TABLE [dbo].[Pokemons] CHECK CONSTRAINT [FK_Pokemons_Generations]
GO
ALTER TABLE [dbo].[Pokemons]  WITH CHECK ADD  CONSTRAINT [FK_Pokemons_Habitats] FOREIGN KEY([IdHabitat])
REFERENCES [dbo].[Habitats] ([IdHabitat])
GO
ALTER TABLE [dbo].[Pokemons] CHECK CONSTRAINT [FK_Pokemons_Habitats]
GO
ALTER TABLE [dbo].[Pokemons]  WITH CHECK ADD  CONSTRAINT [FK_Pokemons_PokedexColor] FOREIGN KEY([IdPokedexColor])
REFERENCES [dbo].[PokedexColor] ([IdPokedexColor])
GO
ALTER TABLE [dbo].[Pokemons] CHECK CONSTRAINT [FK_Pokemons_PokedexColor]
GO
ALTER TABLE [dbo].[Pokemons]  WITH CHECK ADD  CONSTRAINT [FK_Pokemons_Regions] FOREIGN KEY([IdRegion])
REFERENCES [dbo].[Regions] ([IdRegion])
GO
ALTER TABLE [dbo].[Pokemons] CHECK CONSTRAINT [FK_Pokemons_Regions]
GO
ALTER TABLE [dbo].[Pokemons]  WITH CHECK ADD  CONSTRAINT [FK_Pokemons_Types] FOREIGN KEY([IdType])
REFERENCES [dbo].[Types] ([IdTypes])
GO
ALTER TABLE [dbo].[Pokemons] CHECK CONSTRAINT [FK_Pokemons_Types]
GO
ALTER TABLE [dbo].[Trainers]  WITH CHECK ADD  CONSTRAINT [FK_Trainers_Generations] FOREIGN KEY([IdGeneration])
REFERENCES [dbo].[Generations] ([IdGeneration])
GO
ALTER TABLE [dbo].[Trainers] CHECK CONSTRAINT [FK_Trainers_Generations]
GO
ALTER TABLE [dbo].[Trainers]  WITH CHECK ADD  CONSTRAINT [FK_Trainers_Regions] FOREIGN KEY([IdRegion])
REFERENCES [dbo].[Regions] ([IdRegion])
GO
ALTER TABLE [dbo].[Trainers] CHECK CONSTRAINT [FK_Trainers_Regions]
GO
ALTER TABLE [dbo].[Types]  WITH CHECK ADD  CONSTRAINT [FK_Types_Abilities] FOREIGN KEY([AbilityId])
REFERENCES [dbo].[Abilities] ([IdAbility])
GO
ALTER TABLE [dbo].[Types] CHECK CONSTRAINT [FK_Types_Abilities]
GO
USE [master]
GO
ALTER DATABASE [Pokemony] SET  READ_WRITE 
GO

INSERT INTO Types (IdTypes, Types, AbilityId, Weakness)
VALUES 
(1, 'Fire', 1, 'Water'),
(2, 'Water', 2, 'Electric'),
(3, 'Grass', 3, 'Fire'),

INSERT INTO Abilities (IdAbility, AbilityName, Ability, Generation, Weakness)
VALUES 
(1, 'Flame Body', 'Burns the opponent if it contacts them.', 1, 'Water'),
(2, 'Torrent', 'Powers up Water-type moves when the Pokémon has low HP.', 2, 'Electric'),
(3, 'Overgrow', 'Powers up Grass-type moves when the Pokémon has low HP.', 3, 'Fire'),

INSERT INTO Generations (IdGeneration, GenerationName, GenerationStart, GenerationEnd, PokemonNumber, IdGenerationsGame)
VALUES 
(1, 'Generation I', '1996-02-27', '1999-11-21', 151, 1),
(2, 'Generation II', '1999-11-21', '2002-11-21', 100, 2),
(3, 'Generation III', '2002-11-21', '2006-09-28', 135, 3),

INSERT INTO Pokemons (IdPokemon, NationalPokedexNumber, Name, IdCategory, IdType, IdAbility, CatchRate, HatchTime, [Height(cm)], [Weight(kg)], LevellingRate, BaseExp, IdPokedexColor, BaseFriendship, IdGeneration, EvolutionLevel, IdEvolutionFamily, IdTotalEVs, IdHabitat, IdRegion)
VALUES 
(1, '001', 'Bulbasaur', 1, 3, 3, 45, '5355 steps', 70.0, 6.9, 'Medium Slow', 64, 1, 70, 1, 16, 1, 1, 1),
(2, '004', 'Charmander', 1, 1, 1, 45, '5355 steps', 60.0, 8.5, 'Medium Slow', 65, 2, 70, 1, 16, 2, 1, 1),
(3, '007', 'Squirtle', 1, 2, 2, 45, '5355 steps', 50.0, 9.0, 'Medium Slow', 66, 3, 70, 1, 16, 3, 1, 1),
