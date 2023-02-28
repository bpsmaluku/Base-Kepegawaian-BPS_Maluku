-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 06:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `NIP` varchar(50) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `STATUS` enum('PNS','PPNPN') NOT NULL,
  `DOSIR` varchar(50) NOT NULL,
  `RAK` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`NIP`, `NAMA`, `STATUS`, `DOSIR`, `RAK`) VALUES
('196511161988021001', 'Emiel Leatemia', 'PNS', '10', 'II'),
('196604201989021001', 'Paulus Loppies', 'PNS', '04', 'I'),
('196605042007011003', 'Roy Thenu', 'PNS', '53', 'VII'),
('196605191989031004', 'Marthinus Dominggus Alberthus SE.', 'PNS', '63', 'VIII'),
('196611041990031005', 'Zadrag Pieter Leatemia', 'PNS', '21', 'III'),
('196612121989021001', 'Agustinus Barend Matakupan', 'PNS', '06', 'I'),
('196701292006042007', 'Salomina Henderina Wattimena', 'PNS', '50', 'VII'),
('196706011988032002', 'Dientje Hallatu SE', 'PNS', '04', 'I'),
('196706261989021002', 'Agnodike Semuel Tuwanakotta', 'PNS', '06', 'I'),
('196712251989021001', 'Aleksander David Kliwas', 'PNS', '06', 'I'),
('196805021990031006', 'Titus Gerrits Uniwaly', 'PNS', '19', 'III'),
('196807231988021001', 'Julis Alexander Pessy', 'PNS', '04', 'I'),
('196902141990032001', 'Jolanda Leatemia', 'PNS', '19', 'III'),
('196903302007011001', 'Roky Marsiano Letelay', 'PNS', '52', 'VII'),
('197203042005021001', 'Husen Rumuar', 'PNS', '41', 'VI'),
('197203162007011002', 'Baltasar Kuway', 'PNS', '52', 'VII'),
('197204042006041020', 'Jacob Willem De Fretes', 'PNS', '50', 'VII'),
('197204222009012003', 'Rennie Arsje Talahatu S.E.', 'PNS', '15', 'II'),
('197205281993022001', 'Martha Mareyke Matatula SE', 'PNS', '20', 'III'),
('197211042007101001', 'Ernst Yill Alexander', 'PNS', '07', 'I'),
('197212182007012003', 'Selly Des Meryory Pesireron', 'PNS', '51', 'VII'),
('197309092005021003', 'Lukas Sahertian', 'PNS', '37', 'V'),
('197310192009111001', 'Johanis Fredo Noya S.Sos', 'PNS', '15', 'II'),
('197407041994012001', 'Nurbaya Sangadji SE, M.Si', 'PNS', '19', 'III'),
('197407252007011006', 'Devi Stenly Tuhumury', 'PNS', '53', 'VII'),
('197408232007011003', 'Muhammad Fahmi Makatty', 'PNS', '52', 'VII'),
('197408282005022001', 'Carolina Mailoa S.E.', 'PNS', '39', 'V'),
('197410261994031003', 'Thomas Tapar SE.', 'PNS', '17', 'III'),
('197503202002121003', 'Rizat Steven Labetubun', 'PNS', '13', 'II'),
('197504012003122001', 'Avia Justy Leatemia SP', 'PNS', '41', 'VI'),
('197508062009011005', 'Andarias Agustinus Dahoklory', 'PNS', '09', 'II'),
('197510121996031002', 'Jacob Alexander Wattimena', 'PNS', '16', 'II'),
('197512192002121003', 'Yeidrus Boften', 'PNS', '42', 'VI'),
('197604162007011002', 'Jakob Jepenosa Nanlohy', 'PNS', '53', 'VII'),
('197606111998031001', 'Richard Philip Thenu SE, M.Si', 'PNS', '18', 'III'),
('197609062005021001', 'Anwar Sawerigading', 'PNS', '23', 'III'),
('197609092005021009', 'Muhamad Y. Latupono', 'PNS', '23', 'III'),
('197609192006041014', 'Yohanes Marthinus Tapar', 'PNS', '51', 'VII'),
('197609281998031001', 'Junan Devi Persulessy', 'PNS', '16', 'II'),
('197611202006041002', 'Daniel Cornelis Loupatty SE', 'PNS', '35', 'V'),
('197702062003121003', 'Anthonius Fanumby S.M.', 'PNS', '43', 'VI'),
('197705312007101001', 'Abdul Azis Tuharea', 'PNS', '09', 'II'),
('197708102007011004', 'Rusdi Wear S.E.', 'PNS', '20', 'III'),
('197710062002121003', 'Octovianus Hendrik Pelletimu', 'PNS', '20', 'III'),
('197801172009111001', 'Feridinan Watubun', 'PNS', '63', 'VIII'),
('197803142006042003', 'Idamina Otovina Siahaya SE', 'PNS', '49', 'VII'),
('197804272008011011', 'Matheos Simon Onisimus Matital', 'PNS', '56', 'VII'),
('197805112002121004', 'Iksan Azwar Risahondua', 'PNS', '42', 'VI'),
('197806202006041025', 'Eriek Dikson Sohilait', 'PNS', '51', 'VII'),
('197808022005021006', 'Christian Harry Soplantila S.Pi, M.Si', 'PNS', '40', 'V'),
('197810241998031002', 'Bery Anakottapary S.Pi, M.Si', 'PNS', '16', 'II'),
('197903162002121003', 'Bader Solissa', 'PNS', '14', '11'),
('197903172002121002', 'Tupa Tampubolon S.Kom, M.Si', 'PNS', '42', 'VI'),
('197908222002121002', 'Kacong', 'PNS', '13', 'II'),
('197909022009011007', 'Sudirman Kau', 'PNS', '14', 'II'),
('197911092009111002', 'Jerly Novy Persulessy', 'PNS', '71', 'IX'),
('198002272002121003', 'Deny Sopaheluwakan S.E.', 'PNS', '14', 'II'),
('198004262000122001', 'Pauline Gaspersz M.Si.', 'PNS', '18', 'III'),
('198006112005022002', 'Jacoba Pitersina Parinussa', 'PNS', '35', 'V'),
('198009152009011007', 'Herman Yoseph Bwarlele', 'PNS', '09', 'II'),
('198102052011011007', 'Vector Hehanussa SE', 'PNS', '47', 'VI'),
('198102102003121003', 'George Reinnold Loupatty S.ST', 'PNS', '42', 'VI'),
('198102242010032001', 'Vanny Anna Paulina Satumalay S.Si', 'PNS', '30', 'IV'),
('198104062009011010', 'Nahemia Luky Unawekla', 'PNS', '10', 'II'),
('198104072007011004', 'Melikior Fenanlampir', 'PNS', '52', 'VII'),
('198106062005021001', 'Freddy Abrahams SP', 'PNS', '36', 'V'),
('198108182003122003', 'Riska Wati Muin SE', 'PNS', '41', 'VI'),
('198108262010031001', 'Supriyanto S.Si', 'PNS', '33', 'V'),
('198110232009011007', 'Muhajirin Rumaf', 'PNS', '09', 'II'),
('198112012005022001', 'Nunung Sukanti SE, M.Ec.Dev', 'PNS', '39', 'V'),
('198201132009112001', 'Nelce Makaruku', 'PNS', '15', 'II'),
('198201292006041009', 'Jus Sopaheluwakan SE', 'PNS', '50', 'VII'),
('198202172006041016', 'Antonius Rettobjaan', 'PNS', '49', 'VII'),
('198203142008012008', 'Katerina Sangaji SP.', 'PNS', '17', 'III'),
('198203232006041022', 'Fadly Mudjid', 'PNS', '49', 'VII'),
('198205122009011015', 'Edwin Semuel Tutuarima SE.', 'PNS', '08', 'I'),
('198206052010031002', 'Andrew William Sarioa SE', 'PNS', '34', 'V'),
('198207282003122002', 'Saidah Sialana', 'PNS', '41', 'VI'),
('198208092009011010', 'Hendra Daud Unawekla', 'PNS', '10', 'II'),
('198208152005022001', 'Henderina Corlina Pattinaya', 'PNS', '38', 'V'),
('198208262010032001', 'Rezky Samson SE', 'PNS', '33', 'V'),
('198209292010031001', 'Firman Syah Assegaff SE', 'PNS', '32', 'IV'),
('198211192006041001', 'Frangki Jusup Walun SE', 'PNS', '39', 'V'),
('198301182011012012', 'Marta Gandauli Pangaribuan A.Md', 'PNS', '46', 'VI'),
('198301222010031001', 'Wenceslaus Asair Alubwaman Suarliak SE', 'PNS', '31', 'IV'),
('198303182010032001', 'Merrel Lokopessy S.Si', 'PNS', '30', 'IV'),
('198303202005022001', 'Sanny Pelletimu S.E.', 'PNS', '40', 'V'),
('198305012011012014', 'Johana Nifaan S.E.', 'PNS', '44', 'VI'),
('198305062010032002', 'Lissa Marry Tumury SE', 'PNS', '32', 'IV'),
('198307192003122001', 'Merygrace Lahallo SE', 'PNS', '43', 'VI'),
('198308022010032001', 'Adelina Timisela S.Si', 'PNS', '34', 'V'),
('198309072005022001', 'Feronika Yolanda Pattisina A.Md.', 'PNS', '37', 'V'),
('198312312006041018', 'Alvin Eduard Palijama', 'PNS', '50', 'VII'),
('198402052014032002', 'Rahmawati Walio S.Si', 'PNS', '61', 'VIII'),
('198405032011011010', 'Chrisyolis Jacob Lesbassa S.E.', 'PNS', '27', 'IV'),
('198406092005021001', 'Izaac Zanterheind Patty', 'PNS', '36', 'V'),
('198408292011012009', 'Syane Beverly Waas S.E.', 'PNS', '47', 'VI'),
('198409032011012010', 'Yona Lelian Kaihena S.E.', 'PNS', '01', 'I'),
('198409262014031004', 'Mohammad Asril Lisaholet S.E.', 'PNS', '61', 'VIII'),
('198412112008012005', 'Cisilia Friska Nussy', 'PNS', '55', 'VII'),
('198412272011012012', 'Nathalia Raneld Jubelina Parera S.H.', 'PNS', '29', 'IV'),
('198501112005022003', 'Wendy Maureen Hattu SE', 'PNS', '38', 'V'),
('198501232010032001', 'Arnelia Palijama S.Si', 'PNS', '62', 'VIII'),
('198504082010032001', 'Lien Pattimukay S.Si', 'PNS', '62', 'VIII'),
('198504212011012018', 'Nally Beatrikch Kartini Siahaya S.Si.', 'PNS', '45', 'VI'),
('198505062005021002', 'Benony M. Hukom S.A.P.', 'PNS', '37', 'V'),
('198505142008012007', 'Flortje Meyland Huwae SST', 'PNS', '54', 'VII'),
('198506042011011012', 'Edwin Gerard Radjulan S.Si.', 'PNS', '45', 'VI'),
('198509032010032002', 'Septin Frederika Palembangan Wenno S.Si', 'PNS', '34', 'V'),
('198512152010032002', 'Christi Natalia Talakua S.Si', 'PNS', '33', 'V'),
('198603282011012016', 'Wendy Hatulesila', 'PNS', '01', 'I'),
('198604282005021001', 'Vandy Bremer SE', 'PNS', '38', 'V'),
('198606022008012002', 'Anace Tan SE, M.Si', 'PNS', '07', 'I'),
('198606292009112001', 'Yuni Arfa Sahupala', 'PNS', '13', 'II'),
('198607162011011013', 'Juliams Siwalette', 'PNS', '43', 'VI'),
('198608032011012016', 'Adela Santhy Toamain S.Si', 'PNS', '27', 'IV'),
('198608052022031002', 'La Dika A.Md', 'PNS', '69', 'IX'),
('198608312011011009', 'Abdul Halim Mahmud S.Si', 'PNS', '27', 'IV'),
('198609032011012013', 'Salomina Andarina Tanamal S.Si', 'PNS', '31', 'IV'),
('198609142014031002', 'Ahyar Muhazir Rumakey S.Si', 'PNS', '58', 'VIII'),
('198612012010032001', 'Pudji Irianingsih S.Si', 'PNS', '32', 'IV'),
('198612102009022008', 'Herlin Venny Johannes SST, M.Stat', 'PNS', '08', 'I'),
('198612132006042001', 'Meitha Delsy Maulany SE', 'PNS', '35', 'V'),
('198701012008012001', 'Frisca F. Frans S.Pi.', 'PNS', '55', 'VII'),
('198703122009122002', 'Selvia Pattiasina S.ST', 'PNS', '33', 'V'),
('198704142014031002', 'Lukman S.E.', 'PNS', '60', 'VIII'),
('198705032011011013', 'Abd. Halim Tuasikal S.Psi, M.Si', 'PNS', '27', 'IV'),
('198706022006042002', 'Frenska Hendriks SE', 'PNS', '58', 'VIII'),
('198707092011011005', 'Jefri Tipka S.Si, M.Si', 'PNS', '71', 'IX'),
('198707132010122003', 'Jumerti Daud SST', 'PNS', '47', 'VI'),
('198710012011011005', 'Patrick Armando Manusiwa A.Md', 'PNS', '29', 'IV'),
('198710112011011009', 'Clif Oscard Leimena A.Md.', 'PNS', '43', 'VI'),
('198711272010121001', 'Rahmat Hermawan SST', 'PNS', '28', 'IV'),
('198712282008012001', 'Tricia Natalia Paliama', 'PNS', '54', 'VII'),
('198803012008012001', 'Irena M. Huwae', 'PNS', '56', 'VII'),
('198803052008012002', 'Mirsa Karepesina', 'PNS', '55', 'VII'),
('198803152008012001', 'Nurima Sura', 'PNS', '56', 'VII'),
('198805042014031002', 'Muhammad Saleh Daeng Parany S.Si', 'PNS', '61', 'VIII'),
('198805262008012001', 'Umiyanti Pelu', 'PNS', '62', 'VIII'),
('198805272010121007', 'Yany Delon Tuhumury SST', 'PNS', '28', 'IV'),
('198807072014032002', 'Navy Yulianti Nukuhehe S.Si', 'PNS', '61', 'VIII'),
('198808212013111001', 'Yeremia Daud Rahayaan SST', 'PNS', '57', 'VIII'),
('198808302011012019', 'Fesly', 'PNS', '44', 'VI'),
('198809162010122003', 'Roslian Stevani Tience Kainama SST', 'PNS', '28', 'IV'),
('198809172011011005', 'Stenly Frans S.Tr.Stat', 'PNS', '47', 'VI'),
('198901292011012014', 'Juliana Waitau', 'PNS', '46', 'VI'),
('198906192014031001', 'Rendy Titaley S.E.', 'PNS', '66', 'IX'),
('198907052011011002', 'Jouns Adhy Makatita', 'PNS', '44', 'VI'),
('198908072012112001', 'Loria Sara Paais SST, M.E.K.K', 'PNS', '48', 'VI'),
('198908082013112001', 'Cynthia Novaline Saya SST', 'PNS', '57', 'VIII'),
('198909202012112001', 'Angelia Alberthina Saiya SST, M.T.', 'PNS', '01', 'I'),
('198911052012112001', 'Novi Alfita SST', 'PNS', '48', 'VI'),
('198911252014031001', 'Arifin La Adu S.Kom', 'PNS', '58', 'VIII'),
('199001202014032007', 'Susan Rialita Lisapaly S.Si', 'PNS', '64', 'VIII'),
('199002162014031001', 'Bario Leunufna S.Si', 'PNS', '59', 'VIII'),
('199003012014121001', 'Marwan SST', 'PNS', '64', 'VIII'),
('199008092014032001', 'Clasya Louhenapessy S.E.', 'PNS', '59', 'VIII'),
('199010142014031002', 'Kariadi S.Si', 'PNS', '60', 'VIII'),
('199011042014031002', 'Iksan Mule S.Si', 'PNS', '60', 'VIII'),
('199012042019032001', 'Syella Sumampouw S.Stat.', 'PNS', '81', 'XI'),
('199103302013112001', 'Diah Elvira Melanti Kiat SST', 'PNS', '57', 'VIII'),
('199105252011012002', 'Meylissa Tunyluhulima', 'PNS', '45', 'VI'),
('199107242019032002', 'Kristi Willyani Saiya S.Si.', 'PNS', '82', 'XI'),
('199108142014101002', 'Muhammad Mulyadi Pane SST', 'PNS', '64', 'VIII'),
('199109092014101001', 'Clif Eduard Ohman SST', 'PNS', '63', 'VIII'),
('199110042014102001', 'Friska Sopacua SST', 'PNS', '67', 'IX'),
('199112042014121001', 'Nastain Komarudin SST', 'PNS', '66', 'IX'),
('199112172014102001', 'Janet C. Pattipawae SST', 'PNS', '65', 'IX'),
('199112312014101001', 'Glorio Fernando Wattimena SST', 'PNS', '67', 'IX'),
('199201022014121001', 'Richie Maulana Yusuf SST', 'PNS', '65', 'IX'),
('199204102014102001', 'Hilda April Yanti Yaninresi SST', 'PNS', '67', 'IX'),
('199303082016022001', 'Nunung Hartati Renuat SST', 'PNS', '70', 'IX'),
('199303102016021001', 'Fakhmol Risepdo SST', 'PNS', '68', 'IX'),
('199303202019032001', 'Sara Letwar S.Si.', 'PNS', '82', 'XI'),
('199303292019032001', 'Yuana Evalina Tanlain S.Si.', 'PNS', '24', 'III'),
('199304072016021001', 'Idho Najibulah Yogi Sutopo SST', 'PNS', '66', 'IX'),
('199304242018021001', 'Deden Aditya Nugraha SST', 'PNS', '25', 'IV'),
('199305052016022001', 'Annisa Salma Maulidha SST', 'PNS', '68', 'IX'),
('199305182019032001', 'Fatma Usemahu S.Si.', 'PNS', '81', 'XI'),
('199306092016021001', 'Adi Hartomo SST', 'PNS', '68', 'IX'),
('199307232022032008', 'Yulianti Soulissa S.E', 'PNS', '91', 'XII'),
('199307292017012001', 'Dewi Yuwinda Eka Ningrum SST', 'PNS', '74', 'X'),
('199310232017011001', 'Andhika Rahmadani SST', 'PNS', '75', 'X'),
('199401302017012001', 'Atika Prissila Ramadhani SST', 'PNS', '77', 'X'),
('199403062017011001', 'Dhika Devara Prihastiono SST', 'PNS', '78', 'X'),
('199405012022032014', 'Iin Meisal Alam A.Md.Stat.', 'PNS', '69', 'IX'),
('199405052016021001', 'Fadli Udin SST', 'PNS', '68', 'IX'),
('199405182017011001', 'Aldila Mursyid Rosuli SST', 'PNS', '78', 'X'),
('199406282017011001', 'Ian Pratama SST', 'PNS', '75', 'X'),
('199408032018021001', 'Prima Ardiansyah SST', 'PNS', '26', 'IV'),
('199408192019011003', 'Muhamad Saka Sotyasaksi S.Tr.Stat.', 'PNS', '80', 'X'),
('199409262017012001', 'Aulia Sepnawati Putri SST', 'PNS', '74', 'X'),
('199409272017012001', 'Rahmatika Sari SST', 'PNS', '75', 'X'),
('199410122018021001', 'Afifan Ainur Rofiq SST', 'PNS', '25', 'IV'),
('199411212018021001', 'Izzuddin Ar Rifqiy SST', 'PNS', '72', 'IX'),
('199412082017012001', 'Italia Sandi SST', 'PNS', '75', 'X'),
('199502252018021001', 'Aziem Nur Febriansyah SST', 'PNS', '25', 'IV'),
('199504032018022001', 'Haidar Afanin Shiba SST', 'PNS', '29', 'IV'),
('199504052018022001', 'Asniar SST', 'PNS', '26', 'IV'),
('199504272018021001', 'Juardi SST', 'PNS', '73', 'IX'),
('199504292018022002', 'Zaselina Pitaloka SST', 'PNS', '73', 'X'),
('199505082018021001', 'Alfiana Rinaldi SST', 'PNS', '70', 'IX'),
('199505112017012001', 'Ilha Istiqomah Senen SST', 'PNS', '76', 'X'),
('199505122018022001', 'Endah Puspa Rini SST', 'PNS', '25', 'IV'),
('199508302018021001', 'M. Rismawan Ridha SST', 'PNS', '79', 'X'),
('199509202018021001', 'Valentino Mandaku SST', 'PNS', '73', 'IX'),
('199509222017011001', 'Ahmad Mustaqim SST', 'PNS', '77', 'X'),
('199510122018021001', 'Devane Setyo Wicaksono SST', 'PNS', '72', 'IX'),
('199510132018021001', 'Rahmat Ghazali Fanath SST', 'PNS', '26', 'IV'),
('199510282018022001', 'Winda Sari SST', 'PNS', '74', 'X'),
('199511042018022001', 'Aulia Bima Putri SST', 'PNS', '70', 'IX'),
('199511132018021001', 'Marthen Paul Jan SST', 'PNS', '29', 'IV'),
('199512182019121001', 'Rio Erlangga Salamor A.Md.Stat.', 'PNS', '86', 'XI'),
('199601102019122001', 'Safira Shohwatil Islamy S.Tr.Stat.', 'PNS', '24', 'III'),
('199602152019012004', 'Karisma R. Muthmainnah S.Tr.Stat.', 'PNS', '84', 'XI'),
('199603172019012002', 'Yosephine Murwanisiwi Riantoby S.Tr.Stat.', 'PNS', '81', 'XI'),
('199604222019011001', 'Fahmi Arif Habibullah S.Tr.Stat.', 'PNS', '84', 'XI'),
('199605102019012002', 'Mira Choirunnisa S.Tr.Stat.', 'PNS', '84', 'XI'),
('199605202019012001', 'Rara Batara Putri Kesuma S.Tr.Stat.', 'PNS', '83', 'XI'),
('199607132019122001', 'Diny Shifag Luthfiyah Sahad S.Tr.Stat', 'PNS', '24', 'III'),
('199607232019011001', 'Farid Mustofa S.Tr.Stat.', 'PNS', '80', 'X'),
('199608082019121001', 'Dwi Wahyu Agustiar S.Tr.Stat', 'PNS', '44', 'VI'),
('199608142019011001', 'Aldi Leonardo Simara Haluruk SST', 'PNS', '80', 'X'),
('199608152019011001', 'Rifky Yudha Ardhana S.Tr.Stat.', 'PNS', '83', 'XI'),
('199608172019011002', 'Abdurrohman Fachrurrozy S.Tr.Stat.', 'PNS', '79', 'X'),
('199609112019011001', 'Ahmad Naufal Suprayogi S.Tr.Stat.', 'PNS', '79', 'X'),
('199610222019011001', 'Pradiva Nur Abditya S.Tr.Stat.', 'PNS', '83', 'XI'),
('199701022021041002', 'Irawan Ghazali S.Tr.Stat.', 'PNS', '05', 'I'),
('199701152019011002', 'Nizar Zulmi Abimayu S.Tr.Stat.', 'PNS', '83', 'XI'),
('199701202019032001', 'Nur Jannah Tuasikal S.Stat.', 'PNS', '82', 'XI'),
('199702072019121001', 'Hisbul Wathoni S.Tr.Stat', 'PNS', '85', 'XI'),
('199702092019121001', 'Wahyu Fitri Ardi S.Tr.Stat.', 'PNS', '21', 'III'),
('199702142021042002', 'Valencia Shabrina Putri S.Tr.Stat.', 'PNS', '22', 'III'),
('199702242018022001', 'Febrianty Budiono SST', 'PNS', '72', 'IX'),
('199702272022031007', 'Muhammad Azwar Sidik A.Md.Stat', 'PNS', '69', 'IX'),
('199704192019121001', 'Dikky Abner Giri S.Tr.Stat.', 'PNS', '21', 'III'),
('199705152021041001', 'Aditya Mirza Firmanda S.Tr.Stat.', 'PNS', '22', 'III'),
('199708152021042002', 'Lia Khairunnisak S.Tr.Stat.', 'PNS', '22', 'III'),
('199708282021042001', 'Eka Majida Agustyani S.Tr.Stat.', 'PNS', '03', 'I'),
('199709172019012001', 'Alfi Lailatur Rohmah S.Tr.Stat.', 'PNS', '79', 'X'),
('199709222019121001', 'Kukuh Septa Primananda S.Tr.Stat.', 'PNS', '31', 'IV'),
('199710282021041001', 'Prananta Adi Yudhanto S.Tr.Stat.', 'PNS', '02', 'I'),
('199710312019121001', 'Adiyatgo Dwi Kurnia Yahmin S.Tr.Stat.', 'PNS', '85', 'XI'),
('199711142019122002', 'Raden Rara Nurariza Rahmadhanty S.Tr.Stat.', 'PNS', '23', 'III'),
('199711232021042002', 'Vionita Lestari S.Tr.Stat.', 'PNS', '03', 'I'),
('199712242021041001', 'Dimas Suryawan Putra S.Tr.Stat.', 'PNS', '11', 'II'),
('199712242021042002', 'Rizkiani Ihfa S.Tr.Stat.', 'PNS', '02', 'I'),
('199801022021041001', 'Tri Rahmat Siyamto S.Tr.Stat.', 'PNS', '03', 'I'),
('199803052019121001', 'Mario Leonardo Hosea Salmanu Laudiun A.Md.Stat.', 'PNS', '86', 'XI'),
('199803182021041001', 'Fais Dwi Fala S.Tr.Stat.', 'PNS', '11', 'II'),
('199804162019122001', 'Diah Afrah Liany Rumodar A.Md.Stat.', 'PNS', '85', 'XI'),
('199804162021042001', 'Rosa Audia Lillah S.Tr.Stat.', 'PNS', '05', 'I'),
('199805032021041001', 'Ryan Reynaldy Hermanus Paimin S.Tr.Stat.', 'PNS', '03', 'I'),
('199805242021042001', 'Sulung Kharisma Forentine S.Tr.Stat.', 'PNS', '05', 'I'),
('199807202021041001', 'Muhammad Alfatih S.Tr.Stat.', 'PNS', '05', 'I'),
('199808032021041001', 'Andre Harry N. Zega S.Tr.Stat.', 'PNS', '12', 'II'),
('199809052021041001', 'Muhamad Rayhan Septian S.Tr.Stat.', 'PNS', '02', 'I'),
('199809192022011002', 'Muhamad Bagus Adji Briliyanto S.Tr.Stat.', 'PNS', '88', 'XI'),
('199809232021041001', 'Bagus Setiawan S.Tr.Stat.', 'PNS', '12', 'II'),
('199809252022011001', 'Rifal Miju S.Tr.Stat.', 'PNS', '88', 'XI'),
('199810022022032005', 'Marta Ekklesia Hutasoit A.Md.T', 'PNS', '69', 'IX'),
('199810232021041003', 'Davin Giovanni Batara Francisco Nainggolan S.Tr.St', 'PNS', '12', 'II'),
('199811172022011001', 'Alvin Berliansyah S.Tr.Stat.', 'PNS', '89', 'XII'),
('199812082021041001', 'Muhammad Tualeka A.Md.Stat', 'PNS', '22', 'III'),
('199812092019122001', 'Christensenia R.J. Wattimena A.Md.Stat.', 'PNS', '85', 'XI'),
('199901032021041001', 'Ibnu Athoilah S.Tr.Stat.', 'PNS', '11', 'II'),
('199901212021042001', 'Ainun Salsabiillaa Darmacare S.Tr.Stat.', 'PNS', '11', 'II'),
('199903212022011001', 'Zulfa Andika S.Tr.Stat.', 'PNS', '90', 'XII'),
('199903272021042001', 'Ariesta Aidha Putri Saraswati S.Tr.Stat.', 'PNS', '12', 'II'),
('199904202019122002', 'Lisa Selanno A.Md.Stat.', 'PNS', '86', 'XI'),
('199905292022011003', 'Nurkhamdani Ryan Pambudi S.Tr.Stat.', 'PNS', '87', 'XI'),
('199906292022011003', 'Hermarwan S.Tr.Stat.', 'PNS', '89', 'XII'),
('199908212022012004', 'Agnes Riskiana A.Md.Kb.N.', 'PNS', '88', 'XI'),
('199909052022012002', 'Herpanindra Fadhilah S.Tr.Stat.', 'PNS', '89', 'XII'),
('199909232022011003', 'Yusril Rizqi Putra Abdillah S.Tr.Stat.', 'PNS', '90', 'XII'),
('199910012022011003', 'Muhammad Ridwan Firdaus S.Tr.Stat.', 'PNS', '87', 'XI'),
('199910082022011002', 'Yongki Ramanda Putra S.Tr.Stat.', 'PNS', '90', 'XII'),
('199911152022011002', 'Andrielza Novedio S.Tr.Stat.', 'PNS', '91', 'XII'),
('200001032022011006', 'Mohamad Rizki Ramadhan S.Tr.Stat.', 'PNS', '90', 'XII'),
('200004042022011002', 'Aryodeni Raimin Augustyn A.Md.Stat.', 'PNS', '88', 'XI'),
('200008162019122003', 'Shania Maranatha Sofitje Nendissa A.Md.Stat.', 'PNS', '86', 'XI'),
('200011192022012006', 'Fitrah Hanifa A.Md.Stat.', 'PNS', '87', 'XI'),
('200107242022012004', 'Titis Wulandari A.Md.Kb.N.', 'PNS', '87', 'XI');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `ID_PENGGUNA` int(11) NOT NULL,
  `NAMA_PENGGUNA` varchar(30) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `LEVEL` enum('Administrator','Sekretaris') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`ID_PENGGUNA`, `NAMA_PENGGUNA`, `USERNAME`, `PASSWORD`, `LEVEL`) VALUES
(3, 'Harfely Leipary', 'admin1', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil`
--

CREATE TABLE `tb_profil` (
  `ID_PROFIL` int(11) NOT NULL,
  `NAMA_PROFIL` varchar(50) NOT NULL,
  `ALAMAT` text NOT NULL,
  `BIDANG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_profil`
--

INSERT INTO `tb_profil` (`ID_PROFIL`, `NAMA_PROFIL`, `ALAMAT`, `BIDANG`) VALUES
(1, 'BPS PROVINSI MALUKU', 'MALUKU ', 'DATA DAN STATISTIKA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`ID_PENGGUNA`);

--
-- Indexes for table `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`ID_PROFIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `ID_PENGGUNA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `ID_PROFIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
