-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Agu 2020 pada 15.38
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db10118390restaurant`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cemilan`
--

CREATE TABLE `cemilan` (
  `id_cemilan` int(2) NOT NULL,
  `nama_cemilan` varchar(50) DEFAULT NULL,
  `harga_cemilan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cemilan`
--

INSERT INTO `cemilan` (`id_cemilan`, `nama_cemilan`, `harga_cemilan`) VALUES
(1, 'kerupuk', '1000'),
(2, 'bala-bala', '1000'),
(3, 'gehu', '1000'),
(4, 'tempe', '1000'),
(5, 'cireng', '1000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`, `name`) VALUES
('10118390', 'admin', 'Mario'),
('admin', 'admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `kode_makanan` varchar(10) NOT NULL,
  `nama_makanan` varchar(100) DEFAULT NULL,
  `jenis_makanan` varchar(100) DEFAULT NULL,
  `harga_satuan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`kode_makanan`, `nama_makanan`, `jenis_makanan`, `harga_satuan`) VALUES
('mkn1', 'pudding', 'dessert', '20000'),
('mkn10', 'sop buntut', 'appetizers', '30000'),
('mkn11', 'Buger', 'appetizers', '7000'),
('mkn12', 'nasi kuning', 'main course', '7500'),
('mkn2', 'ayam bakar', 'appetizers', '25000'),
('mkn3', 'pie', 'dessert', '15000'),
('mkn4', 'pastry', 'dessert', '17000'),
('mkn5', 'bolu', 'dessert', '5000'),
('mkn6', 'brownies', 'dessert', '10000'),
('mkn7', 'rendang', 'appetizers', '20000'),
('mkn8', 'nasi goreng', 'main course', '20000'),
('mkn9', 'sop iga', 'appetizers', '25000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `minuman`
--

CREATE TABLE `minuman` (
  `id_minuman` varchar(5) NOT NULL,
  `nama_minuman` varchar(100) DEFAULT NULL,
  `jenis_minuman` varchar(100) DEFAULT NULL,
  `harga_minuman` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `minuman`
--

INSERT INTO `minuman` (`id_minuman`, `nama_minuman`, `jenis_minuman`, `harga_minuman`) VALUES
('1', 'teh manis', 'dingin', '3000'),
('2', 'teh manis', 'panas', '3000'),
('3', 'jus alpukat', 'dingin', '4000'),
('4', 'jus coklat', 'dingin', '4000'),
('5', 'kopi', 'panas', '3000'),
('6', 'kopi', 'dingin', '3000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(5) NOT NULL,
  `nama_paket` varchar(50) DEFAULT NULL,
  `harga_paket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga_paket`) VALUES
(1, 'paket lezat', '50000'),
(2, 'paket kuat', '70000'),
(3, 'paket santuy', '20000'),
(4, 'paket hemat', '10000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `kode_pegawai` varchar(8) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `No_Telepon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`kode_pegawai`, `Nama`, `Email`, `Alamat`, `No_Telepon`) VALUES
('1', 'Lucas', 'Nunc.pulvinar.arcu@Maurismagna.net', 'Ap #769-3492 Sagittis. Av.', '061-375-6205'),
('10', 'Joelle', 'vel.turpis@eget.ca', '646-4404 Cras Road', '096-000-0583'),
('101', 'Mario Gonzaga Muharjani', 'mariomuharjani@gmail.com', 'jl.leuwi anyar', '08999999'),
('11', 'Chaney oke', 'Donec@posuereenim.com', 'Ap #756-4143 Vitae Av.', '007-243-8711'),
('12', 'Tyler', 'arcu.Sed.eu@ac.co.uk', '672-7652 Rhoncus Av.', '051-265-9982'),
('13', 'Priscilla', 'Aenean.eget.magna@tellussemmollis.ca', '517-4619 Fermentum St.', '093-644-6369'),
('14', 'Constance', 'sagittis.felis@aduiCras.ca', '456-6357 Sociis Road', '024-076-3672'),
('15', 'Benjamin', 'commodo.auctor.velit@semperrutrum.com', '511-1753 Pharetra Street', '074-690-1401'),
('16', 'Lani', 'metus.Aliquam.erat@mattisInteger.co.uk', '292-9234 Laoreet Street', '025-745-3873'),
('17', 'Ingrid', 'orci@egetvenenatis.com', '163-9228 Dolor Rd.', '041-196-9592'),
('18', 'Jameson', 'porttitor@Namtempor.net', '552-3039 Interdum. St.', '001-162-5798'),
('19', 'Aaron', 'ipsum@etpede.com', 'Ap #169-3941 Montes, Street', '098-453-2491'),
('2', 'Blaze', 'dictum@euerosNam.org', 'Ap #753-681 Tellus, Avenue', '044-107-2284'),
('20', 'Darius', 'non@eros.org', 'P.O. Box 328, 6439 Etiam Avenue', '005-099-7910'),
('21', 'Dorian', 'tellus.Aenean@euaugueporttitor.edu', '9844 Vitae St.', '077-008-7844'),
('22', 'Asher', 'elementum@porttitorvulputate.ca', '322-7587 Eu St.', '073-999-1654'),
('23', 'Emily', 'vehicula.risus.Nulla@elitfermentum.co.uk', 'Ap #758-4904 Enim Street', '097-777-5994'),
('24', 'Stephanie', 'mauris.elit.dictum@temporbibendumDonec.com', 'Ap #703-6889 Phasellus Road', '052-119-4268'),
('25', 'Winter', 'nisi@dapibus.org', '4398 Arcu. Road', '031-709-8056'),
('26', 'Alec', 'ipsum.leo.elementum@mollisPhaselluslibero.ca', '507-2208 Faucibus. St.', '086-314-6883'),
('27', 'Madeson', 'In.tincidunt.congue@Donec.co.uk', '5525 Lorem Ave', '003-216-0902'),
('28', 'Forrest', 'mauris@quamelementum.org', 'P.O. Box 693, 2135 Nunc Rd.', '070-823-8636'),
('29', 'Claire', 'lacinia.mattis@Mauris.net', '6542 Litora Rd.', '090-016-5045'),
('3', 'Brock', 'non.vestibulum@Pellentesque.edu', '447-430 Sed Rd.', '038-963-3795'),
('30', 'John', 'Sed.malesuada@lobortis.ca', 'P.O. Box 804, 1151 Dictum. Rd.', '062-503-2355'),
('31', 'Adara', 'molestie@urna.co.uk', '4621 In Rd.', '003-952-9109'),
('32', 'Sydney', 'diam.lorem@DonecestNunc.edu', '7792 Amet Av.', '075-610-6096'),
('33', 'Carl', 'eget.varius@mollis.edu', 'P.O. Box 271, 9194 Ac Road', '078-495-4668'),
('34', 'Zelda', 'luctus.et.ultrices@dolorNulla.org', 'P.O. Box 278, 3500 Fringilla. St.', '031-553-0914'),
('35', 'Rajah', 'leo.Cras.vehicula@ultriciessemmagna.edu', 'P.O. Box 706, 9731 Sit Ave', '071-376-4509'),
('36', 'Reed', 'Sed.pharetra@Nunc.com', '733-7010 Libero Street', '015-354-2815'),
('37', 'Ignacia', 'sit.amet.dapibus@aaliquet.org', 'P.O. Box 138, 2958 Morbi Av.', '080-067-8108'),
('38', 'Miriam', 'id.erat@perconubia.edu', 'Ap #702-5923 Mollis. Av.', '030-187-6468'),
('39', 'Remedios', 'Morbi.sit@nunc.com', 'Ap #400-483 Vulputate St.', '022-212-0504'),
('4', 'Arthur', 'volutpat.Nulla@Praesenteudui.org', '4230 Nunc Street', '097-222-1609'),
('40', 'Shana', 'rhoncus.Proin.nisl@orcitinciduntadipiscing.net', 'P.O. Box 632, 2716 Ut Ave', '034-058-5914'),
('41', 'Shannon', 'eget.venenatis@cubiliaCurae.co.uk', '786-5776 Nec Rd.', '037-404-7562'),
('42', 'Quail', 'est.tempor.bibendum@Donecconsectetuermauris.org', '531-5449 Mi Ave', '072-660-9684'),
('43', 'Ria', 'malesuada.malesuada@dictumcursus.co.uk', '733-727 Orci St.', '056-459-9728'),
('44', 'Harriet', 'elit.Etiam.laoreet@duiaugueeu.com', '2659 Dolor, St.', '030-442-4839'),
('45', 'Remedios', 'aliquet.diam@velitegestaslacinia.ca', '153-5139 Ut, St.', '007-764-5954'),
('46', 'Adria', 'montes@consequat.org', 'P.O. Box 440, 8440 Lacinia Road', '029-347-1815'),
('47', 'Uriah', 'et.eros.Proin@mus.net', 'P.O. Box 878, 8760 Interdum. Avenue', '075-200-6447'),
('48', 'Talon', 'arcu.Vestibulum.ante@natoquepenatibus.org', 'Ap #274-7395 Tortor. Avenue', '075-522-9832'),
('49', 'Meredith', 'dolor.nonummy.ac@ornareFuscemollis.com', 'P.O. Box 454, 892 Urna. Rd.', '062-752-7591'),
('5', 'Charity', 'adipiscing@libero.ca', '4553 Pretium Ave', '043-227-0871'),
('50', 'Brody', 'parturient@imperdietdictum.co.uk', 'P.O. Box 261, 9017 Malesuada Av.', '019-818-1514'),
('51', 'Keegan', 'diam.eu.dolor@consequatdolor.net', 'P.O. Box 925, 6400 Pellentesque Road', '035-493-4879'),
('52', 'Hamish', 'a.magna@urnaNunc.com', '2417 Enim. Road', '042-470-1627'),
('53', 'Tanya', 'Aliquam@nislNullaeu.org', 'P.O. Box 625, 3631 Nec St.', '001-139-9755'),
('54', 'Buffy', 'nisi.Mauris@tellus.org', '477-1324 Nec, Avenue', '059-091-4081'),
('55', 'Ali', 'ultrices@pedeCum.edu', 'P.O. Box 705, 4605 Per Av.', '032-676-4753'),
('56', 'Blair', 'felis.orci@Phasellusataugue.com', '655-7798 Luctus Rd.', '027-310-2954'),
('57', 'Nehru', 'molestie.in@maurisaliquam.edu', 'P.O. Box 151, 4103 Placerat, Avenue', '082-171-1183'),
('58', 'Noelani', 'id.ante@sodaleseliterat.net', 'P.O. Box 121, 227 Mollis Road', '028-431-9821'),
('59', 'Rhoda', 'Mauris.molestie.pharetra@elitAliquamauctor.edu', 'Ap #997-2693 In, Road', '075-788-2745'),
('6', 'Abraham', 'dui@malesuada.com', '914-2336 Dictum Rd.', '022-256-3714'),
('60', 'Lance', 'in.aliquet@Aliquamnecenim.edu', 'P.O. Box 123, 8291 Purus Rd.', '007-377-0355'),
('61', 'Quinlan', 'commodo.ipsum.Suspendisse@ultrices.co.uk', 'P.O. Box 593, 3031 Erat Av.', '005-523-3454'),
('62', 'Jerome', 'tristique.ac.eleifend@sed.edu', 'Ap #739-7836 Est, Street', '053-614-4914'),
('63', 'Abraham', 'vulputate.dui.nec@lectusconvallis.ca', '7001 Eu Rd.', '041-448-8924'),
('64', 'Nadine', 'in.cursus.et@arcu.net', '446 Nascetur Ave', '006-502-4913'),
('65', 'Kellie', 'interdum.ligula@mauris.ca', '304 Nunc St.', '043-703-3149'),
('66', 'Amelia', 'et.magna.Praesent@liberolacusvarius.co.uk', 'Ap #423-9686 Nulla Street', '031-943-8511'),
('67', 'Adrienne', 'ac.urna@congueturpis.edu', 'P.O. Box 756, 9853 Odio Ave', '023-329-6632'),
('68', 'Gisela', 'tellus.Aenean.egestas@accumsanlaoreetipsum.ca', 'P.O. Box 304, 2076 Praesent Road', '071-149-1281'),
('69', 'Jennifer', 'vel@euenim.co.uk', 'P.O. Box 192, 7372 Aliquam Avenue', '054-221-7174'),
('7', 'Tate', 'fermentum.convallis@eratvolutpatNulla.edu', 'P.O. Box 373, 6622 Enim Rd.', '095-399-0752'),
('70', 'Irene', 'dis.parturient.montes@posuereenimnisl.edu', 'Ap #305-5638 Non Street', '013-546-5674'),
('71', 'Venus', 'Aliquam.nisl@Quisqueornare.net', 'Ap #746-8551 A Rd.', '093-094-6627'),
('72', 'Bell', 'nunc.nulla@cursusetmagna.co.uk', 'P.O. Box 919, 9325 Sociis Ave', '012-413-8377'),
('73', 'Nissim', 'est.mollis.non@arcu.edu', 'P.O. Box 582, 3763 Sed, Ave', '046-308-6456'),
('74', 'Wang', 'Duis.sit@vulputate.org', '1034 Curabitur St.', '030-949-9753'),
('75', 'Farrah', 'lacus.Ut@tinciduntorciquis.net', '2061 Tellus St.', '000-076-3799'),
('76', 'Violet', 'tristique.senectus.et@acipsumPhasellus.org', '797-4237 Luctus Rd.', '032-838-7391'),
('77', 'Richard', 'nisl.Quisque.fringilla@ultricesa.org', '6371 Est, Rd.', '021-522-6364'),
('78', 'Aidan', 'velit@justonec.net', 'Ap #334-503 Odio. St.', '025-736-6016'),
('79', 'Vance', 'magna.nec@nibhlaciniaorci.co.uk', '3276 Dolor Street', '074-415-3225'),
('8', 'Avye', 'ipsum.porta.elit@maurisSuspendisse.net', 'Ap #420-7092 Etiam St.', '093-032-1214'),
('80', 'Joseph', 'mollis.Integer.tincidunt@lectuspedeet.ca', 'Ap #684-7905 Duis Rd.', '024-196-1208'),
('81', 'Jakeem', 'amet@erategettincidunt.net', '484-313 Porta Av.', '049-735-5232'),
('82', 'Colorado', 'Mauris@egetmassaSuspendisse.co.uk', 'Ap #670-8412 Tellus. St.', '039-556-4077'),
('83', 'Ray', 'est.tempor@tristiqueaceleifend.com', '374-7342 Elit, St.', '087-589-0089'),
('84', 'Graham', 'libero@utaliquam.edu', '320-4081 A St.', '009-172-8297'),
('85', 'Germane', 'eu.ultrices.sit@Curabitur.edu', 'P.O. Box 920, 7739 Magna, Av.', '032-496-2367'),
('86', 'Ryder', 'est.tempor.bibendum@dapibusid.com', '3342 Libero St.', '004-032-0866'),
('87', 'Kiayada', 'nisl@Sedpharetra.org', 'P.O. Box 479, 6789 Ac Road', '017-568-3579'),
('88', 'Berk', 'lorem.ut.aliquam@elitCurabitursed.com', '739 Non, Rd.', '063-872-2149'),
('89', 'Hayes', 'vitae.nibh@nec.ca', '7305 Eu, St.', '091-999-0555'),
('9', 'Colorado', 'a@pharetraQuisqueac.co.uk', '802-357 Sed Avenue', '019-465-6306'),
('90', 'Kareem', 'augue.ut@tortorIntegeraliquam.com', 'Ap #216-3212 Nam St.', '048-244-7078'),
('91', 'Stone', 'odio@iaculislacuspede.ca', '2279 Luctus Rd.', '005-307-0723'),
('92', 'Carson', 'placerat.eget@a.co.uk', 'P.O. Box 208, 8596 Mollis Avenue', '077-751-0109'),
('93', 'Hope', 'Donec@tristique.edu', '4823 Augue Av.', '080-199-7902'),
('94', 'Dillon', 'pretium.aliquet.metus@velsapienimperdiet.co.uk', '4178 Luctus St.', '036-166-0510'),
('95', 'McKenzie', 'Vivamus.molestie.dapibus@liberodui.net', '6392 Sem. St.', '029-403-4161'),
('96', 'Vance', 'vestibulum.nec@semmolestie.com', '147-398 Consequat St.', '063-482-3874'),
('97', 'Rae', 'vehicula@orcisem.ca', '722-5716 Cras Av.', '027-815-0814'),
('98', 'Nash', 'amet.luctus@et.com', '1033 Tellus, St.', '007-117-7151'),
('99', 'Talon', 'volutpat.Nulla@ipsumdolor.edu', 'P.O. Box 191, 5864 Dui Avenue', '087-514-6986');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cemilan`
--
ALTER TABLE `cemilan`
  ADD PRIMARY KEY (`id_cemilan`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`kode_makanan`);

--
-- Indeks untuk tabel `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`id_minuman`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`kode_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cemilan`
--
ALTER TABLE `cemilan`
  MODIFY `id_cemilan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
