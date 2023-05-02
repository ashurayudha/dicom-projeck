-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2022 pada 04.33
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dicom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dicoms`
--

CREATE TABLE `dicoms` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `dicomFile` varchar(255) NOT NULL,
  `patientId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dicoms`
--

INSERT INTO `dicoms` (`id`, `uuid`, `dicomFile`, `patientId`, `createdAt`, `updatedAt`) VALUES
(4, 'd96e5320-1149-4a00-9c0d-6d7d5ddcf1d6', '/images/309e4ee3cddf37ab26e2060ad01a6dc5.dcm', 11, '2022-11-30 15:25:36', '2022-11-30 15:25:36'),
(5, 'ca785008-68ad-4e8f-9daa-78f62aa3a7d0', '/images/309e4ee3cddf37ab26e2060ad01a6dc5.dcm', 11, '2022-11-30 15:28:00', '2022-11-30 15:28:00'),
(6, 'a86d9d5c-e3f7-47d6-951f-2ff2535e2523', '/images/facc687bed75bd5b2a6f1169495d3eb1.DCM', 11, '2022-11-30 15:28:18', '2022-11-30 15:28:18'),
(7, '594d3d96-cb03-436e-b319-366bbf0741e9', '/images/bdc98d68248228bf79370cb6807803b0.DCM', 11, '2022-11-30 15:28:34', '2022-11-30 15:28:34'),
(8, '96d1ed0f-ce1c-429f-9ee7-3e34c16dd2b9', '/images/309e4ee3cddf37ab26e2060ad01a6dc5.dcm', 14, '2022-12-17 03:33:46', '2022-12-17 03:33:46'),
(11, '6ce36266-0a33-48a9-81ee-17aa9a9e57e5', '/images/309e4ee3cddf37ab26e2060ad01a6dc5.dcm', 3, '2022-12-17 04:46:43', '2022-12-17 04:46:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dicom_sessions`
--

CREATE TABLE `dicom_sessions` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `dicomFile` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `strNumber` varchar(255) DEFAULT NULL,
  `birthDate` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `practicePlace` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `doctors`
--

