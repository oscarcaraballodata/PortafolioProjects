-- Review first table
-- SELECT *
--FROM dbo.['CovidDeaths']
--order by 3, 4

-- Review second table 
--SELECT *
--FROM dbo.['CovidVaccinations']
--order by 3, 4

-- Select Data we are going to use

SELECT location, date, total_cases, new_cases, total_deaths, population
FROM PortfolioProject..['CovidDeaths']
ORDER BY 1, 2

-- Looking at Total Cases vs Total Deaths

SELECT location, date, total_cases, total_deaths, 
(total_deaths / total_cases) * 100 as DeathPercentage
FROM PortfolioProject..['CovidDeaths']
ORDER BY 1, 2