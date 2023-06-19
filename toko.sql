-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2023 pada 10.56
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(8, 'AIKO SHIRT BLOUSE', 'Material Rayon', 'pakaian wanita', 80000, 200, 'atasan1.jpg'),
(9, 'LESTARI BLOUSE ', 'cotton waffle', 'pakaian wanita', 60000, 50, 'atasan2.jpg'),
(10, 'ADISTI BASIC BLOUSE', 'cotton waffle', 'pakaian wanita', 70000, 99, 'atasan3.jpg'),
(11, 'PUFFY TOP BLOUSE', 'Material Katun', 'pakaian wanita', 95000, 999, 'atasan4.jpg'),
(12, 'COMFY BLOUSE', 'Rayon', 'pakaian wanita', 105000, 89, 'atasan5.jpg'),
(13, 'NADIN DRESS', 'Santorini Silk', 'pakaian wanita', 150000, 89, 'drees7.jpg'),
(14, 'HAZEL POLO LINEN', 'Polo Linen', 'pakaian wanita', 175000, 65, 'dress1.jpg'),
(15, 'AIMEL FISHTAIL MAXI', 'Katun Poly', 'pakaian wanita', 169000, 65, 'dress2.jpg'),
(16, 'MAMARA RETRO', 'Katun Poilester Import', 'pakaian wanita', 197000, 54, 'dress3.jpg'),
(17, 'AMIRAH DRESS', 'Shakila Premium', 'pakaian wanita', 162000, 33, 'dress4.jpg'),
(18, 'KIRANIA DRESS', 'Crinkle', 'pakaian wanita', 139000, 11, 'dress6.jpg'),
(19, 'SIVALI OLIA', 'Polyester Premium', 'pakaian wanita', 92000, 76, 'rok2.jpg'),
(20, 'ASOKA YOORA', 'Polyester Premium', 'pakaian wanita', 85000, 65, 'rok3.jpg'),
(21, 'LIYONA WRAP SKIRT', 'Lady Crush', 'pakaian wanita', 105000, 43, 'rok1.jpg'),
(22, 'JELLO SKIRT', 'Polyester Premium', 'pakaian wanita', 76000, 14, 'rok4.jpg'),
(23, 'KULOT LINEN', 'Linen', 'pakaian wanita', 86000, 18, 'celana1.jpg'),
(24, 'HIGHTWIST KULLOT', 'American Drill', 'pakaian wanita', 105000, 77, 'celana2.jpg'),
(25, 'SIVALI LOOSE', 'Jeans', 'pakaian wanita', 98000, 45, 'celana3.jpg'),
(26, 'ART MIZUO T-SHIRT', 'Cotton 24s', 'pakaian pria', 72000, 70, '12.jpg'),
(27, 'ART BUDAYA T-SHIRT', 'Cotton 24s', 'pakaian pria', 85000, 65, '2.jpg'),
(28, 'STAY CHILL T-SHIRT', 'Cotton Co,mebad 30s', 'pakaian pria', 86000, 90, '3.jpg'),
(29, 'KAOS OVERSIZE T-SHIRT', 'Cotton Comebad 30s', 'pakaian pria', 60000, 50, '4.jpg'),
(30, 'SKATE PUTIH T-SHIRT', 'Cotton Comebad 30s', 'pakaian pria', 75000, 70, '7.jpg'),
(31, 'CHINO PANJANG', 'Twill Stretch', 'pakaian pria', 83000, 50, '8.jpg'),
(32, 'CARNOS', 'Carnos Rivers Cargo', 'pakaian pria', 178000, 88, '9.jpg'),
(33, 'HLGN JACKET', 'Polyester', 'pakaian pria', 225000, 65, '18.jpg'),
(34, 'HOODIE HLGN', 'Polyester', 'pakaian pria', 225000, 44, '19.jpg'),
(35, 'SWEATER ONIXE', 'Katun Pleece', 'pakaian pria', 97000, 68, '14.jpg'),
(36, 'DRESS ANAK', 'Toyobo', 'pakaian anak anak', 96000, 65, '13.jpg'),
(37, 'PIYAMA KARAKTER', 'Polyester', 'pakaian anak anak', 165000, 65, '41.jpg'),
(38, '1 SET PEREMPUAN', 'Cotton 24s', 'pakaian anak anak', 168000, 45, '10.jpg'),
(39, '1 SET PEREMPUAN 2', 'Polyester+Jeans', 'pakaian anak anak', 178000, 85, '111.jpg'),
(40, '1 SET LAKI-LAKI-1', 'Polyester', 'pakaian anak anak', 185000, 33, '121.jpg'),
(41, 'LEO KIDS KEMEJA', 'cotton waffle', 'pakaian anak anak', 73000, 40, '15.jpg'),
(42, 'YMF SETELAN SWEATER', 'Bahan Babyterry', 'pakaian anak anak', 115000, 60, '23.jpg'),
(43, 'ENZIO SET ANAK LAKI LAKI', 'Katun premium', 'pakaian anak anak', 130000, 40, '31.jpg'),
(44, 'PLAT SHOES ANAK PEREMPUAN', 'Rubber', 'pakaian anak anak', 150000, 20, '42.jpg'),
(45, 'MINIPETITE FLATSHOES', 'Leather', 'pakaian anak anak', 90000, 25, '51.jpg'),
(46, 'MISIUS PANDORA', 'Leather', 'pakaian anak anak', 150000, 27, '6.jpg'),
(47, 'SEPATU GUCCI ANAK', 'Kulit Sintetis', 'pakaian anak anak', 220000, 29, '71.jpg'),
(48, 'SEPATU ANAK LAKI-LAKI', 'Kulit Sintetis', 'pakaian anak anak', 260000, 41, '81.jpg'),
(49, 'SNEAKERS ANAK ', 'Kanvas, Kulit Sintetis', 'pakaian anak anak', 240000, 21, '91.jpg'),
(50, 'MALIKA SET GAMIS', 'Crinkle Airflow', 'pakaian anak anak', 170000, 38, '101.jpg'),
(51, 'ZARINA DRESS', 'cotton waffle', 'pakaian anak anak', 140000, 86, '112.jpg'),
(52, 'KIMBERLY DRESS ANAK', 'Crinkle', 'pakaian anak anak', 130000, 45, '122.jpg'),
(53, 'ADAM KOKO SET', 'Premium Cotton Twill', 'pakaian anak anak', 160000, 31, '131.jpg'),
(54, 'APPLEKIDZ SET ', 'Katun Madina', 'pakaian anak anak', 150000, 54, '141.jpg'),
(55, 'KOKO KURTA SET', 'Katun Madina', 'pakaian anak anak', 180000, 50, '151.jpg'),
(56, 'SHORT SHIRT RAYON', 'Kain Rayon', 'pakaian pria', 99000, 200, '16.jpg'),
(57, 'BROODIS KEMEJA BASIC', 'Katun', 'pakaian pria', 112000, 89, '24.jpg'),
(58, 'KEMEJA TENUE DE ATTIRE', 'Toyobo dan Lainnya', 'pakaian pria', 170000, 89, '43.jpg'),
(59, 'CELANA FORMAL SLIMFIT', 'Bahan Wol', 'pakaian pria', 75000, 54, '52.jpg'),
(60, 'CELANA ANKLE PANTS', 'Retro Street Style', 'pakaian pria', 76000, 200, '61.jpg'),
(61, 'CELANA SLIMFIT', 'Wol', 'pakaian pria', 180000, 65, '72.jpg'),
(62, 'MAXI BLACK SEPATU', 'Kulit Matte', 'pakaian pria', 256000, 46, '82.jpg'),
(63, 'PENTOFEL PRIA POLOS', 'Kulit Hewan Eksotis', 'pakaian pria', 225000, 54, '92.jpg'),
(64, 'SEPATU CASUAL PRIA', 'Kulit Sapi', 'pakaian pria', 390000, 200, '102.jpg'),
(65, 'HOUSEOFCUFF JAS PRIA', 'Semi Wool Berkualitas', 'pakaian pria', 420000, 24, '113.jpg'),
(66, 'JAS BLEZER PRIA', 'Hightwist Premium Coklat', 'pakaian pria', 350000, 71, '123.jpg'),
(67, 'CODE MALE JAS BLEZER', 'Hightwist Premium ', 'pakaian pria', 392000, 96, '132.jpg'),
(68, 'OUTWEAR JACKET', 'Goretex 2.5|', 'pakaian pria', 245000, 48, '142.jpg'),
(69, 'JAKET TAD BLUE KNIGHT', 'Softshell Sharkskin', 'pakaian pria', 289000, 54, '152.jpg'),
(70, 'OUTWEAR JACKET - STALINGARD', 'Crinkle', 'pakaian pria', 267000, 17, '161.jpg'),
(71, 'TOPI BASEBALL NARSON', 'Cotton, Polyseter etc', 'pakaian pria', 735000, 29, '17.jpg'),
(72, 'DELIBRA TOPI PRIA POLOS', 'Raffel Daimaru Premium', 'pakaian pria', 139000, 23, '181.jpg'),
(73, 'TOPI SUMMER MADNESS', 'Katun', 'pakaian pria', 99000, 57, '191.jpg'),
(74, 'SNEAKERS AEKOSHOES', 'Bahan Canvas Insole', 'pakaian pria', 245000, 71, '20.jpg'),
(75, 'SNEAKERS PRIA IMPORT', 'Polyurethane', 'pakaian pria', 310000, 64, '211.jpg'),
(76, 'SEPATU AIR FOCE ', 'Katun Poilester Import', 'pakaian pria', 442000, 85, '221.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(1) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(3, 3, 7, 'sepatu baru', 1, 200000, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '12345', 1),
(2, 'halwa', 'halwaqurani', '23456', 2),
(3, 'a', 'a', 'a', 1),
(4, 'a', 'a', 'a', 2),
(5, 'b', 'b', 'b', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