INSERT INTO `doctors` (`id`, `uuid`, `userId`, `strNumber`, `birthDate`, `address`, `specialization`, `practicePlace`, `note`, `createdAt`, `updatedAt`) VALUES
(11, 'b883eb0b-c0cf-44aa-b459-e7300d009a1e', 35, '123456', NULL, NULL, NULL, NULL, NULL, '2022-12-16 11:35:12', '2022-12-16 11:35:12'),
(13, '60601f72-2dca-4f3a-9775-798b3d58a23a', 37, '12345677', '2023-01-15', 'rumah ayangg', 'wajah', 'rumah ayang', 'halo', '2022-12-16 12:36:58', '2022-12-16 13:30:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `medicalRecordNumber` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthDate` datetime DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `profileImage` varchar(255) NOT NULL DEFAULT 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png',
  `phoneNumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `disease` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `patients`
--

INSERT INTO `patients` (`id`, `uuid`, `medicalRecordNumber`, `name`, `birthDate`, `gender`, `profileImage`, `phoneNumber`, `email`, `address`, `disease`, `note`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'd1d558cd-4981-42ce-9cc9-806ed0c554f0', '1027308127f2142374', 'alfan', '2000-05-06 17:00:00', 'L', 'images/be5ace4c3e0f5e1028fc9ba14d8b3746.jpeg', '6287861130080', 'maskurshidi12@gmail.com', 'krian', 'tidak sakit', 'ini catatan', 1, '2022-11-16 16:50:13', '2022-11-16 16:50:13'),
(3, '47d52bb8-d2de-40d1-ad1d-7634c9899d06', '3423318', 'maskurnia', '2000-05-06 17:00:00', 'L', 'images/0eee2e83a6162336bb0a4d25ab46f0f6.jpeg', '6287861130080', 'maskurshidi12@gmail.com', 'krian', 'tidak sakit woy', 'ini catatan', 1, '2022-11-16 16:54:15', '2022-12-17 05:11:59'),
(11, '56351375-93ed-4bd2-88c6-e7717493f087', '1027308127f23', 'nia', '2000-05-06 17:00:00', 'L', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png', '6287861130080', 'maskurshidi12@gmail.com', 'krian', 'tidak sakit', 'ini catatan', 1, '2022-11-30 14:43:11', '2022-11-30 14:43:11'),
(14, '969c3cdf-441e-4ab6-ba23-61edd1393f82', '23124124', 'ramadhania', '2000-05-06 17:00:00', 'L', 'images/4fe392be6ab4412978ad9191b5622ea5.jpeg', '6287861130080', 'maskurshidi12@gmail.com', 'krian', 'tidak sakit', 'ini catatan', 1, '2022-12-17 03:13:06', '2022-12-17 04:29:59'),
(15, '9e99541c-3d15-4224-923f-25319bbcf72b', '131423443', 'ade kurnia', '0000-00-00 00:00:00', 'P', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png', '087625361721', 'maskurshidi123@gmail.com', 'perum gajah mada', 'tidak ada', 'jangan pedas ya', 35, '2022-12-17 05:35:43', '2022-12-17 05:35:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `canCreateUser` tinyint(1) NOT NULL DEFAULT 0,
  `canViewUser` tinyint(1) NOT NULL DEFAULT 0,
  `canDeleteUser` tinyint(1) NOT NULL DEFAULT 0,
  `canUpdateUser` tinyint(1) NOT NULL DEFAULT 0,
  `canCreateDoctor` tinyint(1) NOT NULL DEFAULT 0,
  `canViewDoctor` tinyint(1) NOT NULL DEFAULT 0,
  `canDeleteDoctor` tinyint(1) NOT NULL DEFAULT 0,
  `canUpdateDoctor` tinyint(1) NOT NULL DEFAULT 0,
  `canCreateRole` tinyint(1) NOT NULL DEFAULT 0,
  `canViewRole` tinyint(1) NOT NULL DEFAULT 0,
  `canDeleteRole` tinyint(1) NOT NULL DEFAULT 0,
  `canUpdateRole` tinyint(1) NOT NULL DEFAULT 0,
  `canCreatePatient` tinyint(1) NOT NULL DEFAULT 0,
  `canViewPatient` tinyint(1) NOT NULL DEFAULT 0,
  `canDeletePatient` tinyint(1) NOT NULL DEFAULT 0,
  `canUpdatePatient` tinyint(1) NOT NULL DEFAULT 0,
  `canViewDicom` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `uuid`, `canCreateUser`, `canViewUser`, `canDeleteUser`, `canUpdateUser`, `canCreateDoctor`, `canViewDoctor`, `canDeleteDoctor`, `canUpdateDoctor`, `canCreateRole`, `canViewRole`, `canDeleteRole`, `canUpdateRole`, `canCreatePatient`, `canViewPatient`, `canDeletePatient`, `canUpdatePatient`, `canViewDicom`, `createdAt`, `updatedAt`, `roleId`) VALUES
(1, '6685f906-d489-471a-981b-5c49a9393d26', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-11-16 15:59:39', '2022-11-16 15:59:39', 1),
(2, '6685f906-d489-471a-981b-5c49a9393f23', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, '2022-11-16 15:59:39', '2022-11-16 15:59:39', 2),
(3, '6685f906-d489-471a-981b-5c49a939jhs1', 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, '2022-11-16 16:27:00', '2022-11-16 16:27:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `uuid`, `role`, `description`, `createdAt`, `updatedAt`) VALUES
(1, '6685f906-d489-471a-981b-5c49a9393d76', 'admin', 'ini adalah admin', '2022-11-16 14:37:03', '2022-11-16 14:37:03'),
(2, '476774ac-9ead-4bfd-b614-2c0d66e3f22b', 'dokter', 'ini adalah dokter', '2022-11-16 14:37:17', '2022-11-16 14:37:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-3KkPMNQlI9D3lcxKv7iaCEaAqaObcao', '2022-12-18 06:42:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:42:56', '2022-12-17 06:42:56'),
('-cxPJwnR_9Hlt6Uhdt09lVI31X0PeWf_', '2022-12-18 06:20:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:20:43', '2022-12-17 06:20:43'),
('-UVtQ-jwDCSJ6gPmzbOmcYHoTfWGkcg8', '2022-12-18 05:36:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:36:26', '2022-12-17 05:36:26'),
('-WokitldCEXwTYYe5Q6EjaqE_hFGP5ry', '2022-12-17 11:35:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 11:35:12', '2022-12-16 11:35:12'),
('03piX9_GjcwFdaka2Az1BvjaCGXWEHAd', '2022-12-18 03:29:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:29:04', '2022-12-17 03:29:04'),
('0ma8ri6FPc2EfW4HI62ZVu15hWBazec3', '2022-12-18 06:22:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:22:49', '2022-12-17 06:22:49'),
('0qjL6lIK6vl1vSjx2IidDPwNAQLG2CqB', '2022-12-18 06:18:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:25', '2022-12-17 06:18:25'),
('0QkXeBdE7l9gxGiGn4DXLsduqQXANGLM', '2022-12-18 06:14:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:34', '2022-12-17 06:14:34'),
('0xxkMVblF6nvLM8xRQ3bgkk-R81_KsLE', '2022-12-18 06:14:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:46', '2022-12-17 06:14:46'),
('1-MUR1Dy6jjEyxuz16MWqNm632_RDFJR', '2022-12-18 05:09:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:09:06', '2022-12-17 05:09:06'),
('172RjEheJ6F4AKqWODOzcyME4HUW7638', '2022-12-17 11:59:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 11:59:55', '2022-12-16 11:59:55'),
('19BmhW6h2lNfcQpRel3_vjklxDP_bRhZ', '2022-12-18 06:40:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:40:04', '2022-12-17 06:40:04'),
('1WNHkwdwjWRsFzqHtSZva8XRh_CTDXcG', '2022-12-17 11:59:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 11:59:55', '2022-12-16 11:59:55'),
('1_i1HYerL_r8YP7ONQJ76sYK0pVc1b8M', '2022-12-18 04:17:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:17:13', '2022-12-17 04:17:13'),
('298mE9d7BX--Ow0ma08L-8D4PmzJaJFN', '2022-12-18 06:22:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:22:49', '2022-12-17 06:22:49'),
('2slQULW2TU-U_TX2mtShxRWf0ufI_DQ3', '2022-12-18 03:24:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:24:17', '2022-12-17 03:24:17'),
('2xteqLg3DuMDVm7hsxodSzZJNmfNCtAb', '2022-12-18 03:26:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:26:58', '2022-12-17 03:26:58'),
('3duUqnx7FB0P_uCZ_1ewn6g1v85mpee-', '2022-12-18 06:42:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:42:49', '2022-12-17 06:42:49'),
('3ItrOHXypzrrXFUCUxL5-FDb50NT9gQP', '2022-12-18 03:46:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:46:54', '2022-12-17 03:46:54'),
('3NaWDfEjza1Fi7WzQVzUyELVNn3sQQQb', '2022-12-18 05:22:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:22:00', '2022-12-17 05:22:00'),
('4b7jLpOhr-lWP6HjrnYN7_OwpBZjQKJg', '2022-12-18 04:55:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:55:51', '2022-12-17 04:55:51'),
('5-XV_EvmjebelsTZt83aaNO-23YTolOC', '2022-12-17 13:34:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:34:33', '2022-12-16 13:34:33'),
('51Nyuue9Eshsk0Obg11EqT8aH0cfI6bD', '2022-12-18 04:56:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:56:50', '2022-12-17 04:56:50'),
('556uDoFIpimiVB20Lehd5GZXg7dUMfB_', '2022-12-18 03:28:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:28:25', '2022-12-17 03:28:25'),
('5fXGavqH9E22Jd0Pi_UIu9FTc3fhJGOF', '2022-12-18 06:40:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:40:01', '2022-12-17 06:40:01'),
('5lBcHZZFMawmtpBHbgI6TJ5pSGAB8lYC', '2022-12-17 13:35:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:35:17', '2022-12-16 13:35:17'),
('5m6hiMFJRzdCYBEIZ1sCq4p-PxS-jI5r', '2022-12-18 06:18:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:25', '2022-12-17 06:18:25'),
('6ACZduPebPyCWhYLuhXvAGF-yI4KQBlS', '2022-12-18 07:01:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:00', '2022-12-17 07:01:00'),
('6aHo5wkxAKvL2Kg59-DCnqHJdwpi0gI8', '2022-12-18 05:06:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:06:52', '2022-12-17 05:06:52'),
('6owybRoCPU8Dk7UTpBo6-GazQjIHKjTl', '2022-12-18 06:40:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:40:04', '2022-12-17 06:40:04'),
('6TQvCGE1l2NNQ5jaS-fRPBwUIXvQQ7yR', '2022-12-18 03:13:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:13:34', '2022-12-17 03:13:34'),
('6XgYBEjkhyhe5snMBvXSh-wqLufgQWAb', '2022-12-18 05:29:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:29:57', '2022-12-17 05:29:57'),
('7ey5_huUKP1FZPS8hmwSARbBPtmsDNpC', '2022-12-18 05:09:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:09:49', '2022-12-17 05:09:49'),
('7IefBSrUr_wJH2P_1waPKrpLhA3FoQXk', '2022-12-18 06:42:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:42:54', '2022-12-17 06:42:54'),
('7txPINIVF2lgluM7S7iBiZPeykK2wRQ5', '2022-12-18 06:15:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:15:07', '2022-12-17 06:15:07'),
('7v4KQevZ4hhX6Ck3JIM7e5j1mATgK2_S', '2022-12-18 03:46:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:46:44', '2022-12-17 03:46:44'),
('81MUm8VqBiJdhsYwq8BDcftF5HbyslID', '2022-12-18 06:14:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:46', '2022-12-17 06:14:46'),
('81PoZQbOZ4BFywjULqsengNKV9S4e3fP', '2022-12-18 06:16:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:16:40', '2022-12-17 06:16:40'),
('83G6z9viGiZRqsqKNEwVMcfCLUkduUIs', '2022-12-18 02:35:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 02:35:10', '2022-12-17 02:35:10'),
('8a1VJxDncNX_kaaXOebkUcl7rauHpdaY', '2022-12-18 06:18:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:57', '2022-12-17 06:18:57'),
('8S0Y1lYqp4URhMq8oRwWmyFffPKFuRAR', '2022-12-18 06:14:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:46', '2022-12-17 06:14:46'),
('8x3tvZ9IlHh-4ys3Kkm8eNcElM63TExN', '2022-12-18 06:42:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:42:17', '2022-12-17 06:42:17'),
('a2La3qb1dSm0lTqm-7G2jBP6E39pw4-x', '2022-12-18 07:01:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:29', '2022-12-17 07:01:29'),
('a87_vVO1yxA6nhAFtDhmySOTTbuY1StJ', '2022-12-18 05:37:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:37:47', '2022-12-17 05:37:47'),
('A9dRZ0IyPV2GhQLK5Txx0bNttsXUls2V', '2022-12-18 05:07:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:07:51', '2022-12-17 05:07:51'),
('ae-yV6WPDfkv5zWrt2V2W3AUkmhHcNuB', '2022-12-18 06:18:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:57', '2022-12-17 06:18:57'),
('aijNbrZFjll4g4pHU-rZYjAko38ycHbu', '2022-12-17 13:30:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:30:14', '2022-12-16 13:30:14'),
('AlZpcDWFwxmntY3WfuTGGr7zelYYL07H', '2022-12-18 06:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:34:27', '2022-12-17 06:34:27'),
('AMdAhozuKMdxmb0OauABOCPYyXcF3lKe', '2022-12-18 03:18:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:18:13', '2022-12-17 03:18:13'),
('AnBHo6LJWpjJ7Z0THk2fFDqULqf6WvZZ', '2022-12-18 03:16:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:16:36', '2022-12-17 03:16:36'),
('AO87aI_XH85qGEm9n64f09eVXlmyiEG-', '2022-12-18 05:00:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:00:39', '2022-12-17 05:00:39'),
('ap1KHf0kZNOjgirVTRvP7z8R2p5Hxd0O', '2022-12-18 03:47:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:47:03', '2022-12-17 03:47:03'),
('aVjVxNOgkQjV7w4IQMqnL_ZPA3Jdz0nV', '2022-12-17 13:34:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:34:53', '2022-12-16 13:34:53'),
('AVLJpBJOEPano3AIEykaOIw0vL1rnA3l', '2022-12-18 03:46:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:46:56', '2022-12-17 03:46:56'),
('Aw6c_0F9uvmv7wM7iOBijV-wd6XDEVyO', '2022-12-17 13:18:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:18:32', '2022-12-16 13:18:32'),
('AYomoC5zfmRq91O-UGQ5C2inMP5QJBW0', '2022-12-18 07:01:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:30', '2022-12-17 07:01:30'),
('AyvlPfdpVO0HG46QKjIpB5yuhUTsOAX4', '2022-12-18 03:41:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:41:19', '2022-12-17 03:41:19'),
('AZ0aWXby1KEYtGJVlWjsD3w7MAFOHNB4', '2022-12-18 04:13:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:13:49', '2022-12-17 04:13:49'),
('B4lnUO2GYnQJ8NmTI84p9gkY3rT47UhD', '2022-12-18 05:58:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:58:36', '2022-12-17 05:58:36'),
('B60ahjJqW94lgVRf4Zpn1wjrEU25BgZz', '2022-12-18 05:02:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:02:57', '2022-12-17 05:02:57'),
('B79Em1yEGGhIrAyjXXyRB6azxQ6Tij4h', '2022-12-18 07:01:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:30', '2022-12-17 07:01:30'),
('BCr2imkaPJRMoPz39xvB6kXKHLe9M2Fm', '2022-12-17 13:25:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:25:02', '2022-12-16 13:25:02'),
('BdeUoHojDxEfdMONGQZBmnq76BESPbx9', '2022-12-18 05:01:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:01:25', '2022-12-17 05:01:25'),
('bpHX-R6lG3bu1l2kGjQaxXvcu5x02ozS', '2022-12-18 06:40:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:40:04', '2022-12-17 06:40:04'),
('BqCyUiuAJqbfeIVAlpk6aNI9YLMnLc0r', '2022-12-18 04:33:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:33:38', '2022-12-17 04:33:38'),
('BxLXH1aOdrzXbqCyGvSp2YaiBtHgl0gb', '2022-12-17 13:22:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:22:40', '2022-12-16 13:22:40'),
('c3JH-CYsYVMutf77A0d7Haz18E4gIl0V', '2022-12-18 06:24:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:24:22', '2022-12-17 06:24:22'),
('C96dMdrX98b5a_RJtxxWqDfArILNtzIa', '2022-12-18 05:06:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:06:45', '2022-12-17 05:06:45'),
('C9asOVG_4tE1sGX85ECdH_Ba6c2AhPeL', '2022-12-18 06:14:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:46', '2022-12-17 06:14:46'),
('c9BC8C7oU-CFgAw5KoyFCWXDGyz4cv0J', '2022-12-18 06:18:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:25', '2022-12-17 06:18:25'),
('cApN50vXNjXSG_Exs0GIr_vMWsRj0qS2', '2022-12-17 12:04:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 12:04:05', '2022-12-16 12:04:05'),
('Ccgd85YqKVxXgqqBRW0oz0x0B6FZ1pwl', '2022-12-17 12:04:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 12:04:41', '2022-12-16 12:04:41'),
('CFOpgiXxBVIrm-6kS6GgJqMvRCV1gDIp', '2022-12-18 06:47:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:47:45', '2022-12-17 06:47:45'),
('CoY_JVj4ALiqIdFNp5pNC7vXh_NPEO5V', '2022-12-18 06:22:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:22:49', '2022-12-17 06:22:49'),
('cQ_CCxX4GJxDbJdhTubL_hZwInlDOvMu', '2022-12-18 06:24:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:24:22', '2022-12-17 06:24:22'),
('cuOdjMpdxj43KgIL3SIlIdNXzSH1e2Aj', '2022-12-18 03:28:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:28:38', '2022-12-17 03:28:38'),
('D0VmTAl4iB0UZ4R3G4kCWw0Ho-CiFMjM', '2022-12-18 05:08:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:08:51', '2022-12-17 05:08:51'),
('D4cTuzDidmrE74gGG_jKPdPgy1QDVHCa', '2022-12-18 03:50:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:50:09', '2022-12-17 03:50:09'),
('dA9xZNz4U8sqtYJrFQYD618Gdn8lfP8K', '2022-12-18 06:50:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:49:35', '2022-12-17 06:50:05'),
('dEzs17Zqpisv9TMfOeNfJnhTa-Dhz67A', '2022-12-18 06:24:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:24:22', '2022-12-17 06:24:22'),
('Dg-XVS-ACTkQgfABI_El1UQA3nx-fXlP', '2022-12-17 13:14:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:14:09', '2022-12-16 13:14:09'),
('dG4mS-u8onDV39OxyYIxHTMzFIgxXYq9', '2022-12-18 07:01:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:30', '2022-12-17 07:01:30'),
('dIBTOiquJzJJkJbjlxD6fTXQYNsFcdGC', '2022-12-18 06:50:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:50:28', '2022-12-17 06:50:28'),
('djFrux4lMeqKwkQ55Z4gChopKC3nmuot', '2022-12-18 05:29:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:29:45', '2022-12-17 05:29:45'),
('DmUnoR0N7zb-soHO5h2KR-OtDeO5nEKt', '2022-12-18 06:34:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:34:26', '2022-12-17 06:34:26'),
('DPIKz3THLewODWvgbZBAVQEnvAF0KvIx', '2022-12-17 12:06:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 12:06:17', '2022-12-16 12:06:17'),
('DpTQKjY6JiHP3iIo8nppaDNw7jlvE3Wj', '2022-12-18 06:16:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:16:40', '2022-12-17 06:16:40'),
('Dr6F95R5APAEEYFB2ionqCBINxq_NSjo', '2022-12-18 05:09:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:09:27', '2022-12-17 05:09:27'),
('dX17JCMHf-Ee6y8edGbj3FGEBPfziNNR', '2022-12-18 06:24:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:24:22', '2022-12-17 06:24:22'),
('E5fdR8iDQZkMi7dre97DD6rvuLbcwyzX', '2022-12-18 06:20:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:20:42', '2022-12-17 06:20:42'),
('EcBqOid2MD_VnxP7NfTXitcsBBOJAXTq', '2022-12-18 05:01:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:01:05', '2022-12-17 05:01:05'),
('eCerLKvEQnUwo5KK2iq9V6YTP2XJo_k-', '2022-12-18 03:41:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:41:24', '2022-12-17 03:41:24'),
('ehkAwAYGFNd3MfdKTRDfzg2GTKaRAttK', '2022-12-18 06:24:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:24:22', '2022-12-17 06:24:22'),
('EIA2d4gtW3I3LDtG03YkEX1PqXw6Oqwn', '2022-12-18 06:15:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:15:07', '2022-12-17 06:15:07'),
('EivgZRDOZERZJkXoNfnLpMxFYzvy67Re', '2022-12-18 06:25:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:05', '2022-12-17 06:25:05'),
('eNG5tQCd60S_V3EO8AykfznLhhUgIhwU', '2022-12-18 07:01:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:07', '2022-12-17 07:01:07'),
('EoaiTynQ55q-Fg1uvcWHbBjiG9fusuhZ', '2022-12-18 06:24:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:24:22', '2022-12-17 06:24:22'),
('ETiRZHGnkRBMprnZq-GEZUPkqJVz5rbu', '2022-12-18 05:38:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:38:12', '2022-12-17 05:38:12'),
('eU-zsbMu5QRBaKqa6IHEYGBK1ysdyhZN', '2022-12-18 07:01:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:52', '2022-12-17 07:01:52'),
('eWrDpVIeoNFnN0Q4w_Zq4SR0BEVphB2L', '2022-12-18 06:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:34:27', '2022-12-17 06:34:27'),
('eXv1ltW9lEYKriGBtt1hYw1VJ-KYWJAc', '2022-12-18 06:14:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:14:46', '2022-12-17 06:14:46'),
('eX_nXHTbf1An81XbLodvCWGil1g_b74l', '2022-12-18 06:18:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:25', '2022-12-17 06:18:25'),
('f0NbodoxzfH0NYfLIdFvj9ib6wyOvgXx', '2022-12-18 07:01:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:52', '2022-12-17 07:01:52'),
('f3UCHkgVx01O9EbyRFHzY5Os3i1GBm9e', '2022-12-18 06:14:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:34', '2022-12-17 06:14:34'),
('f7hFvgCIfvUWRNKUhpn6bMGxl6IfJaNI', '2022-12-17 13:29:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:29:19', '2022-12-16 13:29:19'),
('FdNJBfUWj_FaLLmHjogSuoe3aUYwPvT2', '2022-12-18 05:02:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:02:31', '2022-12-17 05:02:31'),
('FtKPE-uYJccpcKNN0rlZtSVmSB2ACSG2', '2022-12-18 06:25:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:21', '2022-12-17 06:25:21'),
('Fw36T_Fxh2EZutqtq6PGWMzrXNWnI3F1', '2022-12-18 06:20:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:20:46', '2022-12-17 06:20:46'),
('FWAkZUrGzhWoO6kT1NsRRC1yuzI4Xtwv', '2022-12-18 03:47:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:47:01', '2022-12-17 03:47:01'),
('FwquT6FXzaNME09FsoVhMMtUWGFNbx5a', '2022-12-17 13:30:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:30:13', '2022-12-16 13:30:13'),
('g3lLo7P-AyePmveHhZo6EMk8_NiMi7Q2', '2022-12-18 07:01:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 07:01:52', '2022-12-17 07:01:52'),
('GFYJ_7xNFbaRnqlNrAbDuiDJ7XEgoBYD', '2022-12-18 06:47:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:47:45', '2022-12-17 06:47:45'),
('GjEuvUlS6UtYeoIpJvtUqrpSbMqZjm9r', '2022-12-18 04:58:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:58:26', '2022-12-17 04:58:26'),
('gm04b-VioCBUL5etSK9xypxsgVA8i5wA', '2022-12-17 11:34:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 11:34:28', '2022-12-16 11:34:28'),
('GnYuIcWMSnfQeJ19nNCPHBpVVOdIcZKP', '2022-12-18 04:45:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:45:52', '2022-12-17 04:45:52'),
('gtfMlyNz39kOOw9sdI6vueQYA9VNIuW8', '2022-12-18 06:40:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:40:04', '2022-12-17 06:40:04'),
('gVZnu1P4iAhlKUMmOpLa4BFZOCusxUz5', '2022-12-18 05:07:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:07:47', '2022-12-17 05:07:47'),
('gY_J5w1vFHO2fK9YBRCrr7jxOG7zsCjH', '2022-12-18 06:25:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:05', '2022-12-17 06:25:05'),
('gZwPdxi6wM73FxhdRtNzvv5R9H7VBhP1', '2022-12-17 14:11:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-16 11:34:13', '2022-12-16 14:11:36'),
('h47s9kIUW5vv9kZ5m0qbB5zvp3ogu8MV', '2022-12-18 06:25:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:22', '2022-12-17 06:25:22'),
('hamCvSTIAbaHgHrST6RQNBEZGBxsk1TZ', '2022-12-17 13:33:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:33:47', '2022-12-16 13:33:47'),
('hgbqDVnpZ5UqKOqz4r9PhzKo9CUH8Lgq', '2022-12-18 04:29:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:29:59', '2022-12-17 04:29:59'),
('hiWocuSQStBVwLuXYKUg23_jfofBDWbK', '2022-12-18 06:18:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:25', '2022-12-17 06:18:25'),
('hRM6Q1RX5pBmi_xjoBE5iyndbcfU7j8e', '2022-12-18 04:15:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:15:09', '2022-12-17 04:15:09'),
('HUL__MDN_D_ciKt-mSgoTRyE3wbdtfos', '2022-12-18 06:18:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:57', '2022-12-17 06:18:57'),
('HYGXor6tJ3mMnPLEpcw1OiyiBjEwYuVj', '2022-12-18 06:18:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:18:57', '2022-12-17 06:18:57'),
('Hzy90ISM6SoOtQYJaVmihK7q3SuINztn', '2022-12-17 13:29:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:29:10', '2022-12-16 13:29:10'),
('i0LxQjRGMlqCXhzvSRu8ijNYCjCH1BDU', '2022-12-18 05:01:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:01:46', '2022-12-17 05:01:46'),
('I0MnT3s13Twwi0IEF4yXHIor-Bud32jF', '2022-12-18 06:25:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:05', '2022-12-17 06:25:05'),
('i0p2SHfyaBkL0sZHQsGnVNbue9HROZS0', '2022-12-18 06:14:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:34', '2022-12-17 06:14:34'),
('I2-_2Qh0uM94bfPcNL02kW84BeL9xklq', '2022-12-18 07:01:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:30', '2022-12-17 07:01:30'),
('I2vcIWoSxKLMDKgYTG5-1NXj6YM2sUYl', '2022-12-18 06:20:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:20:46', '2022-12-17 06:20:46'),
('i5J-FzaEH2prl281zBvj4ltQYYcl350L', '2022-12-18 03:24:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:24:17', '2022-12-17 03:24:17'),
('I9rtdBIhaoQsNzq8kPuzawpf_MaZDyNX', '2022-12-17 13:09:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:09:33', '2022-12-16 13:09:33'),
('IcbTjFMTk3fjR3SPK9dEcp_BoPPYqlcw', '2022-12-18 03:48:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:48:57', '2022-12-17 03:48:57'),
('ijMPPKwFyk-Qx43vn719ZQTM76t_3QqC', '2022-12-18 06:16:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:16:40', '2022-12-17 06:16:40'),
('imXFqHyG1CMyJgqE4ElldAVie_D9zPwn', '2022-12-18 05:38:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:38:00', '2022-12-17 05:38:00'),
('INFRJ_aSP_pGoAFZQ0c0LNHO7UGTcw45', '2022-12-18 03:15:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:15:31', '2022-12-17 03:15:31'),
('IRcK61gD0z3-vSjV6uVFjnjf6N4cDvSG', '2022-12-18 06:24:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:24:22', '2022-12-17 06:24:22'),
('iROhFtjRGNqLKQf6lNVCI1m3bLxjRIkN', '2022-12-18 06:40:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:40:00', '2022-12-17 06:40:00'),
('ISPOWSSh0FTvbYQDMvHXLikRI7U-mSBt', '2022-12-17 13:34:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:34:53', '2022-12-16 13:34:53'),
('IuSUJfA-EFhNCpdBUXLNxDbD0Uad9vge', '2022-12-18 06:14:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:14:33', '2022-12-17 06:14:33'),
('J60XEMdgkknDiUFWNZ6v6GPEvqk9ei3J', '2022-12-18 06:42:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:42:56', '2022-12-17 06:42:56'),
('j748cjeMtbou89hSrMymUa389jVP4_z7', '2022-12-18 03:43:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:43:37', '2022-12-17 03:43:37'),
('j9PHkErOcDa8BsQ3hugqrSwdHts-_M0X', '2022-12-18 05:37:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:37:20', '2022-12-17 05:37:20'),
('janaFdwXgGTWBHHdQ42O-8irBGBLtSuB', '2022-12-18 06:25:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:05', '2022-12-17 06:25:05'),
('jIUAIC4JvRMX_U1jjJOZhDi1vsEErn79', '2022-12-18 05:12:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:12:10', '2022-12-17 05:12:10'),
('jj8YpkMEBJlk1OX7pZm_RO8gYIiexUu3', '2022-12-18 03:28:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:28:40', '2022-12-17 03:28:40'),
('JKmaQ5xFOzurEM-A4z4huPyYsA84Rr04', '2022-12-18 05:58:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:58:36', '2022-12-17 05:58:36'),
('jKoe6Os6AKyBqslQCv9d_w5JiybJUU0A', '2022-12-18 05:00:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:00:31', '2022-12-17 05:00:31'),
('JMZc0hAILe1Ff_0CtwLKN3JA2uLh7zca', '2022-12-18 05:11:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:11:59', '2022-12-17 05:11:59'),
('JP4807YVGJ4CRDJdMHihmM_FzKsugaWk', '2022-12-18 04:47:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:47:20', '2022-12-17 04:47:20'),
('JpE03Icrut6nv4pFfInVftDdy8VAapBM', '2022-12-18 06:42:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:42:07', '2022-12-17 06:42:07'),
('jWsPuXEm_0EDznxzcYGYP--fhbmPK9VZ', '2022-12-17 13:34:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:34:01', '2022-12-16 13:34:01'),
('jz8ezYeArNyeqhDyK6eeNAZi1u0C4qSc', '2022-12-18 03:15:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:15:31', '2022-12-17 03:15:31'),
('jzdGtdtP6ywPM1tAHbZbyUdMdQwfxS5j', '2022-12-18 05:03:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:03:24', '2022-12-17 05:03:24'),
('jzusG3RCfFYZa8Y1Bzjzio0BBzt0hvFr', '2022-12-17 13:34:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:34:57', '2022-12-16 13:34:57'),
('kegnAmZ3m2Me7PZFeoMmMrMDDCpVwGlY', '2022-12-18 07:01:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:30', '2022-12-17 07:01:30'),
('KjQDFgH624ksYFECNDPrubXy4jEVW3Am', '2022-12-18 05:32:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:32:16', '2022-12-17 05:32:16'),
('kkBSuwaEQjMGnd8HEArNu1g1NXpGCFVl', '2022-12-18 02:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 02:56:09', '2022-12-17 02:56:09'),
('kKuX5NqEKwLdcEhmNIIja6-yT8DcIqzF', '2022-12-18 06:32:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:32:52', '2022-12-17 06:32:52'),
('KMy6pktdCfu7YB_BwL7dCb9uesEAHRaq', '2022-12-18 02:35:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 02:35:00', '2022-12-17 02:35:00'),
('Kse3YIozgZp51xK3gyjp6zCSzTWGITHf', '2022-12-18 03:44:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:44:58', '2022-12-17 03:44:58'),
('KT3_msqBE0TCtr5kLI0G89mayO14AMbl', '2022-12-18 05:07:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:07:01', '2022-12-17 05:07:01'),
('KXPHO3K-RxZpIrkQn3YrSSQbUOrJgipb', '2022-12-18 05:01:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:01:00', '2022-12-17 05:01:00'),
('KztPOHvb9Cjw0B8avp8oi9SKyL2jhhyV', '2022-12-18 06:25:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:22', '2022-12-17 06:25:22'),
('l6sh6XzwxRIrpLx3o3h8AZi_8hR6Xcym', '2022-12-18 06:34:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:34:26', '2022-12-17 06:34:26'),
('l6volo9lIQ_3eIQsaycsQJpIwoglK_To', '2022-12-18 06:18:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:57', '2022-12-17 06:18:57'),
('L8Ryd7hVegdEwzglObMPTwFMobeepqd8', '2022-12-18 05:07:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:07:39', '2022-12-17 05:07:39'),
('lb7-sKcY1ZhDesxU9n2h8UX-NxEL2hFg', '2022-12-18 04:57:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:57:07', '2022-12-17 04:57:07'),
('lmT_c-oAdzu16wTRJqvvWd_I7wHUZ9Q3', '2022-12-18 02:42:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 02:34:52', '2022-12-17 02:42:54'),
('lpXdxqcmUX0PJsTcInnDxVehid10VT52', '2022-12-18 04:32:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:32:55', '2022-12-17 04:32:55'),
('LSlsYl33SIuwPGaZ8udto5YXt2emhnp9', '2022-12-17 12:46:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 12:46:04', '2022-12-16 12:46:04'),
('LUc-WUvX4SeQuttRVv3eprBHtVHM7jIe', '2022-12-17 13:18:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:18:44', '2022-12-16 13:18:44'),
('LvYzXcMmPl6ymfW9DFfrw2nsZx51RR1F', '2022-12-18 06:16:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:16:40', '2022-12-17 06:16:40'),
('m4kHWu-QGrJbj0VZk7_UHXLGyZOtkjjR', '2022-12-17 13:34:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:34:52', '2022-12-16 13:34:52'),
('McRmvuCiUElmCmHzKJeXFOwT3czpyZnK', '2022-12-18 03:47:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:47:59', '2022-12-17 03:47:59'),
('MeVb5kTxQiBaqkVODJcbB1m81OQ5hmKP', '2022-12-18 06:20:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:20:45', '2022-12-17 06:20:45'),
('mggEf21vfRn9dj1GYCLsrwOZw-jKOZPh', '2022-12-18 05:05:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:05:30', '2022-12-17 05:05:30'),
('MkMautdRsBDNvq1yl6ejo92M95KcYB2_', '2022-12-18 06:22:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:22:49', '2022-12-17 06:22:49'),
('MlNUcikX6r3qDPVKQHRgRUwhLVM64R1Y', '2022-12-18 06:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:34:27', '2022-12-17 06:34:27'),
('mMxaZG5XaQxn3k_wz92wo8QgWxTONkQx', '2022-12-18 06:18:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:57', '2022-12-17 06:18:57'),
('ModH_KPnfBNAqf7YGOCga9jmLTkEhhM4', '2022-12-18 03:29:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:29:05', '2022-12-17 03:29:05'),
('mrF0_3Efp85W02qpXPLINWqx_iyAVXP5', '2022-12-18 05:05:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:05:19', '2022-12-17 05:05:19'),
('muIf-RPI37FKv0Cc_-2nEh8bTGgen4CL', '2022-12-17 13:11:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:11:58', '2022-12-16 13:11:58'),
('N2LmcKgfxbXvn0qd_ATNBGf2eU5vGreQ', '2022-12-17 11:35:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 11:35:11', '2022-12-16 11:35:11'),
('Naftb6XFG6XtXbiE6cuxpHzQ2i5xyHjh', '2022-12-18 03:33:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:33:51', '2022-12-17 03:33:51'),
('NbanGdVk_Qib0AVypB-zcvsZuA66r5F2', '2022-12-18 04:56:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:56:44', '2022-12-17 04:56:44'),
('NbVADd_4PcobXJPeavu6rWjk1bsendhe', '2022-12-18 06:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:34:27', '2022-12-17 06:34:27'),
('NCGTyL36qzGDdHFlHKsbT3Vh3e5U5mZ3', '2022-12-18 04:33:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:33:51', '2022-12-17 04:33:51'),
('nGksVsUysbjeHj010ltgKjtyHR1putK5', '2022-12-17 13:21:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-16 12:37:46', '2022-12-16 13:21:16'),
('nlopbMyD471R3dViBAN0MeN5nFyyKLDw', '2022-12-18 03:48:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:48:17', '2022-12-17 03:48:17'),
('nro--bG1am9Hr2bHZByd9GM9VU7J71TY', '2022-12-18 04:31:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:31:19', '2022-12-17 04:31:19'),
('nwvOdU_G93TPzozO1_blnyG4SOyaN8-V', '2022-12-18 04:17:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:17:05', '2022-12-17 04:17:05'),
('nzYaHSguyCdKLCreDFeieGTx-LrSnPVv', '2022-12-18 03:11:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:11:18', '2022-12-17 03:11:18'),
('O6zCg-JGAloCPMvKEZKfdAs7po3fA0a4', '2022-12-17 13:29:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:29:19', '2022-12-16 13:29:19'),
('o8RJ40pTs2it_jxYgT-T-5a4q36lSYBV', '2022-12-18 06:22:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:22:48', '2022-12-17 06:22:48'),
('OAe_AoZuI1UMONZAthh_iVQmPmLzOGqb', '2022-12-18 06:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:34:27', '2022-12-17 06:34:27'),
('OinPGaYdRtWvd04TiKCSxOF7dVxtTOu7', '2022-12-18 03:41:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:41:20', '2022-12-17 03:41:20'),
('oJLuvcwemOxoNpL0SRErOpmW_fexDkFQ', '2022-12-18 05:07:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:07:33', '2022-12-17 05:07:33'),
('ojYZCAQmvYgz5wwUBkjfIYuUNltJNXEC', '2022-12-18 06:44:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 02:55:50', '2022-12-17 06:44:14'),
('oo0sZllvBgunWXTrExvyjSAou01aRWgH', '2022-12-18 03:21:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:21:16', '2022-12-17 03:21:16'),
('OOkA4h1o9txR87-Mo0CJNY8KEKSvntao', '2022-12-18 04:16:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:16:28', '2022-12-17 04:16:28'),
('OufmR3kaTgMDbQl-atqCfq_DwYmU74ez', '2022-12-18 06:14:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:34', '2022-12-17 06:14:34'),
('P4ghooDS3hvPmIGRXRNASCX4Wwv7tKXh', '2022-12-18 06:25:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:22', '2022-12-17 06:25:22'),
('p5Yo1imQVXjAMaPrFClZaXhwWwjXwlt2', '2022-12-18 06:22:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:22:49', '2022-12-17 06:22:49'),
('P9TohYP_e1_lMErHGh639BWjjf29FmMX', '2022-12-18 05:07:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:07:34', '2022-12-17 05:07:34'),
('PLMrraS5YWjplgDD6gGQDe-rZ1Uco7n2', '2022-12-18 03:36:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:36:38', '2022-12-17 03:36:38'),
('pTeSex2J_MS295shNu3xYryJcHtagzlw', '2022-12-18 05:01:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:01:52', '2022-12-17 05:01:52'),
('Ptp_EwMc58wOFemRXF_DOe9x4QxEsm8E', '2022-12-18 06:18:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:25', '2022-12-17 06:18:25'),
('PUdbPxk_Y53T5YFRgayCTtxQepJ0yyHx', '2022-12-18 03:26:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:26:25', '2022-12-17 03:26:25'),
('PuVIXnQNYLTQ-HVcVDqgWni5cuczWjV3', '2022-12-18 07:01:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:52', '2022-12-17 07:01:52'),
('Q2ej3nVBbeF2ZtxXtmQGHz4rxPkc3QcC', '2022-12-17 13:10:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:10:05', '2022-12-16 13:10:05'),
('Q313pAY1OdZ-ma9RI5kHujTIMpyNNCve', '2022-12-18 04:49:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:49:18', '2022-12-17 04:49:18'),
('q3rHN5Lh5UAGZIMT4aDeY8jo68ABGILP', '2022-12-18 06:25:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"ed1775e8-f8a3-4d68-8921-cdc8aed4508e\"}', '2022-12-17 06:25:21', '2022-12-17 06:25:21'),
('q6tdMwMoK7-YozJ6lXV1_olyGBJ4HLot', '2022-12-17 12:05:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 12:05:15', '2022-12-16 12:05:15'),
('QegXrzcXFmWdg78Z3I_jvBOYJC8CV5pc', '2022-12-18 06:42:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:42:07', '2022-12-17 06:42:07'),
('QG62AvD7Yc8T_TOgXOengxjleoW8WWTq', '2022-12-18 03:50:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:50:09', '2022-12-17 03:50:09'),
('QHfQi-STJRZgLVmYsbwHeQqf39oqBNbp', '2022-12-18 03:24:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:24:52', '2022-12-17 03:24:52'),
('qHjfQafiDNdc00rAGRFEoIZJtGGbWisn', '2022-12-18 04:36:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:36:28', '2022-12-17 04:36:28'),
('QhprKrnX02JwRcHjsTKTzA1jI6EBqiMw', '2022-12-18 03:48:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:48:10', '2022-12-17 03:48:10'),
('qjeuBrEvirJGYteI066jg3p7kHglm9k5', '2022-12-18 05:02:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:02:18', '2022-12-17 05:02:18'),
('QN7Hgmv1obOVIYnkGPT92x9-BC1veloc', '2022-12-17 13:22:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:22:49', '2022-12-16 13:22:49'),
('qp_WEUI35xzMDXDI5rbIwDWPFhFYnmkL', '2022-12-18 05:19:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:19:09', '2022-12-17 05:19:09'),
('QQVX8v5hfb9JtYZe3p1-lKBlY0KGO39h', '2022-12-18 07:01:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:52', '2022-12-17 07:01:52'),
('qR1pKtOv81uIqyuimWRKEame8NA0Qedh', '2022-12-18 06:42:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:42:17', '2022-12-17 06:42:17'),
('qshCf2OHHO3W7LFpR7-6GKBlWKXDivrn', '2022-12-17 13:25:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:25:02', '2022-12-16 13:25:02'),
('qTtcu9J_zp2whQBLNtjSojXL9vLnjXx-', '2022-12-18 05:20:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:20:46', '2022-12-17 05:20:46'),
('rCHPPefT5O9Yd4at7Q8KzJoHlUFnfBO8', '2022-12-18 05:07:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:07:01', '2022-12-17 05:07:01');
INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('RfX2Sea-XVeqmI6biwZG-aCma2edEzPr', '2022-12-18 03:24:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:24:43', '2022-12-17 03:24:43'),
('rh57r_FznBn46-jopGmTOd0az_del1u9', '2022-12-18 04:17:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:17:21', '2022-12-17 04:17:21'),
('RJ6N9k7dg-4ksKUWWxITUBrwhXfam0AL', '2022-12-18 04:27:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:27:51', '2022-12-17 04:27:51'),
('RjDwNwtZmoNsW0kdTqSmChZZUsQ1ZY51', '2022-12-18 06:18:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:18:25', '2022-12-17 06:18:25'),
('RPBwGtEB7OwzrBX-ef_Qir5OPdzn9bmy', '2022-12-18 06:14:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:46', '2022-12-17 06:14:46'),
('RUifNU6ApM1oO9BL7eiQmYyHdSpmfGb0', '2022-12-17 13:22:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:22:49', '2022-12-16 13:22:49'),
('RUSjJ5SiXj9Srr0Q15ZtHC1b-sFRyHBx', '2022-12-18 05:20:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:20:30', '2022-12-17 05:20:30'),
('SeGAGq4jJm6duK2g39jrodt2tx_trLs4', '2022-12-18 04:28:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:28:38', '2022-12-17 04:28:38'),
('SeMldDGko8_3TrWT8uvrfvktHbPrxUOe', '2022-12-18 03:20:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:20:31', '2022-12-17 03:20:31'),
('SeU7pT_dCpmgYY65r-MiT7gQhvNDC2BV', '2022-12-18 06:18:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:25', '2022-12-17 06:18:25'),
('sTdO-8LQ3ALj797cgbkC0WYK6PdF6N63', '2022-12-18 03:18:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:18:13', '2022-12-17 03:18:13'),
('su1bMMu9KKhYZYJ8uEM8Jr6PAqekMnfi', '2022-12-18 05:07:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:07:05', '2022-12-17 05:07:05'),
('s_99d1HNfeZF5t6yMnmlYSC6Xe1j_rl2', '2022-12-18 06:18:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:57', '2022-12-17 06:18:57'),
('TcNPi8ZbM08vtk5ZZBe-nVw7RNoqiQle', '2022-12-18 04:57:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:57:59', '2022-12-17 04:57:59'),
('tdcwjF63ATAz0aechQ2M-dNzDXAKMny7', '2022-12-18 07:01:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:52', '2022-12-17 07:01:52'),
('TfXQ7GqRPMcUQtCgEP4hueILYluNE0Oj', '2022-12-18 06:25:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:05', '2022-12-17 06:25:05'),
('TjYWobKwsGnmHoWhPAE0djp8xaDdKfGZ', '2022-12-18 05:02:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:02:06', '2022-12-17 05:02:06'),
('tLujgxvIxPgcCoUhtkOsgEuvhreGi59o', '2022-12-18 06:25:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:22', '2022-12-17 06:25:22'),
('Tr9wB3nsk36jTm27JJ3eGpR4dauIJHB8', '2022-12-18 06:14:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:33', '2022-12-17 06:14:33'),
('tRRpSeYcoSXXfwA_a8XhDX75EjkF3XZ4', '2022-12-18 06:22:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:22:49', '2022-12-17 06:22:49'),
('TSfae0PWgzJXvDZnKEdG9Vuc5_Qt8h8S', '2022-12-18 06:42:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:42:49', '2022-12-17 06:42:49'),
('twKhVxVVLcn8ENXH-SQVYQOwTu42TwMe', '2022-12-17 12:36:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 12:36:58', '2022-12-16 12:36:58'),
('tySf6hb8YwGAzmglEXH5u2bG_rBZz2uk', '2022-12-18 05:34:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:34:17', '2022-12-17 05:34:17'),
('U-2KU3KxMe_p2OMDFd5WQRVzVmhwdxHR', '2022-12-18 06:22:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:22:48', '2022-12-17 06:22:48'),
('U8xppz0hQKNfYLcsvN9EIPy2pdwc5CiN', '2022-12-18 06:33:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:33:10', '2022-12-17 06:33:10'),
('UC5qtmyvwQkszOcKuIgpPHyHkHCQyR0o', '2022-12-18 06:32:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:32:52', '2022-12-17 06:32:52'),
('UcFjqGCeUpk5OaQwwJ1W4f39Ao-Vl25r', '2022-12-18 06:25:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:22', '2022-12-17 06:25:22'),
('uGWc5t2_cRrumtCjEKQMqKmseOASi1LX', '2022-12-18 06:20:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:20:46', '2022-12-17 06:20:46'),
('UIJ57tOrYPGLjDrzOnO5bJNY3Ai_YeAc', '2022-12-18 07:01:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:30', '2022-12-17 07:01:30'),
('uiOT_5V3CQs8PxeP9vXBwNHDSiwbOxgC', '2022-12-18 06:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:34:27', '2022-12-17 06:34:27'),
('umcwVtQRIDkuA8AjXjbzPoHlr3YrCHmM', '2022-12-18 03:25:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:25:01', '2022-12-17 03:25:01'),
('UNX6ZYVR7tIqvzt1esNnzIgaXKTovIeM', '2022-12-18 06:16:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:16:40', '2022-12-17 06:16:40'),
('uOSNGQF5a8Ec56bxmo-ICHoDNZrgKITw', '2022-12-18 07:00:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:50:28', '2022-12-17 07:00:47'),
('urV1qURRScm83gYVyiY17WFnA6iegZKJ', '2022-12-17 13:14:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:14:30', '2022-12-16 13:14:30'),
('USVjWRm7cZctVaODOvbNp2sgPTarnGYI', '2022-12-18 06:20:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:20:46', '2022-12-17 06:20:46'),
('UvtlzGX6EqP-LFWM9SOlytYbCBNnTDzs', '2022-12-18 05:35:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:35:25', '2022-12-17 05:35:25'),
('V-l8eIsiqQ6igwjsQTFWE7km7dIbHghr', '2022-12-18 06:16:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:16:40', '2022-12-17 06:16:40'),
('VU1YO0Jtx463kB5HKDkEFPHvZu9Uf91M', '2022-12-17 13:22:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:22:40', '2022-12-16 13:22:40'),
('Vu2KUslc5vYZJIIgE4mxsdzunlCDB5vE', '2022-12-18 03:48:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:48:10', '2022-12-17 03:48:10'),
('W0ggElP492euDzGljPVUnnJyENhOG9Hm', '2022-12-18 05:23:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:23:45', '2022-12-17 05:23:45'),
('wnL1AUgG6N7GYyBfOQCLPCOUsNTAO2Kp', '2022-12-18 06:20:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:20:46', '2022-12-17 06:20:46'),
('wvTHNIfEx7LFjd0ElE3c899k338-L-jB', '2022-12-18 06:25:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:05', '2022-12-17 06:25:05'),
('WWeBKci6z527CpTjRLHfaxSfT_Gvu6B9', '2022-12-17 12:04:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 12:04:20', '2022-12-16 12:04:20'),
('Ww_eWFZ1YZjE2KUX7kBvTUaxmsB_9vsV', '2022-12-18 04:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:56:09', '2022-12-17 04:56:09'),
('WxShJC030FJAzVdJV0ggU1BEPshTCCR2', '2022-12-18 06:32:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:32:53', '2022-12-17 06:32:53'),
('wxzqY3_2SaV1ReCtbUpp9IcFuIsDQ1mt', '2022-12-18 06:40:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:40:04', '2022-12-17 06:40:04'),
('Wz76Mm5ZMX9Y3Tpbl64Chb3IY6XJD4KU', '2022-12-18 07:01:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 07:01:30', '2022-12-17 07:01:30'),
('WZUMQKZYH7eppgxa5B8nacZzOkDwHBSO', '2022-12-18 06:25:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:22', '2022-12-17 06:25:22'),
('x2kf88UE_4KszMFFYC7t6oBCx6qUc_Rl', '2022-12-18 05:36:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:36:48', '2022-12-17 05:36:48'),
('XByR80u3bO4hS32BVY2I6YTUFmR6LoIq', '2022-12-18 03:16:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:16:54', '2022-12-17 03:16:54'),
('xcF6XdkkbTjaD6hBWbiQVH7f0O0Fzh4-', '2022-12-18 05:02:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:02:49', '2022-12-17 05:02:49'),
('xfIfCKvR02QLJy_4hWgD9BLasMkb9IjC', '2022-12-17 13:19:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:19:21', '2022-12-16 13:19:21'),
('xg-TXo3ZBnZ5S3hgBfrSBtx4y59BxI0O', '2022-12-18 06:32:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:32:53', '2022-12-17 06:32:53'),
('xKrOVuNr4bGmMQew-6fTqPsdyvEgOe-7', '2022-12-18 06:14:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:34', '2022-12-17 06:14:34'),
('Xlr7fUB5XF-mvADLKuujoEeakjgWr2Gd', '2022-12-18 07:01:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:52', '2022-12-17 07:01:52'),
('XrMGNla11fqiOnLxHvRQXTvyX4YcRnJv', '2022-12-18 04:46:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:46:46', '2022-12-17 04:46:46'),
('XX0aav2kQv2JvNYs8S3hWSC1VQvSqpBY', '2022-12-18 05:58:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:58:34', '2022-12-17 05:58:34'),
('Y-tbs06xzx9I6xZ315T_exdvRI5q0axp', '2022-12-18 06:24:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:24:22', '2022-12-17 06:24:22'),
('y0av0J5w-FjKIU_eGoXaarIVTH3sDORT', '2022-12-18 05:04:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:04:32', '2022-12-17 05:04:32'),
('yDbRezcO-0o-ubaTWL-4CFeNyR_82rx7', '2022-12-18 05:34:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 05:34:32', '2022-12-17 05:34:32'),
('yeOpb3DEIL-QD5g_cgvDmpS53TmteFXg', '2022-12-18 06:18:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:18:57', '2022-12-17 06:18:57'),
('YkcoEOA4TlT5FufJ8PokfBdwr3I157Xv', '2022-12-18 03:12:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:12:34', '2022-12-17 03:12:34'),
('yLWRRt1QNKjx8P_iweP0W52u8GgqgqFX', '2022-12-18 06:25:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:25:05', '2022-12-17 06:25:05'),
('yWfz8f8g_Oqo8XD7S4NlcbKgW0j1Rym5', '2022-12-17 13:35:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:35:15', '2022-12-16 13:35:15'),
('Yxotc6rcg1VpuyBsFSPOCpq85qfThKkr', '2022-12-18 06:16:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:16:40', '2022-12-17 06:16:40'),
('Z-MNgOy5kFB1o8lmtMZ8INx2xBafYNJU', '2022-12-18 03:29:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:29:05', '2022-12-17 03:29:05'),
('Z0puuksBcSR-LcsaZ82V6ZwuDO-5ONXi', '2022-12-17 13:29:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:29:10', '2022-12-16 13:29:10'),
('Z1BOBAyJ5bsTItanL4IAdWlzGCUg_fcB', '2022-12-18 03:28:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:28:40', '2022-12-17 03:28:40'),
('Z3WWOaCksrv-dRY8q3zc69ficD3dOotG', '2022-12-18 06:14:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:34', '2022-12-17 06:14:34'),
('Z9v8ezBBJu8L8-j41L0KiaURUQpBeHCC', '2022-12-18 07:01:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:52', '2022-12-17 07:01:52'),
('zA8IKG3okYFBGgm680uy9WgASkMRM1kO', '2022-12-17 13:35:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:35:17', '2022-12-16 13:35:17'),
('ZcfJG55OKazwGckVH3FrKWsJUJoVj_GT', '2022-12-18 06:14:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:46', '2022-12-17 06:14:46'),
('zJURgOFWiz2xafPk4Bpm6QrdQy3nupqh', '2022-12-18 06:40:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:40:04', '2022-12-17 06:40:04'),
('zLQV6r4FUmw2CcmUCKkddwu7TF_6eG2r', '2022-12-18 06:40:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:40:04', '2022-12-17 06:40:04'),
('ZMGJkHTf8zWD_J5gjcIUWKf_6miR2EW1', '2022-12-17 12:07:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 12:07:41', '2022-12-16 12:07:41'),
('ZnjWlYPjCRmVWEI_ee-Z8rjKpVMdKx9I', '2022-12-18 03:20:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:20:45', '2022-12-17 03:20:45'),
('ZqD7bmQZCPUqoDqqZeTJpBDjPZM0a1fW', '2022-12-18 06:20:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:20:46', '2022-12-17 06:20:46'),
('ZuB7CzKm0eoNQRxCzcs6NlU2ykpOA7uq', '2022-12-17 12:36:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 12:36:58', '2022-12-16 12:36:58'),
('ZuLrszGadt6Lres2OM_Y0DQoKAoEAopK', '2022-12-18 06:14:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:14:46', '2022-12-17 06:14:46'),
('_1dW-Arh6PBm32FibFs7DxZSaHubZlQ1', '2022-12-18 03:19:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 03:19:20', '2022-12-17 03:19:20'),
('_4UXori8UnAar4BVz5es2Bcc56UMIY77', '2022-12-17 13:34:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-16 13:34:02', '2022-12-16 13:34:02'),
('_aENsue8kbvabyV4IVGL8h2bHxv-MN8v', '2022-12-18 04:31:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 04:31:45', '2022-12-17 04:31:45'),
('_b8Heif50f9Y43K9JP7tjIAFJ-9hL8Vg', '2022-12-18 02:55:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 02:55:57', '2022-12-17 02:55:57'),
('_drX1Wy_ZXRR6k1DDw8JCNO-hsFH65Y8', '2022-12-18 06:25:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"aeaa4cd3-4e70-458c-88c0-c1028b640191\"}', '2022-12-17 06:25:05', '2022-12-17 06:25:05'),
('_l8G8qI1fVVio29qPZBe0tCFbxzLr6ao', '2022-12-18 07:01:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 07:01:03', '2022-12-17 07:01:03'),
('_t7QhuZ_vtJkS2wgFzUU_In_D9TtvKF7', '2022-12-18 06:16:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-12-17 06:16:40', '2022-12-17 06:16:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profileImage` varchar(255) NOT NULL DEFAULT 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `phoneNumber`, `gender`, `password`, `profileImage`, `createdAt`, `updatedAt`, `roleId`) VALUES
(1, 'aeaa4cd3-4e70-458c-88c0-c1028b640191', 'admin maskurnia', 'maskuradmin@gmail.com', '6287861130080', 'L', '$argon2id$v=19$m=65536,t=3,p=4$EpTneuj6wMwi9JXTYefMRQ$3Uh4lPJiNi231s3Ua16L2ZhjEMh0OVfDbiDlE3Gnij0', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png', '2022-11-16 14:38:43', '2022-12-17 05:07:47', 1),
(35, 'ed1775e8-f8a3-4d68-8921-cdc8aed4508e', 'dokter maskur', 'maskurshidi12@gmail.com', '087861130080', 'L', '$argon2id$v=19$m=65536,t=3,p=4$FJeFiaK5bi+nFqpcxEzZoA$p9Ho5cBVgZp/Lur/zxAyiQoRoemRY4xPBTWqaHxSVJI', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png', '2022-12-16 11:35:11', '2022-12-16 11:35:11', 2),
(37, 'b2c1ae7c-9a37-4890-9dd4-0e634107a1b8', 'dokter maskurnia sh', 'dokternia12@gmail.com', '628786113008990', 'L', '$argon2id$v=19$m=65536,t=3,p=4$pFVXMJMhYm4ByjjuqhUGVg$PPNWplgloAs05gFQjPyEQZ4hgs5GrL+7i3mEPi7QHmE', 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png', '2022-12-16 12:36:58', '2022-12-16 13:30:14', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dicoms`
--
ALTER TABLE `dicoms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patientId` (`patientId`);

--
-- Indeks untuk tabel `dicom_sessions`
--
ALTER TABLE `dicom_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userId` (`userId`),
  ADD UNIQUE KEY `strNumber` (`strNumber`);

--
-- Indeks untuk tabel `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `medicalRecordNumber` (`medicalRecordNumber`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleId` (`roleId`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`),
  ADD KEY `roleId` (`roleId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dicoms`
--
ALTER TABLE `dicoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `dicom_sessions`
--
ALTER TABLE `dicom_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dicoms`
--
ALTER TABLE `dicoms`
  ADD CONSTRAINT `dicoms_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
