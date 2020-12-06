-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2020 at 07:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dfinlay08`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `aircraft_model_id` int(11) NOT NULL,
  `aircraft_model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`aircraft_model_id`, `aircraft_model`) VALUES
(1, 'Airbus A319'),
(2, 'Airbus A320CEO'),
(3, 'Airbus A320NEO'),
(4, 'Airbus A321NEO');

-- --------------------------------------------------------

--
-- Table structure for table `aircraft_row_by_type`
--

CREATE TABLE `aircraft_row_by_type` (
  `aircraft_seat_row_id` int(11) NOT NULL,
  `aircraft_model_id` int(11) NOT NULL,
  `seat_row_number` int(4) NOT NULL,
  `seat_row_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircraft_row_by_type`
--

INSERT INTO `aircraft_row_by_type` (`aircraft_seat_row_id`, `aircraft_model_id`, `seat_row_number`, `seat_row_type_id`) VALUES
(5, 1, 1, 3),
(6, 1, 2, 2),
(7, 1, 3, 2),
(8, 1, 4, 1),
(9, 1, 5, 1),
(10, 1, 6, 1),
(12, 1, 7, 3),
(13, 1, 8, 3),
(14, 1, 9, 1),
(15, 1, 10, 1),
(20, 2, 1, 3),
(21, 2, 2, 2),
(22, 2, 3, 2),
(23, 2, 4, 1),
(24, 2, 5, 1),
(25, 2, 6, 3),
(26, 2, 7, 3),
(27, 2, 8, 1),
(28, 2, 9, 1),
(29, 2, 10, 1),
(30, 3, 1, 3),
(31, 3, 2, 2),
(32, 3, 3, 2),
(33, 3, 4, 1),
(34, 3, 5, 1),
(35, 3, 6, 3),
(36, 3, 7, 3),
(37, 3, 8, 1),
(38, 3, 9, 1),
(39, 3, 10, 1),
(40, 4, 1, 3),
(41, 4, 2, 2),
(43, 4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airport_id` int(11) NOT NULL,
  `airport_name` varchar(255) NOT NULL,
  `iata_location_code` varchar(3) NOT NULL,
  `airport_city_id` int(11) NOT NULL,
  `airport_latitude` decimal(10,8) NOT NULL,
  `airport_longitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_id`, `airport_name`, `iata_location_code`, `airport_city_id`, `airport_latitude`, `airport_longitude`) VALUES
(1, 'Belfast Intl', 'BFS', 1, '54.65631210', '-6.21933390'),
(2, 'London Luton', 'LTN', 2, '51.87626790', '-0.37393580'),
(3, 'London Stansted', 'STN', 2, '51.88602140', '0.23667740'),
(4, 'Edinburgh', 'EDI', 3, '55.95078800', '-3.36364190'),
(5, 'Berlin Brandenburg', 'BER', 6, '52.36443500', '13.50766560'),
(6, 'Dusseldorf', 'DUS', 7, '51.28761790', '6.76460250'),
(7, 'Paris Charles de Gaulle', 'CDG', 13, '49.01386360', '2.54033380'),
(8, 'Naples', 'NAP', 14, '40.88475330', '14.28705430'),
(9, 'Thessaloniki', 'SKG', 15, '40.52042680', '22.96948700'),
(10, 'London Gatwick', 'LGW', 2, '51.15366210', '-0.18425160');

-- --------------------------------------------------------

--
-- Table structure for table `allocated_seat_price`
--

CREATE TABLE `allocated_seat_price` (
  `flight_seat_price_id` int(11) NOT NULL,
  `seat_row_type_id` int(11) NOT NULL,
  `scheduled_flight_id` int(11) NOT NULL,
  `fare_type_id` int(11) NOT NULL,
  `allocated_seat_price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allocated_seat_price`
--

INSERT INTO `allocated_seat_price` (`flight_seat_price_id`, `seat_row_type_id`, `scheduled_flight_id`, `fare_type_id`, `allocated_seat_price`) VALUES
(1, 3, 3, 1, '21.99'),
(2, 2, 3, 1, '17.99'),
(3, 1, 3, 1, '4.99'),
(4, 3, 3, 2, '3.00'),
(5, 2, 3, 2, '0.00'),
(6, 1, 3, 2, '0.00'),
(7, 3, 18, 1, '22.49'),
(8, 2, 18, 1, '19.99'),
(9, 1, 18, 1, '6.99'),
(10, 1, 18, 2, '0.00'),
(11, 2, 18, 2, '0.00'),
(12, 3, 18, 2, '3.00'),
(13, 3, 20, 1, '22.49'),
(14, 2, 20, 1, '19.99'),
(15, 1, 20, 1, '6.99'),
(16, 3, 20, 2, '3.00'),
(17, 2, 20, 2, '0.00'),
(18, 1, 20, 2, '3.00');

-- --------------------------------------------------------

--
-- Table structure for table `baggage`
--

CREATE TABLE `baggage` (
  `baggage_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `baggage_type_id` int(11) NOT NULL,
  `baggage_quantity` int(4) NOT NULL,
  `bag_cost_by_booking` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baggage`
--

INSERT INTO `baggage` (`baggage_id`, `booking_id`, `baggage_type_id`, `baggage_quantity`, `bag_cost_by_booking`) VALUES
(10, 1, 1, 1, '0.00'),
(11, 1, 3, 2, '55.08'),
(12, 8, 1, 1, '0.00'),
(13, 8, 2, 2, '45.08');

-- --------------------------------------------------------

--
-- Table structure for table `baggage_price`
--

CREATE TABLE `baggage_price` (
  `baggage_price_id` int(11) NOT NULL,
  `baggage_type_id` int(11) NOT NULL,
  `scheduled_flight_id` int(11) NOT NULL,
  `baggage_price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baggage_price`
--

INSERT INTO `baggage_price` (`baggage_price_id`, `baggage_type_id`, `scheduled_flight_id`, `baggage_price`) VALUES
(1, 2, 3, '21.24'),
(2, 1, 3, '0.00'),
(3, 3, 3, '27.54'),
(4, 4, 3, '37.74'),
(5, 1, 20, '0.00'),
(6, 2, 20, '22.34'),
(7, 3, 20, '27.94'),
(8, 4, 20, '38.64'),
(9, 2, 18, '22.54'),
(10, 1, 18, '0.00'),
(11, 3, 18, '28.34'),
(12, 4, 18, '36.94');

-- --------------------------------------------------------

--
-- Table structure for table `baggage_type`
--

CREATE TABLE `baggage_type` (
  `baggage_type_id` int(11) NOT NULL,
  `baggage_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baggage_type`
--

INSERT INTO `baggage_type` (`baggage_type_id`, `baggage_type`) VALUES
(1, 'Cabin Bag'),
(2, 'Hold Luggage 15Kg'),
(3, 'Hold Luggage 23Kg'),
(4, 'Hold Luggage 26Kg');

-- --------------------------------------------------------

--
-- Table structure for table `booker`
--

CREATE TABLE `booker` (
  `booker_id` int(11) NOT NULL,
  `booker_title_id` int(11) DEFAULT NULL,
  `booker_firstname` varchar(255) DEFAULT NULL,
  `booker_lastname` varchar(255) DEFAULT NULL,
  `booker_email` varchar(255) DEFAULT NULL,
  `booker_password` varbinary(512) DEFAULT NULL,
  `booker_address1` varchar(255) DEFAULT NULL,
  `booker_address2` varchar(255) DEFAULT NULL,
  `booker_town_city` varchar(255) DEFAULT NULL,
  `booker_postcode_zip` varchar(255) DEFAULT NULL,
  `booker_country` varchar(255) DEFAULT NULL,
  `booker_dialcode` varchar(10) DEFAULT NULL,
  `booker_telephone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booker`
--

INSERT INTO `booker` (`booker_id`, `booker_title_id`, `booker_firstname`, `booker_lastname`, `booker_email`, `booker_password`, `booker_address1`, `booker_address2`, `booker_town_city`, `booker_postcode_zip`, `booker_country`, `booker_dialcode`, `booker_telephone`) VALUES
(1, 1, 'Giles', 'Crapulence', 'giles@crapulencefamily.net', 0xf6fee48563cc914948a35aabdb436114, 'Blight Farm', NULL, 'Nonkytoun', 'CR1 1AP', 'Plebslund', '+44', '7777777777'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 'Russell', 'Sprout', 'gasgiant@gmail.com', 0x675bfffdc56b4d35c0c5bb9a4d8f0b34, 'The Windmill', NULL, 'Portishead', 'CW1 1TW', 'Mitterlund', '+44', '12121212'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booker_id`) VALUES
(1, 1),
(4, 7),
(5, 8),
(8, 11),
(9, 11),
(10, 12),
(11, 13),
(12, 14),
(13, 15);

-- --------------------------------------------------------

--
-- Table structure for table `booking_line_item`
--

CREATE TABLE `booking_line_item` (
  `booking_line_item_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `line_item_type_id` int(11) NOT NULL,
  `line_item_amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_line_item`
--

INSERT INTO `booking_line_item` (`booking_line_item_id`, `booking_id`, `line_item_type_id`, `line_item_amount`) VALUES
(2, 1, 1, '583.94'),
(3, 1, 5, '87.96'),
(4, 1, 8, '110.16'),
(5, 1, 10, '180.00'),
(6, 1, 3, '36.00'),
(9, 8, 1, '495.92'),
(13, 8, 5, '117.92'),
(14, 8, 8, '90.16'),
(15, 8, 10, '148.00'),
(16, 8, 3, '36.00'),
(17, 13, 1, '545.92'),
(19, 13, 5, '159.92');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `card_details_id` int(11) NOT NULL,
  `booker_id` int(11) NOT NULL,
  `card_number` varbinary(512) NOT NULL,
  `cardholder_name` varbinary(512) NOT NULL,
  `card_expiry_date` varbinary(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`card_details_id`, `booker_id`, `card_number`, `cardholder_name`, `card_expiry_date`) VALUES
(2, 1, 0x4c3eb3e690b39e7de29e6c3cf391de06812cdcef5012ab976fc6ab8a3ea38b3f, 0x557ce37df0fe1854b016727317cd1074812cdcef5012ab976fc6ab8a3ea38b3f, 0x760db11267a221b23f0dd7f52a4e62fc),
(3, 11, 0xeae76d8eef6e77d852b9da990bd76c115b8991e947310dc133390ba4b65b3840, 0xcd102539dd77bc3dff686e70509e689d, 0x672f7281a6d5523de8d7c0a62eabe907);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city`, `country_id`) VALUES
(1, 'Belfast', 1),
(2, 'London', 1),
(3, 'Edinburgh', 1),
(6, 'Berlin', 2),
(7, 'Dusseldorf', 2),
(13, 'Paris', 3),
(14, 'Naples', 4),
(15, 'Thessaloniki', 5);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country`) VALUES
(3, 'France'),
(2, 'Germany'),
(5, 'Greece'),
(4, 'Italy'),
(1, 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `encryption_key`
--

CREATE TABLE `encryption_key` (
  `encryption_key_id` int(11) NOT NULL,
  `booker_id` int(11) NOT NULL,
  `key_by_booker` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `encryption_key`
--

INSERT INTO `encryption_key` (`encryption_key_id`, `booker_id`, `key_by_booker`) VALUES
(6, 1, 'mlqwms'),
(7, 11, 'omrckq');

-- --------------------------------------------------------

--
-- Table structure for table `fare_type`
--

CREATE TABLE `fare_type` (
  `fare_type_id` int(11) NOT NULL,
  `fare_type_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fare_type`
--

INSERT INTO `fare_type` (`fare_type_id`, `fare_type_name`) VALUES
(2, 'Flexi'),
(1, 'Standard');

-- --------------------------------------------------------

--
-- Table structure for table `fleet`
--

CREATE TABLE `fleet` (
  `fleet_id` int(11) NOT NULL,
  `aircraft_model_id` int(11) NOT NULL,
  `aircraft_serial` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fleet`
--

INSERT INTO `fleet` (`fleet_id`, `aircraft_model_id`, `aircraft_serial`) VALUES
(1, 1, 'A319-1023'),
(2, 1, 'A319-4728'),
(3, 2, 'A320-5733'),
(4, 2, 'A320-6594'),
(5, 3, 'A320-4830'),
(6, 4, 'A321-1332');

-- --------------------------------------------------------

--
-- Table structure for table `flight_seat_plan`
--

CREATE TABLE `flight_seat_plan` (
  `flight_seat_id` int(11) NOT NULL,
  `aircraft_seat_row_id` int(11) NOT NULL,
  `scheduled_flight_id` int(11) NOT NULL,
  `seat_column_letter` char(1) NOT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_seat_plan`
--

INSERT INTO `flight_seat_plan` (`flight_seat_id`, `aircraft_seat_row_id`, `scheduled_flight_id`, `seat_column_letter`, `booking_id`) VALUES
(1, 5, 3, 'A', 1),
(2, 5, 3, 'B', 1),
(3, 10, 3, 'F', 4),
(4, 10, 3, 'E', 4),
(5, 5, 3, 'C', 1),
(6, 5, 3, 'D', 1),
(11, 27, 8, 'E', 5),
(12, 27, 8, 'F', 5),
(19, 13, 18, 'C', 8),
(20, 13, 18, 'D', 8),
(21, 13, 18, 'E', 8),
(22, 13, 18, 'F', 8),
(27, 37, 20, 'A', 8),
(28, 37, 20, 'B', 8),
(29, 37, 20, 'C', 8),
(30, 37, 20, 'D', 8),
(35, 5, 18, 'A', 11),
(36, 5, 18, 'B', 11),
(37, 5, 18, 'F', 12),
(38, 8, 18, 'A', 1),
(39, 8, 18, 'B', 1),
(40, 8, 18, 'C', 1),
(41, 10, 18, 'D', 9),
(42, 10, 18, 'E', 9),
(43, 10, 18, 'A', 10),
(44, 10, 18, 'F', 9),
(45, 7, 18, 'A', 13),
(46, 7, 18, 'B', 13),
(47, 7, 18, 'C', 13),
(48, 7, 18, 'D', 13),
(61, 32, 20, 'A', 13),
(62, 32, 20, 'B', 13),
(63, 32, 20, 'C', 13),
(64, 32, 20, 'D', 13);

-- --------------------------------------------------------

--
-- Table structure for table `flight_ticket`
--

CREATE TABLE `flight_ticket` (
  `flight_ticket_id` int(11) NOT NULL,
  `scheduled_flight_id` int(11) NOT NULL,
  `fare_type_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `flight_cost_by_passenger` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_ticket`
--

INSERT INTO `flight_ticket` (`flight_ticket_id`, `scheduled_flight_id`, `fare_type_id`, `passenger_id`, `booking_id`, `flight_cost_by_passenger`) VALUES
(1, 3, 2, 1, 1, '80.99'),
(2, 3, 2, 2, 1, '80.99'),
(3, 3, 2, 3, 1, '60.99'),
(4, 3, 2, 4, 1, '25.00'),
(5, 3, 2, 5, 1, '25.00'),
(7, 20, 2, 1, 1, '98.99'),
(8, 20, 2, 2, 1, '98.99'),
(12, 20, 2, 3, 1, '62.99'),
(13, 20, 2, 4, 1, '25.00'),
(14, 20, 2, 5, 1, '25.00'),
(23, 18, 1, 8, 8, '56.99'),
(24, 18, 1, 9, 8, '56.99'),
(25, 18, 1, 10, 8, '43.99'),
(26, 18, 1, 11, 8, '43.99'),
(27, 18, 1, 12, 8, '25.00'),
(28, 20, 1, 8, 8, '69.99'),
(29, 20, 1, 9, 8, '69.99'),
(30, 20, 1, 10, 8, '51.99'),
(31, 20, 1, 11, 8, '51.99'),
(32, 20, 1, 12, 8, '25.00'),
(33, 18, 1, 1, 1, NULL),
(34, 18, 1, 2, 1, NULL),
(35, 18, 1, 3, 1, NULL),
(36, 18, 1, 4, 1, NULL),
(37, 18, 1, 13, 9, NULL),
(38, 18, 1, 14, 9, NULL),
(39, 18, 1, 15, 10, NULL),
(40, 18, 2, 16, 11, NULL),
(41, 18, 2, 17, 11, NULL),
(42, 18, 1, 18, 12, NULL),
(43, 18, 1, 19, 13, '56.99'),
(44, 20, 1, 19, 13, '69.99'),
(45, 18, 1, 20, 13, '56.99'),
(46, 20, 1, 20, 13, '69.99'),
(47, 18, 1, 21, 13, '43.99'),
(48, 20, 1, 21, 13, '51.99'),
(49, 18, 1, 22, 13, '43.99'),
(50, 20, 1, 22, 13, '51.99'),
(51, 18, 1, 23, 13, '25.00'),
(52, 20, 1, 23, 13, '25.00'),
(53, 18, 1, 24, 13, '25.00'),
(54, 20, 1, 24, 13, '25.00');

-- --------------------------------------------------------

--
-- Table structure for table `line_item_type`
--

CREATE TABLE `line_item_type` (
  `line_item_type_id` int(11) NOT NULL,
  `line_item_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `line_item_type`
--

INSERT INTO `line_item_type` (`line_item_type_id`, `line_item_desc`) VALUES
(5, 'Allocated Seating'),
(9, 'Charges and Fees'),
(1, 'Flights'),
(3, 'Food and Drink Vouchers'),
(8, 'Hold Items Baggage'),
(10, 'Hold Items Sports Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passenger_id` int(11) NOT NULL,
  `passenger_type_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `is_booker` tinyint(1) DEFAULT NULL,
  `passenger_title_id` int(11) DEFAULT NULL,
  `passenger_firstname` varchar(255) DEFAULT NULL,
  `passenger_lastname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passenger_id`, `passenger_type_id`, `booking_id`, `is_booker`, `passenger_title_id`, `passenger_firstname`, `passenger_lastname`) VALUES
(1, 1, 1, 1, 1, 'Giles', 'Crapulence'),
(2, 1, 1, NULL, 2, 'Margot', 'Crapulence'),
(3, 2, 1, NULL, 3, 'Beatrice', 'Crapulence'),
(4, 3, 1, NULL, 3, 'Lucilla', 'Crapulence'),
(5, 3, 1, NULL, NULL, 'De Pfeffle', 'Crapulence'),
(8, 1, 8, 1, 1, 'Russell', 'Sprout'),
(9, 1, 8, NULL, 2, 'Isadore', 'Sprout'),
(10, 2, 8, NULL, 3, 'Gemima', 'Sprout'),
(11, 2, 8, NULL, 1, 'Ptolemy', 'Sprout'),
(12, 3, 8, NULL, NULL, 'Bajoran', 'Sprout'),
(13, 1, 9, NULL, NULL, NULL, NULL),
(14, 1, 9, NULL, NULL, NULL, NULL),
(15, 1, 10, NULL, NULL, NULL, NULL),
(16, 1, 11, NULL, NULL, NULL, NULL),
(17, 2, 11, NULL, NULL, NULL, NULL),
(18, 1, 12, NULL, NULL, NULL, NULL),
(19, 1, 13, NULL, NULL, NULL, NULL),
(20, 1, 13, NULL, NULL, NULL, NULL),
(21, 2, 13, NULL, NULL, NULL, NULL),
(22, 2, 13, NULL, NULL, NULL, NULL),
(23, 3, 13, NULL, NULL, NULL, NULL),
(24, 3, 13, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passenger_title`
--

CREATE TABLE `passenger_title` (
  `passenger_title_id` int(11) NOT NULL,
  `passenger_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger_title`
--

INSERT INTO `passenger_title` (`passenger_title_id`, `passenger_title`) VALUES
(3, 'Miss'),
(1, 'Mr'),
(2, 'Mrs'),
(4, 'Ms');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_type`
--

CREATE TABLE `passenger_type` (
  `passenger_type_id` int(11) NOT NULL,
  `passenger_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger_type`
--

INSERT INTO `passenger_type` (`passenger_type_id`, `passenger_type`) VALUES
(1, 'Adult'),
(2, 'Child'),
(3, 'Infant');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `payment_amount` decimal(12,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time NOT NULL,
  `card_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `booking_id`, `payment_amount`, `payment_date`, `payment_time`, `card_details_id`) VALUES
(3, 1, '998.06', '2020-11-21', '13:42:53', 2),
(4, 8, '888.00', '2020-11-26', '15:52:08', 3);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL,
  `departure_airport_id` int(11) NOT NULL,
  `destination_airport_id` int(11) NOT NULL,
  `route_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `departure_airport_id`, `destination_airport_id`, `route_name`) VALUES
(3, 1, 2, 'Belfast Intl to London Luton'),
(4, 1, 3, 'Belfast Intl to London Stansted'),
(5, 1, 4, 'Belfast Intl to Edinburgh'),
(6, 1, 5, 'Belfast Intl to Berlin Brandenburg'),
(7, 1, 6, 'Belfast Intl to Dusseldorf'),
(8, 1, 9, 'Belfast Intl to Thessaloniki'),
(9, 2, 1, 'London Luton to Belfast Intl'),
(10, 3, 1, 'London Stansted to Belfast Intl'),
(11, 4, 1, 'Edinburgh to Belfast Intl'),
(12, 5, 1, 'Berlin Brandenburg to Belfast Intl'),
(13, 6, 1, 'Dusseldorf to Belfast Intl'),
(14, 9, 1, 'Thessaloniki to Belfast Intl'),
(15, 3, 8, 'London Stansted to Naples'),
(16, 8, 3, 'Naples to London Stansted'),
(17, 3, 5, 'London Stansted to Berlin Brandenburg'),
(18, 5, 3, 'Berlin Brandenburg to London Stansted'),
(20, 10, 1, 'London Gatwick to Belfast Intl'),
(21, 1, 10, 'Belfast Intl to London Gatwick'),
(22, 1, 7, 'Belfast Intl to Paris Charles de Gaulle'),
(23, 7, 1, 'Paris Charles de Gaulle to Belfast Intl');

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_flight`
--

CREATE TABLE `scheduled_flight` (
  `scheduled_flight_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `flight_designator` varchar(20) NOT NULL,
  `takeoff_date` date NOT NULL,
  `takeoff_time` time NOT NULL,
  `fleet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduled_flight`
--

INSERT INTO `scheduled_flight` (`scheduled_flight_id`, `route_id`, `flight_designator`, `takeoff_date`, `takeoff_time`, `fleet_id`) VALUES
(3, 6, 'EZY1234', '2020-12-13', '06:30:00', 2),
(4, 6, 'EZY1827', '2020-12-13', '12:00:00', 1),
(5, 6, 'EZY4738', '2020-12-13', '17:00:00', 1),
(6, 6, 'EZY1234', '2020-12-14', '16:00:00', 3),
(7, 6, 'EZY5305', '2020-12-18', '16:00:00', 1),
(8, 6, 'EZY7453', '2020-12-20', '16:00:00', 4),
(9, 6, 'EZY6399', '2020-12-22', '16:00:00', 1),
(10, 6, 'EZY7453', '2020-12-24', '06:30:00', 5),
(11, 6, 'EZY1234', '2020-12-28', '16:00:00', 1),
(12, 12, 'EZY9563', '2020-12-13', '10:20:00', 6),
(13, 12, 'EZY2643', '2020-12-14', '18:45:00', 5),
(14, 12, 'EZY9563', '2020-12-14', '18:45:00', 4),
(15, 12, 'EZY6464', '2020-12-20', '10:00:00', 2),
(16, 6, 'EZY2255', '2021-01-10', '16:00:00', 1),
(17, 6, 'EZY2323', '2021-02-15', '08:45:00', 2),
(18, 6, 'EZY5577', '2020-12-20', '10:00:00', 2),
(19, 6, 'EZY5577', '2020-12-20', '06:30:00', 1),
(20, 12, 'EZY5578', '2020-12-28', '12:15:00', 5),
(21, 6, 'EZY2255', '2020-12-12', '12:20:00', 5),
(22, 6, 'EZY6464', '2020-12-10', '14:30:00', 3),
(23, 6, 'EZY5305', '2020-12-21', '14:30:00', 1),
(24, 6, 'EZY2255', '2020-12-18', '06:30:00', 2),
(25, 12, 'EZY4466', '2020-12-27', '17:25:00', 5),
(26, 12, 'EZY4465', '2020-12-26', '14:30:00', 3),
(27, 12, 'EZY4466', '2020-12-27', '12:45:00', 1),
(28, 12, 'EZY4422', '2020-12-26', '12:45:00', 5),
(29, 12, 'EZY4466', '2020-12-29', '08:30:00', 2),
(30, 12, 'EZY4465', '2020-12-30', '06:45:00', 5),
(31, 6, 'EZY2244', '2020-12-27', '14:35:00', 2),
(32, 6, 'EZY4422', '2021-01-12', '14:40:00', 2),
(33, 6, 'EZY6464', '2021-01-17', '09:45:00', 4),
(34, 6, 'EZY3535', '2020-11-29', '13:20:00', 1),
(35, 6, 'EZY6464', '2020-11-30', '09:45:00', 3),
(36, 6, 'EZY3535', '2020-01-05', '15:45:00', 1),
(37, 6, 'EZY6464', '2020-01-06', '19:45:00', 3),
(38, 12, 'EZY4455', '2020-11-30', '10:30:00', 3),
(39, 12, 'EZY4455', '2021-01-08', '12:45:00', 5),
(40, 12, 'EZY4455', '2020-11-10', '14:20:00', 3),
(41, 12, 'EZY4455', '2020-11-12', '12:45:00', 1),
(42, 12, 'EZY2266', '2021-01-02', '15:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_flight_fare`
--

CREATE TABLE `scheduled_flight_fare` (
  `scheduled_flight_fare_id` int(11) NOT NULL,
  `scheduled_flight_id` int(11) NOT NULL,
  `passenger_type_id` int(11) NOT NULL,
  `fare_type_id` int(11) NOT NULL,
  `scheduled_flight_fare` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduled_flight_fare`
--

INSERT INTO `scheduled_flight_fare` (`scheduled_flight_fare_id`, `scheduled_flight_id`, `passenger_type_id`, `fare_type_id`, `scheduled_flight_fare`) VALUES
(4, 3, 1, 1, '45.99'),
(5, 3, 1, 2, '80.99'),
(6, 3, 2, 1, '35.99'),
(7, 3, 2, 2, '60.99'),
(8, 3, 3, 1, '25.00'),
(9, 3, 3, 2, '25.00'),
(10, 15, 1, 1, '38.99'),
(11, 15, 1, 2, '98.99'),
(12, 15, 2, 1, '28.99'),
(13, 15, 2, 2, '91.99'),
(14, 15, 3, 1, '25.00'),
(15, 15, 3, 2, '25.00'),
(16, 7, 1, 1, '46.99'),
(17, 7, 1, 2, '126.99'),
(18, 8, 1, 1, '48.99'),
(19, 8, 1, 2, '128.99'),
(20, 18, 1, 1, '56.99'),
(21, 18, 1, 2, '146.99'),
(22, 19, 1, 1, '67.99'),
(23, 19, 1, 2, '157.99'),
(24, 9, 1, 1, '98.99'),
(25, 9, 1, 2, '178.99'),
(26, 20, 1, 1, '69.99'),
(27, 20, 1, 2, '98.99'),
(28, 20, 2, 1, '51.99'),
(29, 20, 2, 2, '62.99'),
(30, 20, 3, 1, '25.00'),
(31, 20, 3, 2, '25.00'),
(32, 21, 1, 1, '40.99'),
(33, 22, 1, 1, '38.99'),
(34, 25, 1, 1, '69.99'),
(35, 25, 1, 2, '124.99'),
(36, 26, 1, 1, '70.99'),
(37, 26, 1, 2, '127.99'),
(38, 27, 1, 1, '70.99'),
(39, 27, 1, 2, '127.99'),
(40, 28, 1, 1, '75.99'),
(41, 28, 1, 2, '135.99'),
(42, 29, 1, 1, '83.99'),
(43, 29, 1, 2, '158.99'),
(44, 30, 1, 1, '89.99'),
(45, 30, 1, 2, '161.99'),
(46, 31, 1, 1, '84.99'),
(47, 31, 1, 2, '134.99'),
(48, 18, 2, 1, '43.99'),
(49, 18, 2, 2, '124.99'),
(50, 18, 3, 1, '25.00'),
(51, 18, 3, 2, '25.00'),
(52, 17, 1, 1, '45.99'),
(53, 32, 1, 1, '47.99'),
(54, 33, 1, 1, '45.99'),
(55, 42, 1, 1, '89.99'),
(56, 42, 1, 2, '167.99');

-- --------------------------------------------------------

--
-- Table structure for table `seat_row_type`
--

CREATE TABLE `seat_row_type` (
  `seat_row_type_id` int(11) NOT NULL,
  `seat_row_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat_row_type`
--

INSERT INTO `seat_row_type` (`seat_row_type_id`, `seat_row_type_name`) VALUES
(3, 'Extra Legroom'),
(1, 'Standard'),
(2, 'Up Front');

-- --------------------------------------------------------

--
-- Table structure for table `sports_equipment`
--

CREATE TABLE `sports_equipment` (
  `equipment_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `equipment_type_id` int(11) NOT NULL,
  `equipment_quantity` int(4) NOT NULL,
  `eq_cost_by_booking` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_equipment`
--

INSERT INTO `sports_equipment` (`equipment_id`, `booking_id`, `equipment_type_id`, `equipment_quantity`, `eq_cost_by_booking`) VALUES
(4, 1, 6, 2, '90.00'),
(5, 8, 3, 2, '74.00');

-- --------------------------------------------------------

--
-- Table structure for table `sports_equipment_category`
--

CREATE TABLE `sports_equipment_category` (
  `equipment_category_id` int(11) NOT NULL,
  `equipment_category` varchar(255) NOT NULL,
  `equipment_price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_equipment_category`
--

INSERT INTO `sports_equipment_category` (`equipment_category_id`, `equipment_category`, `equipment_price`) VALUES
(1, 'Small Sports Equipment', '37.00'),
(2, 'Large Sports Equipment', '45.00');

-- --------------------------------------------------------

--
-- Table structure for table `sports_equipment_type`
--

CREATE TABLE `sports_equipment_type` (
  `equipment_type_id` int(11) NOT NULL,
  `equipment_category_id` int(11) NOT NULL,
  `equipment_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_equipment_type`
--

INSERT INTO `sports_equipment_type` (`equipment_type_id`, `equipment_category_id`, `equipment_type`) VALUES
(1, 1, 'Sporting firearm'),
(2, 1, 'Skis and/or boots'),
(3, 1, 'Snowboard'),
(4, 1, 'Golf bag'),
(5, 1, 'Other small sports equipment'),
(6, 2, 'Bicycle'),
(7, 2, 'Canoe'),
(8, 2, 'Hang glider'),
(9, 2, 'Windsurfing board');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_food_drink`
--

CREATE TABLE `voucher_food_drink` (
  `voucher_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `voucher_price_id` int(11) NOT NULL,
  `voucher_quantity` int(4) NOT NULL,
  `vch_cost_by_booking` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_food_drink`
--

INSERT INTO `voucher_food_drink` (`voucher_id`, `booking_id`, `voucher_price_id`, `voucher_quantity`, `vch_cost_by_booking`) VALUES
(2, 1, 2, 2, '12.00'),
(3, 1, 4, 1, '12.00'),
(4, 8, 2, 2, '12.00'),
(5, 8, 4, 1, '12.00');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_price`
--

CREATE TABLE `voucher_price` (
  `voucher_price_id` int(11) NOT NULL,
  `passenger_type_id` int(11) NOT NULL,
  `voucher_booking_type` varchar(255) NOT NULL,
  `voucher_price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_price`
--

INSERT INTO `voucher_price` (`voucher_price_id`, `passenger_type_id`, `voucher_booking_type`, `voucher_price`) VALUES
(1, 1, 'Standard', '7.50'),
(2, 1, 'Discount', '6.00'),
(3, 2, 'Standard', '7.50'),
(4, 2, 'Discount', '6.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`aircraft_model_id`);

--
-- Indexes for table `aircraft_row_by_type`
--
ALTER TABLE `aircraft_row_by_type`
  ADD PRIMARY KEY (`aircraft_seat_row_id`),
  ADD UNIQUE KEY `unique_model_row` (`aircraft_model_id`,`seat_row_number`) USING BTREE,
  ADD KEY `fk_aircraft_row_type_modelid` (`aircraft_model_id`) USING BTREE,
  ADD KEY `fk_aircraft_row_type_seattypeid` (`seat_row_type_id`) USING BTREE;

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_id`),
  ADD UNIQUE KEY `airport_name` (`airport_name`),
  ADD UNIQUE KEY `iata_location_code` (`iata_location_code`),
  ADD KEY `fk_airport_cityid` (`airport_city_id`) USING BTREE;

--
-- Indexes for table `allocated_seat_price`
--
ALTER TABLE `allocated_seat_price`
  ADD PRIMARY KEY (`flight_seat_price_id`),
  ADD KEY `fk_all_seat_price_seatrtid` (`seat_row_type_id`),
  ADD KEY `fk_all_seat_price_schedflightid` (`scheduled_flight_id`),
  ADD KEY `fk_all_seat_price__faretypeid` (`fare_type_id`);

--
-- Indexes for table `baggage`
--
ALTER TABLE `baggage`
  ADD PRIMARY KEY (`baggage_id`),
  ADD KEY `fk_baggage_bookid` (`booking_id`),
  ADD KEY `fk_baggage_typeid` (`baggage_type_id`);

--
-- Indexes for table `baggage_price`
--
ALTER TABLE `baggage_price`
  ADD PRIMARY KEY (`baggage_price_id`),
  ADD KEY `fk_bag_price_bagtypeid` (`baggage_type_id`),
  ADD KEY `fk_bag_price_schedflightid` (`scheduled_flight_id`);

--
-- Indexes for table `baggage_type`
--
ALTER TABLE `baggage_type`
  ADD PRIMARY KEY (`baggage_type_id`),
  ADD UNIQUE KEY `baggage_type` (`baggage_type`);

--
-- Indexes for table `booker`
--
ALTER TABLE `booker`
  ADD PRIMARY KEY (`booker_id`),
  ADD UNIQUE KEY `booker_email` (`booker_email`),
  ADD KEY `fk_booker_titleid` (`booker_title_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `fk_booking_bookerid` (`booker_id`);

--
-- Indexes for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD PRIMARY KEY (`booking_line_item_id`),
  ADD UNIQUE KEY `unique_booking_lineitem` (`booking_id`,`line_item_type_id`) USING BTREE,
  ADD KEY `fk_line_item_typeid` (`line_item_type_id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`card_details_id`),
  ADD UNIQUE KEY `card_number` (`card_number`),
  ADD KEY `fk_card_bookerid` (`booker_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `city` (`city`),
  ADD KEY `fk_country` (`country_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country` (`country`);

--
-- Indexes for table `encryption_key`
--
ALTER TABLE `encryption_key`
  ADD PRIMARY KEY (`encryption_key_id`),
  ADD KEY `fk_encryption_bookerid` (`booker_id`);

--
-- Indexes for table `fare_type`
--
ALTER TABLE `fare_type`
  ADD PRIMARY KEY (`fare_type_id`),
  ADD UNIQUE KEY `fare_type_name` (`fare_type_name`);

--
-- Indexes for table `fleet`
--
ALTER TABLE `fleet`
  ADD PRIMARY KEY (`fleet_id`),
  ADD UNIQUE KEY `aircraft_serial` (`aircraft_serial`),
  ADD KEY `fk_fleet_model` (`aircraft_model_id`);

--
-- Indexes for table `flight_seat_plan`
--
ALTER TABLE `flight_seat_plan`
  ADD PRIMARY KEY (`flight_seat_id`),
  ADD UNIQUE KEY `unique_seat_on_flight` (`aircraft_seat_row_id`,`scheduled_flight_id`,`seat_column_letter`) USING BTREE,
  ADD KEY `fk_flight_seatplan_flightid` (`scheduled_flight_id`),
  ADD KEY `fk_flight_seatplan_bookid` (`booking_id`),
  ADD KEY `aircraft_seat_row_id` (`aircraft_seat_row_id`) USING BTREE;

--
-- Indexes for table `flight_ticket`
--
ALTER TABLE `flight_ticket`
  ADD PRIMARY KEY (`flight_ticket_id`),
  ADD KEY `fk_ticket_faretypeid` (`fare_type_id`),
  ADD KEY `fk_ticket_schedflightid` (`scheduled_flight_id`),
  ADD KEY `fk_ticket_passengerid` (`passenger_id`),
  ADD KEY `fk_ticket_bookid` (`booking_id`);

--
-- Indexes for table `line_item_type`
--
ALTER TABLE `line_item_type`
  ADD PRIMARY KEY (`line_item_type_id`),
  ADD UNIQUE KEY `line_item_desc` (`line_item_desc`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `fk_passenger_typeid` (`passenger_type_id`),
  ADD KEY `fk_passenger_titleid` (`passenger_title_id`),
  ADD KEY `fk_passenger_bookid` (`booking_id`);

--
-- Indexes for table `passenger_title`
--
ALTER TABLE `passenger_title`
  ADD PRIMARY KEY (`passenger_title_id`),
  ADD UNIQUE KEY `passenger_title` (`passenger_title`);

--
-- Indexes for table `passenger_type`
--
ALTER TABLE `passenger_type`
  ADD PRIMARY KEY (`passenger_type_id`),
  ADD UNIQUE KEY `passenger_type` (`passenger_type`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `fk_payment_cardid` (`card_details_id`),
  ADD KEY `fk_payment_bookingid` (`booking_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`),
  ADD UNIQUE KEY `unique_route` (`departure_airport_id`,`destination_airport_id`) USING BTREE,
  ADD KEY `fk_airport2` (`destination_airport_id`);

--
-- Indexes for table `scheduled_flight`
--
ALTER TABLE `scheduled_flight`
  ADD PRIMARY KEY (`scheduled_flight_id`),
  ADD KEY `fk_scheduled_fleetno` (`fleet_id`),
  ADD KEY `fk_scheduled_routeid` (`route_id`);

--
-- Indexes for table `scheduled_flight_fare`
--
ALTER TABLE `scheduled_flight_fare`
  ADD PRIMARY KEY (`scheduled_flight_fare_id`),
  ADD KEY `fk_sch_flight_schflid` (`scheduled_flight_id`),
  ADD KEY `fk_sch_flight_faretypeid` (`fare_type_id`),
  ADD KEY `fk_sch_flight_paxtypeid` (`passenger_type_id`);

--
-- Indexes for table `seat_row_type`
--
ALTER TABLE `seat_row_type`
  ADD PRIMARY KEY (`seat_row_type_id`),
  ADD UNIQUE KEY `seat_row_type_name` (`seat_row_type_name`);

--
-- Indexes for table `sports_equipment`
--
ALTER TABLE `sports_equipment`
  ADD PRIMARY KEY (`equipment_id`),
  ADD KEY `fk_sportseq_bookid` (`booking_id`),
  ADD KEY `fk_sportseq_typid` (`equipment_type_id`);

--
-- Indexes for table `sports_equipment_category`
--
ALTER TABLE `sports_equipment_category`
  ADD PRIMARY KEY (`equipment_category_id`),
  ADD UNIQUE KEY `equipment_category` (`equipment_category`);

--
-- Indexes for table `sports_equipment_type`
--
ALTER TABLE `sports_equipment_type`
  ADD PRIMARY KEY (`equipment_type_id`),
  ADD KEY `fk_eq_type_categoryid` (`equipment_category_id`);

--
-- Indexes for table `voucher_food_drink`
--
ALTER TABLE `voucher_food_drink`
  ADD PRIMARY KEY (`voucher_id`),
  ADD KEY `fk_voucher_bookid` (`booking_id`),
  ADD KEY `fk_voucher_priceid` (`voucher_price_id`);

--
-- Indexes for table `voucher_price`
--
ALTER TABLE `voucher_price`
  ADD PRIMARY KEY (`voucher_price_id`),
  ADD KEY `fk_voucher_paxtype` (`passenger_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aircraft`
--
ALTER TABLE `aircraft`
  MODIFY `aircraft_model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aircraft_row_by_type`
--
ALTER TABLE `aircraft_row_by_type`
  MODIFY `aircraft_seat_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `allocated_seat_price`
--
ALTER TABLE `allocated_seat_price`
  MODIFY `flight_seat_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `baggage`
--
ALTER TABLE `baggage`
  MODIFY `baggage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `baggage_price`
--
ALTER TABLE `baggage_price`
  MODIFY `baggage_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `baggage_type`
--
ALTER TABLE `baggage_type`
  MODIFY `baggage_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booker`
--
ALTER TABLE `booker`
  MODIFY `booker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  MODIFY `booking_line_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `card_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `encryption_key`
--
ALTER TABLE `encryption_key`
  MODIFY `encryption_key_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fare_type`
--
ALTER TABLE `fare_type`
  MODIFY `fare_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fleet`
--
ALTER TABLE `fleet`
  MODIFY `fleet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `flight_seat_plan`
--
ALTER TABLE `flight_seat_plan`
  MODIFY `flight_seat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `flight_ticket`
--
ALTER TABLE `flight_ticket`
  MODIFY `flight_ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `line_item_type`
--
ALTER TABLE `line_item_type`
  MODIFY `line_item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `passenger_title`
--
ALTER TABLE `passenger_title`
  MODIFY `passenger_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `passenger_type`
--
ALTER TABLE `passenger_type`
  MODIFY `passenger_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `scheduled_flight`
--
ALTER TABLE `scheduled_flight`
  MODIFY `scheduled_flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `scheduled_flight_fare`
--
ALTER TABLE `scheduled_flight_fare`
  MODIFY `scheduled_flight_fare_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `seat_row_type`
--
ALTER TABLE `seat_row_type`
  MODIFY `seat_row_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sports_equipment`
--
ALTER TABLE `sports_equipment`
  MODIFY `equipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sports_equipment_category`
--
ALTER TABLE `sports_equipment_category`
  MODIFY `equipment_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sports_equipment_type`
--
ALTER TABLE `sports_equipment_type`
  MODIFY `equipment_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `voucher_food_drink`
--
ALTER TABLE `voucher_food_drink`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voucher_price`
--
ALTER TABLE `voucher_price`
  MODIFY `voucher_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aircraft_row_by_type`
--
ALTER TABLE `aircraft_row_by_type`
  ADD CONSTRAINT `fk_row_type_model` FOREIGN KEY (`aircraft_model_id`) REFERENCES `aircraft` (`aircraft_model_id`),
  ADD CONSTRAINT `fk_row_type_seattype` FOREIGN KEY (`seat_row_type_id`) REFERENCES `seat_row_type` (`seat_row_type_id`);

--
-- Constraints for table `airport`
--
ALTER TABLE `airport`
  ADD CONSTRAINT `fk_city` FOREIGN KEY (`airport_city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `allocated_seat_price`
--
ALTER TABLE `allocated_seat_price`
  ADD CONSTRAINT `fk_all_seat_price__faretypeid` FOREIGN KEY (`fare_type_id`) REFERENCES `fare_type` (`fare_type_id`),
  ADD CONSTRAINT `fk_all_seat_price_schedflightid` FOREIGN KEY (`scheduled_flight_id`) REFERENCES `scheduled_flight` (`scheduled_flight_id`),
  ADD CONSTRAINT `fk_all_seat_price_seatrtid` FOREIGN KEY (`seat_row_type_id`) REFERENCES `seat_row_type` (`seat_row_type_id`);

--
-- Constraints for table `baggage`
--
ALTER TABLE `baggage`
  ADD CONSTRAINT `fk_baggage_bookid` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `fk_baggage_typeid` FOREIGN KEY (`baggage_type_id`) REFERENCES `baggage_type` (`baggage_type_id`);

--
-- Constraints for table `baggage_price`
--
ALTER TABLE `baggage_price`
  ADD CONSTRAINT `fk_bag_price_bagtypeid` FOREIGN KEY (`baggage_type_id`) REFERENCES `baggage_type` (`baggage_type_id`),
  ADD CONSTRAINT `fk_bag_price_schedflightid` FOREIGN KEY (`scheduled_flight_id`) REFERENCES `scheduled_flight` (`scheduled_flight_id`);

--
-- Constraints for table `booker`
--
ALTER TABLE `booker`
  ADD CONSTRAINT `fk_booker_titleid` FOREIGN KEY (`booker_title_id`) REFERENCES `passenger_title` (`passenger_title_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fk_booking_bookerid` FOREIGN KEY (`booker_id`) REFERENCES `booker` (`booker_id`);

--
-- Constraints for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD CONSTRAINT `fk_line_item_bookid` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `fk_line_item_typeid` FOREIGN KEY (`line_item_type_id`) REFERENCES `line_item_type` (`line_item_type_id`);

--
-- Constraints for table `card_details`
--
ALTER TABLE `card_details`
  ADD CONSTRAINT `fk_card_bookerid` FOREIGN KEY (`booker_id`) REFERENCES `booker` (`booker_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `encryption_key`
--
ALTER TABLE `encryption_key`
  ADD CONSTRAINT `fk_encryption_bookerid` FOREIGN KEY (`booker_id`) REFERENCES `booker` (`booker_id`);

--
-- Constraints for table `fleet`
--
ALTER TABLE `fleet`
  ADD CONSTRAINT `fk_fleet_model` FOREIGN KEY (`aircraft_model_id`) REFERENCES `aircraft` (`aircraft_model_id`);

--
-- Constraints for table `flight_seat_plan`
--
ALTER TABLE `flight_seat_plan`
  ADD CONSTRAINT `fk_flight_seatplan_bookid` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `fk_flight_seatplan_flightid` FOREIGN KEY (`scheduled_flight_id`) REFERENCES `scheduled_flight` (`scheduled_flight_id`),
  ADD CONSTRAINT `fk_flight_seatplan_rowid` FOREIGN KEY (`aircraft_seat_row_id`) REFERENCES `aircraft_row_by_type` (`aircraft_seat_row_id`);

--
-- Constraints for table `flight_ticket`
--
ALTER TABLE `flight_ticket`
  ADD CONSTRAINT `fk_ticket_bookid` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `fk_ticket_faretypeid` FOREIGN KEY (`fare_type_id`) REFERENCES `fare_type` (`fare_type_id`),
  ADD CONSTRAINT `fk_ticket_passengerid` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`passenger_id`),
  ADD CONSTRAINT `fk_ticket_schedflightid` FOREIGN KEY (`scheduled_flight_id`) REFERENCES `scheduled_flight` (`scheduled_flight_id`);

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `fk_passenger_bookid` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `fk_passenger_titleid` FOREIGN KEY (`passenger_title_id`) REFERENCES `passenger_title` (`passenger_title_id`),
  ADD CONSTRAINT `fk_passenger_typeid` FOREIGN KEY (`passenger_type_id`) REFERENCES `passenger_type` (`passenger_type_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_bookingid` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `fk_payment_cardid` FOREIGN KEY (`card_details_id`) REFERENCES `card_details` (`card_details_id`);

--
-- Constraints for table `route`
--
ALTER TABLE `route`
  ADD CONSTRAINT `fk_airport1` FOREIGN KEY (`departure_airport_id`) REFERENCES `airport` (`airport_id`),
  ADD CONSTRAINT `fk_airport2` FOREIGN KEY (`destination_airport_id`) REFERENCES `airport` (`airport_id`);

--
-- Constraints for table `scheduled_flight`
--
ALTER TABLE `scheduled_flight`
  ADD CONSTRAINT `fk_scheduled_fleetno` FOREIGN KEY (`fleet_id`) REFERENCES `fleet` (`fleet_id`),
  ADD CONSTRAINT `fk_scheduled_routeid` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`);

--
-- Constraints for table `scheduled_flight_fare`
--
ALTER TABLE `scheduled_flight_fare`
  ADD CONSTRAINT `fk_sch_flight_faretypeid` FOREIGN KEY (`fare_type_id`) REFERENCES `fare_type` (`fare_type_id`),
  ADD CONSTRAINT `fk_sch_flight_paxtypeid` FOREIGN KEY (`passenger_type_id`) REFERENCES `passenger_type` (`passenger_type_id`),
  ADD CONSTRAINT `fk_sch_flight_schflid` FOREIGN KEY (`scheduled_flight_id`) REFERENCES `scheduled_flight` (`scheduled_flight_id`);

--
-- Constraints for table `sports_equipment`
--
ALTER TABLE `sports_equipment`
  ADD CONSTRAINT `fk_sportseq_bookid` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `fk_sportseq_typid` FOREIGN KEY (`equipment_type_id`) REFERENCES `sports_equipment_type` (`equipment_type_id`);

--
-- Constraints for table `sports_equipment_type`
--
ALTER TABLE `sports_equipment_type`
  ADD CONSTRAINT `fk_eq_type_categoryid` FOREIGN KEY (`equipment_category_id`) REFERENCES `sports_equipment_category` (`equipment_category_id`);

--
-- Constraints for table `voucher_food_drink`
--
ALTER TABLE `voucher_food_drink`
  ADD CONSTRAINT `fk_voucher_bookid` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `fk_voucher_priceid` FOREIGN KEY (`voucher_price_id`) REFERENCES `voucher_price` (`voucher_price_id`);

--
-- Constraints for table `voucher_price`
--
ALTER TABLE `voucher_price`
  ADD CONSTRAINT `fk_voucher_paxtype` FOREIGN KEY (`passenger_type_id`) REFERENCES `passenger_type` (`passenger_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
