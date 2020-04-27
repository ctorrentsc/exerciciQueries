-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Temps de generació: 27-04-2020 a les 11:08:12
-- Versió del servidor: 10.4.11-MariaDB
-- Versió de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `USAirlineFlights2`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `Flights`
--

CREATE TABLE `Flights` (
  `flightID` int(11) NOT NULL,
  `colYear` smallint(6) DEFAULT NULL,
  `colMonth` smallint(6) DEFAULT NULL,
  `DayOfMonths` smallint(6) DEFAULT NULL,
  `DayOfWeek` smallint(6) DEFAULT NULL,
  `DepTime` smallint(6) DEFAULT NULL,
  `CRSDepTime` smallint(6) DEFAULT NULL,
  `ArrTime` smallint(6) DEFAULT NULL,
  `CRSArrTime` smallint(6) DEFAULT NULL,
  `UniqueCarrier` varchar(32) DEFAULT NULL,
  `FlightNum` varchar(32) DEFAULT NULL,
  `TailNum` varchar(32) DEFAULT NULL,
  `ActualElapsedTime` smallint(6) DEFAULT NULL,
  `CRSElapsedTime` smallint(6) DEFAULT NULL,
  `AirTime` smallint(6) DEFAULT NULL,
  `ArrDelay` smallint(6) DEFAULT NULL,
  `DepDelay` smallint(6) DEFAULT NULL,
  `Origin` varchar(32) DEFAULT NULL,
  `Dest` varchar(32) DEFAULT NULL,
  `Distance` smallint(6) DEFAULT NULL,
  `TaxiIn` smallint(6) DEFAULT NULL,
  `TaxiOut` smallint(6) DEFAULT NULL,
  `Cancelled` tinyint(1) DEFAULT NULL,
  `CancellationCode` varchar(32) DEFAULT NULL,
  `Diverted` tinyint(1) DEFAULT NULL,
  `CarrierDelay` smallint(6) DEFAULT NULL,
  `WeatherDelay` smallint(6) DEFAULT NULL,
  `NASDelay` smallint(6) DEFAULT NULL,
  `SecurityDelay` smallint(6) DEFAULT NULL,
  `LateAircraftDelay` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `Flights`
--

INSERT INTO `Flights` (`total`) VALUES
(4758);

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `Flights`
--
ALTER TABLE `Flights`
  ADD PRIMARY KEY (`flightID`),
  ADD KEY `Dest` (`Dest`),
  ADD KEY `Origin` (`Origin`),
  ADD KEY `UniqueCarrier` (`UniqueCarrier`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `Flights`
--
ALTER TABLE `Flights`
  MODIFY `flightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4759;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `Flights`
--
ALTER TABLE `Flights`
  ADD CONSTRAINT `Flights_ibfk_1` FOREIGN KEY (`Dest`) REFERENCES `USAirports` (`IATA`),
  ADD CONSTRAINT `Flights_ibfk_2` FOREIGN KEY (`Origin`) REFERENCES `USAirports` (`IATA`),
  ADD CONSTRAINT `Flights_ibfk_3` FOREIGN KEY (`UniqueCarrier`) REFERENCES `Carriers` (`CarrierCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
