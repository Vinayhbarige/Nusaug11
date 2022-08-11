-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 08:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nusaug`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientcompanydata`
--

CREATE TABLE `clientcompanydata` (
  `id` int(11) NOT NULL,
  `parentcompany` varchar(255) NOT NULL,
  `clientcompany` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientcompanydata`
--

INSERT INTO `clientcompanydata` (`id`, `parentcompany`, `clientcompany`, `country`) VALUES
(3, 'Qualesce', 'NUS Consulting Group', 'India'),
(4, 'Qualesce', 'Ji Solutions', 'Canada'),
(5, 'Ji Inc', 'Ji Trips', 'United Arab'),
(6, 'Shell Global', 'Shell UK', 'United Kingdom'),
(7, 'Shell Global', 'ABC', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `nususerdata`
--

CREATE TABLE `nususerdata` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `emailId` varchar(100) NOT NULL,
  `accountstatus` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `parentcompany` varchar(100) NOT NULL,
  `bussinessunit` varchar(255) NOT NULL,
  `active` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nususerdata`
--

INSERT INTO `nususerdata` (`id`, `role`, `username`, `emailId`, `accountstatus`, `password`, `parentcompany`, `bussinessunit`, `active`) VALUES
(62, 'Admin', 'Admin', 'admin@nusconsulting.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$a085aUQyc3hKdHFSMllyQQ$bKQT8rWb/gTK6IOlavJ1BWa0mpMzrcQ9pQjfXAMBVP0', '', '', 'Active'),
(63, 'Admin', 'v', 'v@gmail.com', 'Invited', '$argon2i$v=19$m=65536,t=4,p=1$WkNvR0ROd3JOQlNKNlM1Uw$/f9JUovy2ERSfPba5lVsFJJi2/ka+cfkKr3udMesVjo', '', '', 'Inactive'),
(65, 'Parent company', 'Parent', 'parent@nusconsulting.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$ZVF2bWVHbndOd3ZBS1l0OQ$6FLYvPsDYAu+eJDQ/j8cShyTjR8TD2GcCKNWse66NFM', 'Qualesce', '', 'Active'),
(66, 'Client company', 'client', 'client@nusconsultinggroup.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$SXVCOHVoNE03RDRwOHpncw$7ue2HcaSrIiMliv3iniew2Ab6vSn5tLdEkigPBgjOmc', 'Qualesce', 'NUS Consulting Group ', 'Active'),
(68, 'Admin', 'Vijay', 'vijaygowda@gmail.com', 'Invited', '$argon2i$v=19$m=65536,t=4,p=1$T09zV2dlWFc5dzV3ZnNPSw$lN7xSsoznIKxEQAL9DtaCXoI74nqtSVeNXoThEj1ilA', '', '', 'Active'),
(69, 'Admin', 'Balaji', 'balaji.s@qualesce.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$dmZiLzM5RDBBZDYvYnNmeg$e/Sc0cDJ5vBFesyPq/aTJYduq6DIXsIbnAeDltbZg+k', '', '', 'Active'),
(70, 'Client company', 'DemoClient', 'client@qualesce.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$UTh1aTRTVTFTbEEwdHAwZw$/F3dOIkIHpJrGyMvep9MXuVKY5pgh1HmCruUaxFmGQ4', 'Ji Inc', 'Ji Solutions ', 'Active'),
(71, 'Client company', 'abc', 'abc@gmail.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$R25wY3o5NXF1aDd5QWtlbQ$+5LutOVX1w945xWiiEDAbcXEyoE91Qjc2S9eFC2aztk', 'Shell Global', 'Ji Solutions ', 'Active'),
(72, 'Parent company', 'Pp', 'pp@one.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$Q0NIVDVJV3dWZkNlZzN4dA$V98k9KP7DVM23P5HTmtRzbP+QMque6QI5+UVbq5AJNI', 'Shell Global', '', 'Active'),
(73, 'Client company', 'abd', 'abd@gmail.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$LnBZamFHRkxEQjV2ejdvMw$tsCI3EnB/5Am95cH5sAsZ8+DYU/whb4ze+4GHQmrfVs', 'Shell Global', 'Ji Solutions', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `nus_countries`
--

CREATE TABLE `nus_countries` (
  `countryId` int(11) NOT NULL,
  `countryName` varchar(255) NOT NULL,
  `addedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nus_countries`
--

INSERT INTO `nus_countries` (`countryId`, `countryName`, `addedOn`) VALUES
(1, 'India', '2022-05-19 13:20:42'),
(2, 'Sri Lanka', '2022-05-19 13:20:42'),
(3, 'United Kingdom', '2022-07-20 15:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `nus_currencies`
--

CREATE TABLE `nus_currencies` (
  `id` tinyint(4) NOT NULL,
  `currencies` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nus_currencies`
--

INSERT INTO `nus_currencies` (`id`, `currencies`) VALUES
(1, 'USD'),
(2, 'EUR'),
(3, 'AUD'),
(4, 'CAD'),
(5, 'CHF'),
(6, 'CZK'),
(7, 'GBP'),
(8, 'HUF'),
(9, 'PLN'),
(10, 'SEK'),
(11, 'SGD');

-- --------------------------------------------------------

--
-- Table structure for table `nus_electricity_index`
--

CREATE TABLE `nus_electricity_index` (
  `id` tinyint(4) NOT NULL,
  `country` varchar(30) NOT NULL,
  `indexlist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nus_electricity_index`
--

INSERT INTO `nus_electricity_index` (`id`, `country`, `indexlist`) VALUES
(1, 'Australia', 'ASX'),
(2, 'Austria', 'EEX/Austria'),
(3, 'Czech', 'EEX-PXE/Czechia'),
(4, 'Denmark', 'Nasdaq OMX/Denmark'),
(5, 'Finland', 'Nasdaq OMX/Finland'),
(6, 'France', 'EEX/France'),
(7, 'Germany', 'EEX/Deutschland'),
(8, 'Hungary', 'EEX-PXE/Hungary'),
(9, 'Hungary', 'PXE'),
(10, 'Italy', 'EEX/Italy'),
(11, 'Netherlands - Belgium\n', 'Ice Endex'),
(12, 'Norway', 'Nasdaq OMX/Norway'),
(13, 'Romania', 'OPCOM'),
(14, 'Slovakia', 'EEX-PXE/Slovakia'),
(15, 'Slovenia', 'EEX-PXE/Slovenia'),
(16, 'Spain - Portugal\n', 'OMIP'),
(17, 'Sweden ', 'Nasdaq OMX/Sweden'),
(18, 'Switzerland', 'EEX/Switzerland'),
(19, 'USA', 'CAISO NP-15 or SP-15'),
(20, 'USA', 'ERCOT North or Houston'),
(21, 'USA', 'Illinois Hub (MISO)'),
(22, 'USA', 'NEPOOL Internal Hub'),
(23, 'USA', 'NYISO Zone J (NYC area)'),
(24, 'USA', 'PJM Western Hub');

-- --------------------------------------------------------

--
-- Table structure for table `nus_naturalgas_index`
--

CREATE TABLE `nus_naturalgas_index` (
  `id` tinyint(11) NOT NULL,
  `countries` varchar(30) NOT NULL,
  `indexlist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nus_naturalgas_index`
--

INSERT INTO `nus_naturalgas_index` (`id`, `countries`, `indexlist`) VALUES
(1, 'Austria', 'CEGH VTP'),
(2, 'Austria', 'PEGAS/CEGH VTP'),
(3, 'Czech', 'CZ VTP'),
(4, 'Denmark', 'ETF/Denmark'),
(5, 'France', 'PEG'),
(6, 'Germany - Switzerland', 'THE/PEGAS'),
(7, 'Hungary', 'CEEGEX'),
(8, 'Italy', 'PSV'),
(9, 'Netherlands', 'TTF'),
(10, 'Norway', 'ETF/Norway'),
(11, 'Romania', 'OPCOM'),
(12, 'Spain - Portugal', 'MIBGAS'),
(13, 'Sweden ', 'ETF/Sweden'),
(14, 'USA', 'NYMEX'),
(15, 'USA - Mexico', 'HSC [Houston Ship Channel]');

-- --------------------------------------------------------

--
-- Table structure for table `nus_pricing_mechanisam`
--

CREATE TABLE `nus_pricing_mechanisam` (
  `priMechId` int(11) NOT NULL,
  `pricingMechName` varchar(128) NOT NULL,
  `priceMechDesc` varchar(255) NOT NULL,
  `addedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nus_pricing_mechanisam`
--

INSERT INTO `nus_pricing_mechanisam` (`priMechId`, `pricingMechName`, `priceMechDesc`, `addedOn`) VALUES
(1, 'Day Ahead', 'Spot Daily Market', '2022-05-23 13:07:28'),
(2, 'Day Ahead', 'Spot Average for month', '2022-05-23 13:08:14'),
(3, 'Month Ahead', 'Last Value', '2022-05-23 13:08:14'),
(4, 'Month Ahead', 'Average Value', '2022-05-23 13:09:07'),
(5, 'Quarter Ahead', 'Last Value', '2022-05-23 13:09:07'),
(6, 'Quarter Ahead', 'Average Value', '2022-05-23 13:09:46'),
(7, 'Calendar Ahead', 'Last Value', '2022-05-23 13:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `nus_supply_contract`
--

CREATE TABLE `nus_supply_contract` (
  `supplierId` int(11) NOT NULL,
  `clientId` int(11) NOT NULL,
  `contract_id` varchar(128) NOT NULL,
  `countryName` varchar(64) NOT NULL,
  `commodityName` varchar(64) NOT NULL,
  `commodityUnits` varchar(32) NOT NULL,
  `supplyName` varchar(255) NOT NULL,
  `contractType` varchar(32) NOT NULL,
  `contractIndexId` varchar(64) NOT NULL,
  `contractTermfromDate` date NOT NULL,
  `contractTermtoDate` date NOT NULL,
  `commodityPrice` float NOT NULL,
  `totalAnualConsumption` varchar(30) NOT NULL,
  `totlconsumption` int(11) NOT NULL,
  `allmonts` text NOT NULL,
  `contractpricetype` varchar(30) NOT NULL,
  `indexStructureType` varchar(64) NOT NULL,
  `consumMinsize` varchar(64) NOT NULL,
  `clickTrancheminsize` int(11) NOT NULL,
  `openPrizemechanism` varchar(255) NOT NULL,
  `contractstatus` varchar(16) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nus_supply_contract`
--

INSERT INTO `nus_supply_contract` (`supplierId`, `clientId`, `contract_id`, `countryName`, `commodityName`, `commodityUnits`, `supplyName`, `contractType`, `contractIndexId`, `contractTermfromDate`, `contractTermtoDate`, `commodityPrice`, `totalAnualConsumption`, `totlconsumption`, `allmonts`, `contractpricetype`, `indexStructureType`, `consumMinsize`, `clickTrancheminsize`, `openPrizemechanism`, `contractstatus`) VALUES
(3, 3, 'NUS-elec-3', 'India', 'electricity', '', 'SONY', 'fixed', '', '2022-01-01', '2025-12-31', 1, '72', 72, '2022-1-01,2022-2-01,2022-3-01,2022-4-01,2022-5-01,2022-6-01,2022-7-01,2022-8-01,2022-9-01,2022-10-01,2022-11-01,2022-12-01,2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01,2025-1-01,2025-2-01,2025-3-01,2025-4-01,2025-5-01,2025-6-01,2025-7-01,2025-8-01,2025-9-01,2025-10-01,2025-11-01,2025-12-01', 'Euro', '', '', 0, '', 'A'),
(4, 3, 'NUS-gas-4', 'India', 'natural gas', 'MWh', 'Samsung', 'fixed', '', '2022-01-01', '2022-12-31', 12000, '120000', 120000, '2022-1-01,2022-2-01,2022-3-01,2022-4-01,2022-5-01,2022-6-01,2022-7-01,2022-8-01,2022-9-01,2022-10-01,2022-11-01,2022-12-01', 'Euro', '', '', 0, '', 'A'),
(5, 4, 'Ji-elec-5', 'Canada', 'electricity', '', 'Apple Inc', 'indexed', 'xlts', '2022-08-05', '2023-12-09', 0, '120000', 120000, '2022-8-01,2022-9-01,2022-10-01,2022-11-01,2022-12-01,2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'Dollars', 'Consumption(MWh)', '', 0, 'Month Ahead,Average Value', 'A'),
(6, 5, 'Ji-elec-6', 'United Arab', 'electricity', '', 'Spice Trip', 'fixed', '', '2020-01-01', '2020-12-31', 1234, '120000', 120000, '2020-1-01,2020-2-01,2020-3-01,2020-4-01,2020-5-01,2020-6-01,2020-7-01,2020-8-01,2020-9-01,2020-10-01,2020-11-01,2020-12-01', 'Euro', '', '', 0, '', 'A'),
(7, 5, 'Ji-gas-7', 'United Arab', 'natural gas', 'MWh', 'Safe Wheels', 'indexed', 'xlts', '2022-03-01', '2022-12-31', 0, '72000', 60000, '2022-3-01,2022-4-01,2022-5-01,2022-6-01,2022-7-01,2022-8-01,2022-9-01,2022-10-01,2022-11-01,2022-12-01', 'Euro', 'Consumption(MWh)', '', 0, 'Day Ahead,Spot Average for month', 'A'),
(8, 6, 'Shell-gas-8', 'United Kingdom', 'natural gas', 'MWh', 'EVF', 'indexed', 'xlts', '2022-07-01', '2022-07-31', 0, '1', 83, '2022-7-01', 'Euro', 'Power(MW)', '', 0, 'Day Ahead,Spot Average for month', 'A'),
(9, 6, 'Shell-elec-9', 'United Kingdom', 'electricity', '', 'Vijay', 'fixed', '', '2022-07-01', '2022-07-01', 12, '123', 10, '2022-7-01', 'Euro', '', '', 0, '', 'A'),
(10, 3, 'NUS-elec-10', 'India', 'electricity', '', 'EVF', 'fixed', '', '2021-01-01', '2021-12-31', 50, '12', 1, '2021-1-01,2021-2-01,2021-3-01,2021-4-01,2021-5-01,2021-6-01,2021-7-01,2021-8-01,2021-9-01,2021-10-01,2021-11-01,2021-12-01', 'Euro', '', '', 0, '', 'A'),
(11, 6, 'Shell-elec-11', 'United Kingdom', 'electricity', '', 'EVFF', 'fixed', '', '2022-08-01', '2022-08-07', 54.56, '1', 102, '2022-8-01', 'Euro', '', '', 0, '', 'A'),
(12, 7, 'ABC-elec-12', 'India', 'electricity', '', 'Volvo', 'fixed', '', '2022-08-01', '2022-08-31', 12, '1,200', 100, '2022-8-01', 'Euro', '', '', 0, '', 'A'),
(13, 4, 'Ji-gas-13', 'Canada', 'natural gas', 'MWh', 'ABD', 'fixed', '', '2022-08-02', '2022-08-24', 1, '120', 10, '2022-8-01', 'Euro', '', '', 0, '', 'A'),
(14, 3, 'NUS-elec-14', 'India', 'electricity', '', 'E', 'fixed', '', '2022-01-01', '2023-12-31', 54.5, '120,000', 120, '2022-1-01,2022-2-01,2022-3-01,2022-4-01,2022-5-01,2022-6-01,2022-7-01,2022-8-01,2022-9-01,2022-10-01,2022-11-01,2022-12-01,2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'Pounds', '', '', 0, '', 'A'),
(15, 3, 'NUS-elec-15', 'India', 'electricity', '', 'EVF', 'indexed', 'xlts', '2022-08-05', '2022-08-05', 0, '120,000', 10, '2022-8-01', 'EUR', 'Consumption(MWh)', '', 0, 'Day Ahead', 'A'),
(16, 3, 'NUS-elec-16', 'India', 'electricity', '', 'ev', 'indexed', 'EEX-PXE/Slovakia', '2022-08-03', '2022-08-25', 0, '1,200', 100, '2022-8-01', 'HUF', '', '', 0, 'Day Ahead,Spot Daily Market', 'A'),
(17, 3, 'NUS-elec-17', 'India', 'electricity', '', 'EDE', 'fixed', '', '2022-01-01', '2022-04-30', 12, '11', 11, '2022-1-01,2022-2-01,2022-3-01,2022-4-01', 'USD', '', '', 0, '', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `nus_tradeperiods`
--

CREATE TABLE `nus_tradeperiods` (
  `tradePerId` int(11) NOT NULL,
  `supplierId` int(11) NOT NULL,
  `periodsId` varchar(128) NOT NULL,
  `clicktracnches` int(11) NOT NULL,
  `clicktranches` varchar(50) NOT NULL,
  `tranchesvalue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nus_tradeperiods`
--

INSERT INTO `nus_tradeperiods` (`tradePerId`, `supplierId`, `periodsId`, `clicktracnches`, `clicktranches`, `tranchesvalue`) VALUES
(2, 5, 'Calendar Yearly', 10, '% consumption', 7),
(3, 7, 'Calendar Yearly', 10, '% consumption', 5),
(4, 8, 'Calendar Yearly', 5, '% consumption', 0),
(5, 8, 'Calendar Quarterly', 10, '% consumption', 0),
(6, 8, 'Calendar Monthly', 0, '% consumption', 15),
(7, 16, 'Season', 123, '% consumption', 11);

-- --------------------------------------------------------

--
-- Table structure for table `nus_trade_periods_list`
--

CREATE TABLE `nus_trade_periods_list` (
  `tPeriodsId` int(11) NOT NULL,
  `periodsName` varchar(128) NOT NULL,
  `addedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parentcompanydata`
--

CREATE TABLE `parentcompanydata` (
  `id` int(11) NOT NULL,
  `parentcompany` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parentcompanydata`
--

INSERT INTO `parentcompanydata` (`id`, `parentcompany`) VALUES
(3, 'Qualesce'),
(4, 'Ji Inc'),
(5, 'Shell Global');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientcompanydata`
--
ALTER TABLE `clientcompanydata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientcompany` (`clientcompany`);

--
-- Indexes for table `nususerdata`
--
ALTER TABLE `nususerdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`emailId`),
  ADD UNIQUE KEY `username_2` (`username`,`emailId`),
  ADD UNIQUE KEY `username_3` (`username`),
  ADD UNIQUE KEY `emailId` (`emailId`);

--
-- Indexes for table `nus_countries`
--
ALTER TABLE `nus_countries`
  ADD PRIMARY KEY (`countryId`);

--
-- Indexes for table `nus_currencies`
--
ALTER TABLE `nus_currencies`
  ADD PRIMARY KEY (`id`,`currencies`),
  ADD UNIQUE KEY `currencies` (`currencies`),
  ADD UNIQUE KEY `currencies_2` (`currencies`);

--
-- Indexes for table `nus_electricity_index`
--
ALTER TABLE `nus_electricity_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nus_naturalgas_index`
--
ALTER TABLE `nus_naturalgas_index`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `nus_pricing_mechanisam`
--
ALTER TABLE `nus_pricing_mechanisam`
  ADD PRIMARY KEY (`priMechId`);

--
-- Indexes for table `nus_supply_contract`
--
ALTER TABLE `nus_supply_contract`
  ADD PRIMARY KEY (`supplierId`);

--
-- Indexes for table `nus_tradeperiods`
--
ALTER TABLE `nus_tradeperiods`
  ADD PRIMARY KEY (`tradePerId`);

--
-- Indexes for table `nus_trade_periods_list`
--
ALTER TABLE `nus_trade_periods_list`
  ADD PRIMARY KEY (`tPeriodsId`);

--
-- Indexes for table `parentcompanydata`
--
ALTER TABLE `parentcompanydata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientcompanydata`
--
ALTER TABLE `clientcompanydata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nususerdata`
--
ALTER TABLE `nususerdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `nus_countries`
--
ALTER TABLE `nus_countries`
  MODIFY `countryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nus_currencies`
--
ALTER TABLE `nus_currencies`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nus_electricity_index`
--
ALTER TABLE `nus_electricity_index`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `nus_naturalgas_index`
--
ALTER TABLE `nus_naturalgas_index`
  MODIFY `id` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nus_pricing_mechanisam`
--
ALTER TABLE `nus_pricing_mechanisam`
  MODIFY `priMechId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nus_supply_contract`
--
ALTER TABLE `nus_supply_contract`
  MODIFY `supplierId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `nus_tradeperiods`
--
ALTER TABLE `nus_tradeperiods`
  MODIFY `tradePerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nus_trade_periods_list`
--
ALTER TABLE `nus_trade_periods_list`
  MODIFY `tPeriodsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parentcompanydata`
--
ALTER TABLE `parentcompanydata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
