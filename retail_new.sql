-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: 02 Apr 2019 pada 13.14
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `retail_new`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamatpelanggan`
--

CREATE TABLE `alamatpelanggan` (
  `KodePelanggan` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Kota` varchar(100) NOT NULL,
  `Provinsi` varchar(100) NOT NULL,
  `Negara` varchar(100) NOT NULL,
  `Faks` varchar(100) NOT NULL,
  `Telepon` varchar(100) NOT NULL,
  `NoIndeks` int(11) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `alatbayarkasir`
--

CREATE TABLE `alatbayarkasir` (
  `KodeAlatBayarKasir` varchar(100) NOT NULL,
  `UntukPembayaran` varchar(100) NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(10) NOT NULL,
  `NominalPPN` double NOT NULL,
  `Bayar` double NOT NULL,
  `Kembali` double NOT NULL,
  `Ongkir` double NOT NULL,
  `KodeJenisBayar` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `NomorRekening` varchar(100) NOT NULL,
  `NamaBank` varchar(100) NOT NULL,
  `Nomor` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `driver`
--

CREATE TABLE `driver` (
  `KodeDriver` varchar(100) NOT NULL,
  `NamaDriver` varchar(100) NOT NULL,
  `Kontak` varchar(100) NOT NULL,
  `Handphone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `NIK` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `eventlog`
--

CREATE TABLE `eventlog` (
  `KodeUser` varchar(100) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam` time NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `Tipe` varchar(10) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hutang`
--

CREATE TABLE `hutang` (
  `KodeHutang` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodeSupplier` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeLPB` varchar(100) NOT NULL,
  `Invoice` varchar(100) NOT NULL,
  `Jumlah` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Term` double NOT NULL,
  `Koreksi` varchar(100) NOT NULL,
  `Kembali` varchar(10) NOT NULL,
  `InvoiceSupplier` varchar(100) NOT NULL,
  `TanggalInvoiceSupplier` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoicehutang`
--

CREATE TABLE `invoicehutang` (
  `KodeInvoiceHutang` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodeSupplier` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Total` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Term` double NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoicehutangdetail`
--

CREATE TABLE `invoicehutangdetail` (
  `KodeHutang` varchar(100) NOT NULL,
  `KodeLPB` varchar(100) NOT NULL,
  `Subtotal` double NOT NULL,
  `KodeInvoiceHutang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoicepiutang`
--

CREATE TABLE `invoicepiutang` (
  `KodeInvoicePiutang` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodePelanggan` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Total` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Term` double NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoicepiutangdetail`
--

CREATE TABLE `invoicepiutangdetail` (
  `KodePiutang` varchar(100) NOT NULL,
  `KodeSuratJalan` varchar(100) NOT NULL,
  `Subtotal` double NOT NULL,
  `KodeInvoicePiutang` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invopname`
--

CREATE TABLE `invopname` (
  `Tanggal` datetime NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) NOT NULL,
  `qtyOPN` double NOT NULL,
  `qtyIN` double NOT NULL,
  `qtyOUT` double NOT NULL,
  `qtyInHand` double NOT NULL,
  `qtyOpname` double NOT NULL,
  `qtyBlc` double NOT NULL,
  `HargaRata` double NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `KodeItem` varchar(100) NOT NULL,
  `KodeKategori` varchar(100) NOT NULL,
  `NamaItem` varchar(100) NOT NULL,
  `Alias` varchar(100) NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `itemkonversi`
--

CREATE TABLE `itemkonversi` (
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) NOT NULL,
  `Konversi` double NOT NULL,
  `HargaBeli` double NOT NULL,
  `HargaJual` double NOT NULL,
  `HargaGrosir` double NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenisbayar`
--

CREATE TABLE `jenisbayar` (
  `KodeJenisBayar` varchar(100) NOT NULL,
  `JenisBayar` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasbank`
--

CREATE TABLE `kasbank` (
  `KodeKasBank` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Status` varchar(100) NOT NULL,
  `TanggalCheque` date NOT NULL,
  `KodeBayar` varchar(100) NOT NULL,
  `TipeBayar` varchar(100) NOT NULL,
  `NoLink` varchar(100) NOT NULL,
  `BayarDari` varchar(100) NOT NULL,
  `Untuk` varchar(100) NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Tipe` varchar(10) NOT NULL,
  `Total` double NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `KodeKategori` varchar(100) NOT NULL,
  `NamaKategori` varchar(100) NOT NULL,
  `KodeItemAwal` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluarmasukbarang`
--

CREATE TABLE `keluarmasukbarang` (
  `Tanggal` datetime NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `JenisTransaksi` varchar(100) NOT NULL,
  `KodeTransaksi` varchar(100) NOT NULL,
  `Qty` double NOT NULL,
  `HargaRata` double NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `idx` bigint(255) NOT NULL,
  `indexmov` bigint(20) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `KodeLokasi` varchar(100) NOT NULL,
  `NamaLokasi` varchar(100) NOT NULL,
  `Tipe` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasiitem`
--

CREATE TABLE `lokasiitem` (
  `KodeLokasi` varchar(100) NOT NULL,
  `Qty` double NOT NULL,
  `Konversi` double NOT NULL,
  `HargaRata` double NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matauang`
--

CREATE TABLE `matauang` (
  `KodeMataUang` varchar(100) NOT NULL,
  `NamaMataUang` varchar(100) NOT NULL,
  `Nilai` double NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `KodePelanggan` varchar(100) NOT NULL,
  `NamaPelanggan` varchar(100) NOT NULL,
  `Kontak` varchar(100) NOT NULL,
  `Handphone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `NIK` varchar(100) NOT NULL,
  `LimitPiutang` double NOT NULL,
  `Diskon` double NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelunasanhutang`
--

CREATE TABLE `pelunasanhutang` (
  `KodePelunasanHutang` varchar(100) NOT NULL,
  `Tanggal` date NOT NULL,
  `Status` varchar(100) NOT NULL,
  `KodeHutang` varchar(100) NOT NULL,
  `KodeInvoice` varchar(100) NOT NULL,
  `KodeBayar` varchar(100) NOT NULL,
  `TipeBayar` varchar(100) NOT NULL,
  `Jumlah` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `KodeSupplier` varchar(100) NOT NULL,
  `KodeKasBank` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelunasanpiutang`
--

CREATE TABLE `pelunasanpiutang` (
  `KodePelunasanPiutang` varchar(100) NOT NULL,
  `Tanggal` date NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodePiutang` varchar(100) NOT NULL,
  `KodeInvoice` varchar(100) NOT NULL,
  `KodeBayar` varchar(100) NOT NULL,
  `TipeBayar` varchar(100) NOT NULL,
  `Jumlah` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `KodePelanggan` varchar(100) NOT NULL,
  `KodeKasBank` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelianlangsung`
--

CREATE TABLE `pembelianlangsung` (
  `KodePembelianLangsung` varchar(100) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(10) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelianlangsungdetail`
--

CREATE TABLE `pembelianlangsungdetail` (
  `KodePembelianLangsung` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) NOT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `Subtotal` double NOT NULL,
  `Diskon` double NOT NULL,
  `NIlaiDiskon` double NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesananpembelian`
--

CREATE TABLE `pemesananpembelian` (
  `KodePO` varchar(100) NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(10) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodeSupplier` varchar(100) NOT NULL,
  `Expired` double NOT NULL,
  `Tanggal` datetime NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesananpenjualan`
--

CREATE TABLE `pemesananpenjualan` (
  `KodeSO` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(10) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodePelanggan` varchar(100) NOT NULL,
  `Expired` double NOT NULL,
  `KodeSales` varchar(100) NOT NULL,
  `POPelanggan` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualanlangsung`
--

CREATE TABLE `penjualanlangsung` (
  `KodePenjualanLangsung` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(10) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodePelanggan` varchar(100) NOT NULL,
  `NoIndeks` int(11) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualanlangsungdetail`
--

CREATE TABLE `penjualanlangsungdetail` (
  `KodePenjualanLangsung` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) NOT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `Subtotal` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualanlangsungreturn`
--

CREATE TABLE `penjualanlangsungreturn` (
  `KodePenjualanLangsungReturn` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodePenjualanLangsung` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(10) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodePelanggan` varchar(100) NOT NULL,
  `NoIndeks` int(11) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualanlangsungreturndetail`
--

CREATE TABLE `penjualanlangsungreturndetail` (
  `KodePenjualanLangsungReturnDetail` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) NOT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `Subtotal` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pindahgudang`
--

CREATE TABLE `pindahgudang` (
  `KodePindah` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `DariLokasi` varchar(100) NOT NULL,
  `KeLokasi` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pindahgudangdetail`
--

CREATE TABLE `pindahgudangdetail` (
  `KodePindah` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) NOT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `piutang`
--

CREATE TABLE `piutang` (
  `KodePiutang` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodePelanggan` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeSuratJalan` varchar(100) NOT NULL,
  `Invoice` varchar(10) NOT NULL,
  `Jumlah` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Term` double NOT NULL,
  `Koreksi` varchar(10) NOT NULL,
  `Kembali` varchar(10) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `KodeSales` varchar(100) NOT NULL,
  `NamaSales` varchar(100) NOT NULL,
  `Kontak` varchar(100) NOT NULL,
  `Handphone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `NIK` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `KodeSatuan` varchar(100) NOT NULL,
  `NamaSatuan` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokkeluar`
--

CREATE TABLE `stokkeluar` (
  `KodeStokKeluar` varchar(100) NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `TotalItem` double NOT NULL,
  `Printed` double NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokkeluardetail`
--

CREATE TABLE `stokkeluardetail` (
  `KodeStokKeluar` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) NOT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokmasuk`
--

CREATE TABLE `stokmasuk` (
  `KodeStokMasuk` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `TotalItem` double NOT NULL,
  `Printed` double NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokmasukdetail`
--

CREATE TABLE `stokmasukdetail` (
  `KodeStokMasuk` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) NOT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `KodeSupplier` varchar(100) NOT NULL,
  `NamaSupplier` varchar(100) NOT NULL,
  `Kontak` varchar(100) NOT NULL,
  `Handphone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `NIK` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Kota` varchar(100) NOT NULL,
  `Provinsi` varchar(100) NOT NULL,
  `Negara` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratjalan`
--

CREATE TABLE `suratjalan` (
  `KodeSuratJalan` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeMataUang` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(10) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodePelanggan` varchar(100) NOT NULL,
  `NoIndeks` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratjalandetail`
--

CREATE TABLE `suratjalandetail` (
  `KodeSuratJalan` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) NOT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratjalanreturn`
--

CREATE TABLE `suratjalanreturn` (
  `KodeSuratJalan` varchar(100) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Status` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(10) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodeSuratJalanReturn` varchar(100) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `KodeUser` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `NamaUser` varchar(100) NOT NULL,
  `TanggalDaftar` datetime NOT NULL,
  `Aktif` varchar(10) NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `updated_at` timestamp(2) NOT NULL DEFAULT '0000-00-00 00:00:00.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamatpelanggan`
--
ALTER TABLE `alamatpelanggan`
  ADD KEY `KodePelanggan` (`KodePelanggan`);

--
-- Indexes for table `alatbayarkasir`
--
ALTER TABLE `alatbayarkasir`
  ADD PRIMARY KEY (`KodeAlatBayarKasir`),
  ADD KEY `KodeJenisBayar` (`KodeJenisBayar`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`NomorRekening`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`KodeDriver`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `eventlog`
--
ALTER TABLE `eventlog`
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`KodeHutang`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodeUser` (`KodeUser`),
  ADD KEY `KodeSupplier` (`KodeSupplier`);

--
-- Indexes for table `invoicehutang`
--
ALTER TABLE `invoicehutang`
  ADD PRIMARY KEY (`KodeInvoiceHutang`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodeSupplier` (`KodeSupplier`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `invoicehutangdetail`
--
ALTER TABLE `invoicehutangdetail`
  ADD KEY `KodeHutang` (`KodeHutang`),
  ADD KEY `KodeInvoiceHutang` (`KodeInvoiceHutang`);

--
-- Indexes for table `invoicepiutang`
--
ALTER TABLE `invoicepiutang`
  ADD PRIMARY KEY (`KodeInvoicePiutang`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodePelanggan` (`KodePelanggan`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `invoicepiutangdetail`
--
ALTER TABLE `invoicepiutangdetail`
  ADD KEY `KodeInvoicePiutang` (`KodeInvoicePiutang`),
  ADD KEY `KodePiutang` (`KodePiutang`),
  ADD KEY `KodeSuratJalan` (`KodeSuratJalan`);

--
-- Indexes for table `invopname`
--
ALTER TABLE `invopname`
  ADD KEY `KodeItem` (`KodeItem`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeSatuan` (`KodeSatuan`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`KodeItem`),
  ADD KEY `KodeUser` (`KodeUser`),
  ADD KEY `KodeKategori` (`KodeKategori`);

--
-- Indexes for table `itemkonversi`
--
ALTER TABLE `itemkonversi`
  ADD KEY `KodeItem` (`KodeItem`),
  ADD KEY `KodeSatuan` (`KodeSatuan`);

--
-- Indexes for table `jenisbayar`
--
ALTER TABLE `jenisbayar`
  ADD PRIMARY KEY (`KodeJenisBayar`);

--
-- Indexes for table `kasbank`
--
ALTER TABLE `kasbank`
  ADD PRIMARY KEY (`KodeKasBank`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`KodeKategori`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `keluarmasukbarang`
--
ALTER TABLE `keluarmasukbarang`
  ADD PRIMARY KEY (`KodeTransaksi`),
  ADD KEY `KodeItem` (`KodeItem`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`KodeLokasi`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `lokasiitem`
--
ALTER TABLE `lokasiitem`
  ADD KEY `KodeLokasi` (`KodeLokasi`);

--
-- Indexes for table `matauang`
--
ALTER TABLE `matauang`
  ADD PRIMARY KEY (`KodeMataUang`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`KodePelanggan`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `pelunasanhutang`
--
ALTER TABLE `pelunasanhutang`
  ADD PRIMARY KEY (`KodePelunasanHutang`),
  ADD KEY `KodeHutang` (`KodeHutang`),
  ADD KEY `KodeInvoice` (`KodeInvoice`),
  ADD KEY `KodeKasBank` (`KodeKasBank`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodeSupplier` (`KodeSupplier`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `pelunasanpiutang`
--
ALTER TABLE `pelunasanpiutang`
  ADD PRIMARY KEY (`KodePelunasanPiutang`),
  ADD KEY `KodeInvoice` (`KodeInvoice`),
  ADD KEY `KodeKasBank` (`KodeKasBank`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodePelanggan` (`KodePelanggan`),
  ADD KEY `KodePiutang` (`KodePiutang`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `pembelianlangsung`
--
ALTER TABLE `pembelianlangsung`
  ADD PRIMARY KEY (`KodePembelianLangsung`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodeUser` (`KodeUser`),
  ADD KEY `KodeLokasi` (`KodeLokasi`);

--
-- Indexes for table `pembelianlangsungdetail`
--
ALTER TABLE `pembelianlangsungdetail`
  ADD PRIMARY KEY (`KodePembelianLangsung`),
  ADD KEY `KodeItem` (`KodeItem`),
  ADD KEY `KodeSatuan` (`KodeSatuan`);

--
-- Indexes for table `pemesananpembelian`
--
ALTER TABLE `pemesananpembelian`
  ADD PRIMARY KEY (`KodePO`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodeSupplier` (`KodeSupplier`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `pemesananpenjualan`
--
ALTER TABLE `pemesananpenjualan`
  ADD PRIMARY KEY (`KodeSO`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodePelanggan` (`KodePelanggan`),
  ADD KEY `KodeSales` (`KodeSales`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `penjualanlangsung`
--
ALTER TABLE `penjualanlangsung`
  ADD PRIMARY KEY (`KodePenjualanLangsung`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeUser` (`KodeUser`),
  ADD KEY `KodePelanggan` (`KodePelanggan`);

--
-- Indexes for table `penjualanlangsungdetail`
--
ALTER TABLE `penjualanlangsungdetail`
  ADD KEY `KodeItem` (`KodeItem`),
  ADD KEY `KodePenjualanLangsung` (`KodePenjualanLangsung`),
  ADD KEY `KodeSatuan` (`KodeSatuan`);

--
-- Indexes for table `penjualanlangsungreturn`
--
ALTER TABLE `penjualanlangsungreturn`
  ADD PRIMARY KEY (`KodePenjualanLangsungReturn`),
  ADD KEY `KodePenjualanLangsung` (`KodePenjualanLangsung`),
  ADD KEY `KodeUser` (`KodeUser`),
  ADD KEY `KodePelanggan` (`KodePelanggan`);

--
-- Indexes for table `penjualanlangsungreturndetail`
--
ALTER TABLE `penjualanlangsungreturndetail`
  ADD PRIMARY KEY (`KodePenjualanLangsungReturnDetail`),
  ADD KEY `KodeItem` (`KodeItem`),
  ADD KEY `KodeSatuan` (`KodeSatuan`);

--
-- Indexes for table `pindahgudang`
--
ALTER TABLE `pindahgudang`
  ADD PRIMARY KEY (`KodePindah`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `pindahgudangdetail`
--
ALTER TABLE `pindahgudangdetail`
  ADD KEY `KodePindah` (`KodePindah`),
  ADD KEY `KodeItem` (`KodeItem`),
  ADD KEY `KodeSatuan` (`KodeSatuan`);

--
-- Indexes for table `piutang`
--
ALTER TABLE `piutang`
  ADD PRIMARY KEY (`KodePiutang`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodePelanggan` (`KodePelanggan`),
  ADD KEY `KodeSuratJalan` (`KodeSuratJalan`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`KodeSales`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`KodeSatuan`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `stokkeluar`
--
ALTER TABLE `stokkeluar`
  ADD PRIMARY KEY (`KodeStokKeluar`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `stokkeluardetail`
--
ALTER TABLE `stokkeluardetail`
  ADD KEY `KodeItem` (`KodeItem`),
  ADD KEY `KodeSatuan` (`KodeSatuan`),
  ADD KEY `KodeStokKeluar` (`KodeStokKeluar`);

--
-- Indexes for table `stokmasuk`
--
ALTER TABLE `stokmasuk`
  ADD PRIMARY KEY (`KodeStokMasuk`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `stokmasukdetail`
--
ALTER TABLE `stokmasukdetail`
  ADD KEY `KodeItem` (`KodeItem`),
  ADD KEY `KodeSatuan` (`KodeSatuan`),
  ADD KEY `KodeStokMasuk` (`KodeStokMasuk`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`KodeSupplier`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `suratjalan`
--
ALTER TABLE `suratjalan`
  ADD PRIMARY KEY (`KodeSuratJalan`),
  ADD KEY `KodeLokasi` (`KodeLokasi`),
  ADD KEY `KodeMataUang` (`KodeMataUang`),
  ADD KEY `KodePelanggan` (`KodePelanggan`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `suratjalandetail`
--
ALTER TABLE `suratjalandetail`
  ADD KEY `KodeItem` (`KodeItem`),
  ADD KEY `KodeSatuan` (`KodeSatuan`),
  ADD KEY `KodeSuratJalan` (`KodeSuratJalan`);

--
-- Indexes for table `suratjalanreturn`
--
ALTER TABLE `suratjalanreturn`
  ADD PRIMARY KEY (`KodeSuratJalanReturn`),
  ADD KEY `KodeSuratJalan` (`KodeSuratJalan`),
  ADD KEY `KodeUser` (`KodeUser`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alamatpelanggan`
--
ALTER TABLE `alamatpelanggan`
  ADD CONSTRAINT `alamatpelanggan_ibfk_1` FOREIGN KEY (`KodePelanggan`) REFERENCES `pelanggan` (`KodePelanggan`);

--
-- Ketidakleluasaan untuk tabel `alatbayarkasir`
--
ALTER TABLE `alatbayarkasir`
  ADD CONSTRAINT `alatbayarkasir_ibfk_1` FOREIGN KEY (`KodeJenisBayar`) REFERENCES `jenisbayar` (`KodeJenisBayar`);

--
-- Ketidakleluasaan untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `driver_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `eventlog`
--
ALTER TABLE `eventlog`
  ADD CONSTRAINT `eventlog_ibfk_1` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `hutang`
--
ALTER TABLE `hutang`
  ADD CONSTRAINT `hutang_ibfk_1` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `hutang_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`),
  ADD CONSTRAINT `hutang_ibfk_3` FOREIGN KEY (`KodeSupplier`) REFERENCES `supplier` (`KodeSupplier`);

--
-- Ketidakleluasaan untuk tabel `invoicehutang`
--
ALTER TABLE `invoicehutang`
  ADD CONSTRAINT `invoicehutang_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `invoicehutang_ibfk_2` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `invoicehutang_ibfk_3` FOREIGN KEY (`KodeSupplier`) REFERENCES `supplier` (`KodeSupplier`),
  ADD CONSTRAINT `invoicehutang_ibfk_4` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `invoicehutangdetail`
--
ALTER TABLE `invoicehutangdetail`
  ADD CONSTRAINT `invoicehutangdetail_ibfk_1` FOREIGN KEY (`KodeHutang`) REFERENCES `hutang` (`KodeHutang`),
  ADD CONSTRAINT `invoicehutangdetail_ibfk_2` FOREIGN KEY (`KodeInvoiceHutang`) REFERENCES `invoicehutang` (`KodeInvoiceHutang`);

--
-- Ketidakleluasaan untuk tabel `invoicepiutang`
--
ALTER TABLE `invoicepiutang`
  ADD CONSTRAINT `invoicepiutang_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `invoicepiutang_ibfk_2` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `invoicepiutang_ibfk_3` FOREIGN KEY (`KodePelanggan`) REFERENCES `pelanggan` (`KodePelanggan`),
  ADD CONSTRAINT `invoicepiutang_ibfk_4` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `invoicepiutangdetail`
--
ALTER TABLE `invoicepiutangdetail`
  ADD CONSTRAINT `invoicepiutangdetail_ibfk_1` FOREIGN KEY (`KodeInvoicePiutang`) REFERENCES `invoicepiutang` (`KodeInvoicePiutang`),
  ADD CONSTRAINT `invoicepiutangdetail_ibfk_2` FOREIGN KEY (`KodePiutang`) REFERENCES `piutang` (`KodePiutang`),
  ADD CONSTRAINT `invoicepiutangdetail_ibfk_3` FOREIGN KEY (`KodeSuratJalan`) REFERENCES `suratjalan` (`KodeSuratJalan`);

--
-- Ketidakleluasaan untuk tabel `invopname`
--
ALTER TABLE `invopname`
  ADD CONSTRAINT `invopname_ibfk_1` FOREIGN KEY (`KodeItem`) REFERENCES `item` (`KodeItem`),
  ADD CONSTRAINT `invopname_ibfk_2` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `invopname_ibfk_3` FOREIGN KEY (`KodeSatuan`) REFERENCES `satuan` (`KodeSatuan`);

--
-- Ketidakleluasaan untuk tabel `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`KodeKategori`) REFERENCES `kategori` (`KodeKategori`);

--
-- Ketidakleluasaan untuk tabel `itemkonversi`
--
ALTER TABLE `itemkonversi`
  ADD CONSTRAINT `itemkonversi_ibfk_1` FOREIGN KEY (`KodeItem`) REFERENCES `item` (`KodeItem`),
  ADD CONSTRAINT `itemkonversi_ibfk_2` FOREIGN KEY (`KodeSatuan`) REFERENCES `satuan` (`KodeSatuan`);

--
-- Ketidakleluasaan untuk tabel `kasbank`
--
ALTER TABLE `kasbank`
  ADD CONSTRAINT `kasbank_ibfk_1` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `kategori_ibfk_1` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `keluarmasukbarang`
--
ALTER TABLE `keluarmasukbarang`
  ADD CONSTRAINT `keluarmasukbarang_ibfk_1` FOREIGN KEY (`KodeItem`) REFERENCES `item` (`KodeItem`),
  ADD CONSTRAINT `keluarmasukbarang_ibfk_2` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `keluarmasukbarang_ibfk_3` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD CONSTRAINT `lokasi_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasiitem` (`KodeLokasi`),
  ADD CONSTRAINT `lokasi_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `matauang`
--
ALTER TABLE `matauang`
  ADD CONSTRAINT `matauang_ibfk_1` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `pelanggan_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `pelunasanhutang`
--
ALTER TABLE `pelunasanhutang`
  ADD CONSTRAINT `pelunasanhutang_ibfk_1` FOREIGN KEY (`KodeHutang`) REFERENCES `hutang` (`KodeHutang`),
  ADD CONSTRAINT `pelunasanhutang_ibfk_2` FOREIGN KEY (`KodeInvoice`) REFERENCES `invoicehutang` (`KodeInvoiceHutang`),
  ADD CONSTRAINT `pelunasanhutang_ibfk_3` FOREIGN KEY (`KodeKasBank`) REFERENCES `kasbank` (`KodeKasBank`),
  ADD CONSTRAINT `pelunasanhutang_ibfk_4` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `pelunasanhutang_ibfk_5` FOREIGN KEY (`KodeSupplier`) REFERENCES `supplier` (`KodeSupplier`),
  ADD CONSTRAINT `pelunasanhutang_ibfk_6` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `pelunasanpiutang`
--
ALTER TABLE `pelunasanpiutang`
  ADD CONSTRAINT `pelunasanpiutang_ibfk_1` FOREIGN KEY (`KodeInvoice`) REFERENCES `invoicepiutang` (`KodeInvoicePiutang`),
  ADD CONSTRAINT `pelunasanpiutang_ibfk_2` FOREIGN KEY (`KodeKasBank`) REFERENCES `kasbank` (`KodeKasBank`),
  ADD CONSTRAINT `pelunasanpiutang_ibfk_3` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `pelunasanpiutang_ibfk_4` FOREIGN KEY (`KodePelanggan`) REFERENCES `pelanggan` (`KodePelanggan`),
  ADD CONSTRAINT `pelunasanpiutang_ibfk_5` FOREIGN KEY (`KodePiutang`) REFERENCES `piutang` (`KodePiutang`),
  ADD CONSTRAINT `pelunasanpiutang_ibfk_6` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `pembelianlangsung`
--
ALTER TABLE `pembelianlangsung`
  ADD CONSTRAINT `pembelianlangsung_ibfk_1` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `pembelianlangsung_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`),
  ADD CONSTRAINT `pembelianlangsung_ibfk_3` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`);

--
-- Ketidakleluasaan untuk tabel `pembelianlangsungdetail`
--
ALTER TABLE `pembelianlangsungdetail`
  ADD CONSTRAINT `pembelianlangsungdetail_ibfk_1` FOREIGN KEY (`KodeItem`) REFERENCES `item` (`KodeItem`),
  ADD CONSTRAINT `pembelianlangsungdetail_ibfk_2` FOREIGN KEY (`KodeSatuan`) REFERENCES `satuan` (`KodeSatuan`),
  ADD CONSTRAINT `pembelianlangsungdetail_ibfk_3` FOREIGN KEY (`KodePembelianLangsung`) REFERENCES `pembelianlangsung` (`KodePembelianLangsung`);

--
-- Ketidakleluasaan untuk tabel `pemesananpembelian`
--
ALTER TABLE `pemesananpembelian`
  ADD CONSTRAINT `pemesananpembelian_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `pemesananpembelian_ibfk_2` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `pemesananpembelian_ibfk_3` FOREIGN KEY (`KodeSupplier`) REFERENCES `supplier` (`KodeSupplier`),
  ADD CONSTRAINT `pemesananpembelian_ibfk_4` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `pemesananpenjualan`
--
ALTER TABLE `pemesananpenjualan`
  ADD CONSTRAINT `pemesananpenjualan_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `pemesananpenjualan_ibfk_2` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `pemesananpenjualan_ibfk_3` FOREIGN KEY (`KodePelanggan`) REFERENCES `pelanggan` (`KodePelanggan`),
  ADD CONSTRAINT `pemesananpenjualan_ibfk_4` FOREIGN KEY (`KodeSales`) REFERENCES `sales` (`KodeSales`),
  ADD CONSTRAINT `pemesananpenjualan_ibfk_5` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `penjualanlangsung`
--
ALTER TABLE `penjualanlangsung`
  ADD CONSTRAINT `penjualanlangsung_ibfk_1` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `penjualanlangsung_ibfk_2` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `penjualanlangsung_ibfk_3` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`),
  ADD CONSTRAINT `penjualanlangsung_ibfk_4` FOREIGN KEY (`KodePelanggan`) REFERENCES `pelanggan` (`KodePelanggan`);

--
-- Ketidakleluasaan untuk tabel `penjualanlangsungdetail`
--
ALTER TABLE `penjualanlangsungdetail`
  ADD CONSTRAINT `penjualanlangsungdetail_ibfk_1` FOREIGN KEY (`KodeItem`) REFERENCES `item` (`KodeItem`),
  ADD CONSTRAINT `penjualanlangsungdetail_ibfk_2` FOREIGN KEY (`KodePenjualanLangsung`) REFERENCES `penjualanlangsung` (`KodePenjualanLangsung`),
  ADD CONSTRAINT `penjualanlangsungdetail_ibfk_3` FOREIGN KEY (`KodeSatuan`) REFERENCES `satuan` (`KodeSatuan`);

--
-- Ketidakleluasaan untuk tabel `penjualanlangsungreturn`
--
ALTER TABLE `penjualanlangsungreturn`
  ADD CONSTRAINT `penjualanlangsungreturn_ibfk_1` FOREIGN KEY (`KodePenjualanLangsung`) REFERENCES `penjualanlangsung` (`KodePenjualanLangsung`),
  ADD CONSTRAINT `penjualanlangsungreturn_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`),
  ADD CONSTRAINT `penjualanlangsungreturn_ibfk_3` FOREIGN KEY (`KodePelanggan`) REFERENCES `pelanggan` (`KodePelanggan`);

--
-- Ketidakleluasaan untuk tabel `penjualanlangsungreturndetail`
--
ALTER TABLE `penjualanlangsungreturndetail`
  ADD CONSTRAINT `penjualanlangsungreturndetail_ibfk_1` FOREIGN KEY (`KodeItem`) REFERENCES `item` (`KodeItem`),
  ADD CONSTRAINT `penjualanlangsungreturndetail_ibfk_2` FOREIGN KEY (`KodeSatuan`) REFERENCES `satuan` (`KodeSatuan`);

--
-- Ketidakleluasaan untuk tabel `pindahgudang`
--
ALTER TABLE `pindahgudang`
  ADD CONSTRAINT `pindahgudang_ibfk_1` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `pindahgudangdetail`
--
ALTER TABLE `pindahgudangdetail`
  ADD CONSTRAINT `pindahgudangdetail_ibfk_1` FOREIGN KEY (`KodePindah`) REFERENCES `pindahgudang` (`KodePindah`),
  ADD CONSTRAINT `pindahgudangdetail_ibfk_2` FOREIGN KEY (`KodeItem`) REFERENCES `item` (`KodeItem`),
  ADD CONSTRAINT `pindahgudangdetail_ibfk_3` FOREIGN KEY (`KodeSatuan`) REFERENCES `satuan` (`KodeSatuan`);

--
-- Ketidakleluasaan untuk tabel `piutang`
--
ALTER TABLE `piutang`
  ADD CONSTRAINT `piutang_ibfk_1` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `piutang_ibfk_2` FOREIGN KEY (`KodePelanggan`) REFERENCES `pelanggan` (`KodePelanggan`),
  ADD CONSTRAINT `piutang_ibfk_3` FOREIGN KEY (`KodeSuratJalan`) REFERENCES `suratjalan` (`KodeSuratJalan`),
  ADD CONSTRAINT `piutang_ibfk_4` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD CONSTRAINT `satuan_ibfk_1` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `stokkeluar`
--
ALTER TABLE `stokkeluar`
  ADD CONSTRAINT `stokkeluar_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `stokkeluar_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `stokkeluardetail`
--
ALTER TABLE `stokkeluardetail`
  ADD CONSTRAINT `stokkeluardetail_ibfk_1` FOREIGN KEY (`KodeItem`) REFERENCES `item` (`KodeItem`),
  ADD CONSTRAINT `stokkeluardetail_ibfk_2` FOREIGN KEY (`KodeSatuan`) REFERENCES `satuan` (`KodeSatuan`),
  ADD CONSTRAINT `stokkeluardetail_ibfk_3` FOREIGN KEY (`KodeStokKeluar`) REFERENCES `stokkeluar` (`KodeStokKeluar`);

--
-- Ketidakleluasaan untuk tabel `stokmasuk`
--
ALTER TABLE `stokmasuk`
  ADD CONSTRAINT `stokmasuk_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `stokmasuk_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `stokmasukdetail`
--
ALTER TABLE `stokmasukdetail`
  ADD CONSTRAINT `stokmasukdetail_ibfk_1` FOREIGN KEY (`KodeItem`) REFERENCES `item` (`KodeItem`),
  ADD CONSTRAINT `stokmasukdetail_ibfk_2` FOREIGN KEY (`KodeSatuan`) REFERENCES `satuan` (`KodeSatuan`),
  ADD CONSTRAINT `stokmasukdetail_ibfk_3` FOREIGN KEY (`KodeStokMasuk`) REFERENCES `stokmasuk` (`KodeStokMasuk`);

--
-- Ketidakleluasaan untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `supplier_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `suratjalan`
--
ALTER TABLE `suratjalan`
  ADD CONSTRAINT `suratjalan_ibfk_1` FOREIGN KEY (`KodeLokasi`) REFERENCES `lokasi` (`KodeLokasi`),
  ADD CONSTRAINT `suratjalan_ibfk_2` FOREIGN KEY (`KodeMataUang`) REFERENCES `matauang` (`KodeMataUang`),
  ADD CONSTRAINT `suratjalan_ibfk_3` FOREIGN KEY (`KodePelanggan`) REFERENCES `pelanggan` (`KodePelanggan`),
  ADD CONSTRAINT `suratjalan_ibfk_4` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);

--
-- Ketidakleluasaan untuk tabel `suratjalandetail`
--
ALTER TABLE `suratjalandetail`
  ADD CONSTRAINT `suratjalandetail_ibfk_1` FOREIGN KEY (`KodeItem`) REFERENCES `item` (`KodeItem`),
  ADD CONSTRAINT `suratjalandetail_ibfk_2` FOREIGN KEY (`KodeSatuan`) REFERENCES `satuan` (`KodeSatuan`),
  ADD CONSTRAINT `suratjalandetail_ibfk_3` FOREIGN KEY (`KodeSuratJalan`) REFERENCES `suratjalan` (`KodeSuratJalan`);

--
-- Ketidakleluasaan untuk tabel `suratjalanreturn`
--
ALTER TABLE `suratjalanreturn`
  ADD CONSTRAINT `suratjalanreturn_ibfk_1` FOREIGN KEY (`KodeSuratJalan`) REFERENCES `suratjalan` (`KodeSuratJalan`),
  ADD CONSTRAINT `suratjalanreturn_ibfk_2` FOREIGN KEY (`KodeUser`) REFERENCES `user` (`KodeUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
