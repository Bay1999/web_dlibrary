-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jan 2021 pada 05.20
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dlibrary_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `cover` varchar(255) NOT NULL,
  `bab` text DEFAULT NULL,
  `pdf` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `kategori_id`, `nama`, `penulis`, `penerbit`, `deskripsi`, `cover`, `bab`, `pdf`, `created_at`, `updated_at`) VALUES
(1, 1, 'Akhidah Akhlak Kelas VII', 'Chamzah, S.Ag.,', 'FGP Press', 'Buku ini disusun untuk membantu siswa MTs Kelas VII dalam proses pembelajaran Akidah Akhlak. Buku pelajaran Akidah Akhlak ini disusun berdasarkan KI/KD Kurikulum 2013 yang telah direvisi tahun 2016. Buku ini dilengkapi soal-soal latihan yang digunakan sebagai ajang latihan menghadapi penilaian semester dan penilaian akhir semester. \r\n\r\nSemoga buku ini dapat dijadikan referensi mata kuliah tertentu. Tentu kekurangsempurnaan pada penulisan bisa ditemukan, sehingga saran-kritik yang membangun sangat kami harapkan. Semoga buku ilmiah populer ini pada penerbitan edisi perdana ini dapat dipergunakan sebagaimana mestinya.', 'img/cover/akidah.jpg', '[\"Akidah Islam\",\"Sifat-Sifat Allah\",\"Akhlak Terpuji Allah SWT\",\"Shalat dan Zikir\",\"Kisah Nabi Sulaiman\"]', '[\"akhidah-1\",\"akhidah-2\",\"akhidah-3\",\"akhidah-4\",\"akhidah-5\"]', '2020-11-22 05:50:08', '2021-01-08 21:54:18'),
(2, 1, 'Pendidikan Agama Kel. X', 'Husni Thoyar', 'PUSKURBUK KEMENDIKBUD', 'Buku Pendidikan Agama Islam untuk SMA Kelas X ini adalah buku pelajaran agama untuk sekolah. Buku ini hadir sebagai upaya penulis untuk ikut serta mencerdaskan kehidupan bangsa. Inilah bentuk tanggung jawab penulis kepada bangsa dan negara kita tercinta. Sebagai generasi muda, Anda pun memiliki tanggung jawab kepada bangsa kita. Tanggung jawab tersebut berupa kewajiban berbakti kepada bangsa sebagai bentuk ibadah kita kepada Allah Swt. \r\n\r\nUntuk itulah, Anda harus memiliki pijakan karakter diri yang kuat. Terlebih lagi di usia Anda sekarang ini yang sedang diliputi keceriaan masa remaja. Memiliki karakter diri sangat penting bagi generasi muda seperti Anda. Salah satu upaya membentuk karakter diri adalah dengan pendidikan agama. Untuk mengisi kebutuhan sarana belajar agama inilah buku yang Anda pegang ini hadir. ', 'img/cover/agamakelx.jpg', '[\"Manusia dan Perannya di Bumi\",\"Ayat tentang Keikhlasan Beribadah\",\"Memahami Sifat Allah dalam Asma\'ul Husna\",\"Husnuzzan\",\"Hukum Islam\",\"Sejarah Rasulullah di Mekah\",\"Demokrasi dalam Ayat-Ayat Al-Qur\'an\",\"Iman kepada Malaikat\",\"Adab Hidup Sehari-hari\",\"Menghindari Perilaku Tercela\",\"Pengelolahan Zakat, Haji, dan Wakaf\",\"Dakwah Islam Periode Madinah\"]', '[\"Agama-1\",\"Agama-2\",\"Agama-3\",\"Agama-4\",\"Agama-5\",\"Agama-6\",\"Agama-7\",\"Agama-8\",\"Agama-9\",\"Agama-10\",\"Agama-11\",\"Agama-12\"]', '2020-11-22 05:50:08', '0000-00-00 00:00:00'),
(6, 5, 'Biologi Kelas X', ' Sri Widayati, Siti Nur Rochmah, Zubedi', 'PUSKURBUK KEMENDIKBUD', 'Dalam buku ini, kami menyajikan beragam elemen dan rubrikasi antara lain: Apersepsi, berisi judul bab, gambar, serta keterangan gambar yang terkait dengan materi yang akan dipelajari. Peta Konsep, berupa konsep-konsep inti yang akan diberikan pada setiap bab. Tujuan Pembelajaran, yakni target yang ingin dicapai pada setiap bab. Kata Kunci, berisi kata-kata yang merupakan inti materi dalam bab terkait. Telisik, yaitu rubrik berisi kegiatan siswa yang terkait dengan materi. Percobaan, yakni kegiatan siswa yang dilakukan di dalam kelas atau laboratorium, untuk membuktikan suatu teori yang terkait dengan materi. Diskusi, yaitu rubrik yang menyajikan suatu tema menarik untuk didiskusikan oleh siswa. Galeri, berisi aneka informasi tambahan. Uji Kompetensi, merupakan soal-soal akhir subbab. Kilas, berisi cuplikan informasi penting yang telah dipelajari oleh siswa pada materi ataupun kelas sebelumnya. Senaraikata, berisi penjelasan istilah-istilah penting dalam materi.', 'img/cover/biologi.jpg', '[\"Biologi dan Peranannya dalam Kehidupan\",\"Virus dan Peranannya dalam Kehidupan\",\"Organisme Prokariotik dan Peranannya dalam Kehidupan\",\"Protista dan Peranannya dalam Kehidupan\",\"Kingdom Fungsi dan Peranannya dalam Kehidupan\",\"Keanekaragaman Hayati\",\"Kingdom Plantae dan Peranannya dalam Kehidupan\",\"Kingdom Animalia dan Peranannya dalam Kehidupan\",\"Ekosistem\",\"Permasalahan Lingkungan dan Upaya Mengatasinya\"]', '[\"Biologi-1\",\"Biologi-2\",\"Biologi-3\",\"Biologi-4\",\"Biologi-5\",\"Biologi-6\",\"Biologi-7\",\"Biologi-8\",\"Biologi-9\",\"Biologi-10\"]', '2020-11-22 05:50:08', '0000-00-00 00:00:00'),
(19, 4, 'Cakrawala Sejarah X', 'Wardaya', 'PUSKURBUK KEMENDIKBUD', 'Para siswa, perkembangan ilmu pengetahuan, teknologi, dan arus globalisasi telah\r\nmembawa perubahan pada hampir semua aspek kehidupan manusia. Dalam hal ini,\r\ndiperlukan sumber daya manusia yang lebih berkualitas. Salah satu cara membina sumber\r\ndaya manusia yang berkualitas adalah dengan mempelajari sejarah, terutama sejarah\r\nbangsa sendiri.\r\nBuku Cakrawala Sejarah ini tidak hanya menyajikan informasi mengenai peristiwaperistiwa bersejarah yang pernah terjadi dan mungkin Anda alami sendiri, namun juga\r\nmengajak Anda berpikir kritis dan analitis dalam memanfaatkan pengetahuan sejarah\r\nsebagai siswa Sekolah Menengah Atas. Dengan berpikir kritis dan analitis, Anda akan\r\nmemiliki kemampuan intelektual dan keterampilan untuk memahami proses perubahan\r\ndan dinamika masyarakat.\r\nAgar Anda dapat lebih mudah memahami isi materi dalam buku ini, telah disediakan\r\nkomponen-komponen tugas individu, tugas kelompok, diskusi, analisis, dan juga latihan\r\nulangan yang berfungsi sebagai alat uji pemahaman Anda. Selain itu, ada pula rubrik\r\nKonsep dan Aktualita, Inskripsi, serta Sekilas Tokoh yang dapat memperkaya pengetahuan\r\nAnda. Disediakan pula Peta Konsep, Rangkuman, Glosarium, dan Indeks yang dapat\r\nmembantu Anda untuk mempelajari lebih dalam dan mencari literatur lain yang berkaitan\r\ndengan materi tertentu.', 'img/cover/1608534223.png', '[\"Hakikat Ruang Lingkup Ilmu Sejarah\",\"Tradisi Sejarah Masyarakat Indonesia Masa Praaksara dan Masa Aksara\",\"Prinsip-Prinsip Dasar Penelitian Sejarah\",\"Latihan Ulangan 1\",\"Kehidupan Awal Masyarakat Indonesia\",\"Pengaruh Peradaban Awal Masyarakat Dunia terhadap Peradaban Indonesia\",\"Asal-Usul Persebaran Manusia di Kepulauan Indonesia\",\"Latihan Ulangan 2\"]', '[\"160853422442\",\"160853422436\",\"160853422462\",\"160853422419\",\"160853422472\",\"16085342246\",\"160853422465\",\"160853422443\"]', '2020-12-21 00:03:44', '2020-12-25 06:42:09'),
(20, 3, 'Dasar Pemrograman', 'Inggriani Liem', 'Institut Teknologi Bandung', 'Mahasiswa informatika harus mendapatkan pengetahuan teoritis dan praktek pemrohraman dalam beberapa paradigma agar sudut pandang mahasiswa tidak sempit. Pemrograman fungsional merupakan salah satu paradigma yang wajib diberikan. Karena ada kaitannya dengan pengajaran pemrohraman pada paradigma lain, diktat ini merupakan salah satu dari seri diktat pemrograman yang menunjang perkuliahan pemrohraman program studi Informatika. Beberapa bagian yang dipandang terlalu sulit untuk dibahas karena kurangnya waktu, dapat dibahas pada pelajaran pemrohraman dengan paradigma yang berikutnya diajarkan.', 'img/cover/1608534755.png', '[\"Pendahuluan & Ekspresi Dasr\",\"Ekspresi Kondisional & Type Bentukan\",\"Ekspresi Rekursif\",\"List\",\"Tree & Ekspresi Lamda\"]', '[\"160853475542\",\"160853475531\",\"160853475540\",\"160853475589\",\"16085347558\"]', '2020-12-21 00:12:35', '2020-12-21 00:12:35'),
(21, 2, 'Apa dan Bagaimanakah Yang Dinamakan Hukum itu?', 'Handy Soebandi', 'Universitas Padjajaran Bandung', 'Sebuah pengantar ke alam hukum', 'img/cover/1608535716.jpeg', '[\"Bab 1\",\"Bab 2\",\"Bab 3\",\"Bab 4\"]', '[\"160853571698\",\"160853571617\",\"160853571632\",\"160853571615\"]', '2020-12-21 00:28:36', '2020-12-21 00:28:36'),
(22, 3, 'Arsitektur Komputer', 'Rolly Maulana Awangga', 'Individu', 'Buku ini diharapkan dapat membantu pembaca dalam memahami arsitektur yang ada didalam komputer', 'img/cover/1608537763.jpeg', '[\"Bagian 1\",\"Bagian 2\",\"Bagian 3\",\"Bagian 4\",\"Bagian 5\",\"Bagian 6\",\"Bagian 7\",\"Bagian 8\",\"Bagian 9\",\"Bagian 10\",\"Bagian 11\",\"Bagian 12\",\"Bagian 13\",\"Bagian 14\",\"Bagian 15\",\"Bagian 16\"]', '[\"160853776382\",\"160853776353\",\"160853776341\",\"160853776351\",\"160853776331\",\"16085377632\",\"160853776390\",\"1608537763100\",\"160853776357\",\"160853776390\",\"16085377637\",\"160853776370\",\"16085377635\",\"160853776342\",\"160853776333\",\"160853776379\"]', '2020-12-21 01:02:43', '2020-12-21 01:02:43'),
(23, 1, 'Pendidikan Agama Buddha Kelas 1', 'Sulan & Budi Santoso', 'Politeknik Negeri Media Kreatif ', 'Kurikulum 2013 dirancang sebagai kendaraan untuk mengantarkan peserta didik\r\nmenuju penguasaan kompetensi sikap, pengetahuan, dan keterampilan. Pendekatan\r\nini selaras dengan pandangan dalam agama Buddha bahwa belajar tidak hanya\r\nuntuk mengetM ahui atau mengingat (pariyatti), tetapi juga untuk melaksanakan\r\n(patipatti) dan mencapai penembusan (pativedha). “Seseorang banyak membaca\r\nkitab suci, tetapi tidak berbuat sesuai dengan ajaran, orang yang lengah itu sama\r\nseperti gembala yang menghitung sapi milik orang lain, ia tidak akan memperoleh\r\nmanfaat kehidupan suci.” (Dhp. 19).\r\nUntuk memastikan keseimbangan dan keutuhan ketiga ranah tersebut, pendidikan\r\nagama perlu diberi penekanan khusus terkait dengan pembentukan budi pekerti,\r\nyaitu sikap atau perilaku seseorang dalam hubungannya dengan diri sendiri,\r\nkeluarga, masyarakat dan bangsa, serta alam sekitar. Proses pembelajarannya\r\nmesti mengantar mereka dari pengetahuan tentang kebaikan, lalu menimbulkan\r\nkomitmen terhadap kebaikan, dan akhirnya benar-benar melakukan kebaikan.\r\nDalam ungkapan Buddha-nya, “Pengetahuan saja tidak akan membuat orang\r\nterbebas dari penderitaan, tetapi ia juga harus melaksanakannya” (Sn. 789).\r\nBuku Pendidikan Agama Buddha dan Budi Pekerti ini ditulis dengan semangat\r\nitu. Pembelajarannya dibagi ke dalam beberapa kegiatan keagamaan yang harus\r\ndilakukan peserta didik dalam usaha memahami pengetahuan agamanya dan\r\nmengaktualisasikannya dalam tindakan nyata dan sikap keseharian, baik dalam\r\nbentuk ibadah ritual maupun ibadah sosial.\r\nPeran guru sangat penting untuk meningkatkan dan menyesuaikan daya serap\r\npeserta didik dengan ketersediaan kegiatan yang ada pada buku ini. Guru dapat\r\nmemperkayanya secara kreatif dengan kegiatan-kegiatan lain, melalui sumber\r\nlingkungan sosial dan alam sekitar.\r\nSebagai edisi pertama, buku ini sangat terbuka untuk terus dilakukan perbaikan dan\r\npenyempurnaan. Oleh karena itu, kami mengundang para pembaca memberikan\r\nkritik, saran, dan masukan untuk perbaikan dan penyempurnaan pada edisi\r\nberikutnya. Atas kontribusi itu, kami mengucapkan terima kasih. Mudah-mudahan\r\nkita dapat memberikan yang terbaik bagi kemajuan dunia pendidikan dalam rangka\r\nmempersiapkan generasi seratus tahun Indonesia Merdeka (2045).', 'img/cover/1608538737.jpeg', '[\"Cara Hormat dan Sala\",\"Do\'a dan Kegiatan Sehari-hari\",\"Identitas Agama Buddha\",\"Simbol-Simbol Agama Buddha\",\"Silsilah Pangeran Siddharta\",\"Mimpi Ratu Mahamaya dan Kelahiran Pangeran Siddharta\",\"Upacara Pemberian Nama Pangeran Siddharta\",\"Yakin Kepada Tuhan\",\"Sifat-Sifat Ketuhanan dan Cara Buddha Menyelamatkan Manusia\"]', '[\"160853873777\",\"160853873823\",\"160853873877\",\"160853873878\",\"160853873813\",\"160853873830\",\"160853873845\",\"160853873846\",\"160853873886\"]', '2020-12-21 01:18:58', '2020-12-21 01:18:58'),
(24, 1, 'Software Enginering Book part 1', 'Aunur R. Mulyanto', 'PUSKURBUK KEMENDIKBUD', 'Book entitled \'Software Engineering\' is organized to meet the needs\r\nhandbook for students Vocational Education. Especially on the program\r\nexpertise Software Engineering. This book includes a description refers\r\nto the standard of competence and basic competencies for Software\r\nEngineering students from SMK class X, XI to class XII.\r\nEach chapter contains a theory must be understood correctly by\r\nstudents and accompanied by examples of problems that are relevant to\r\nthe theory. In addition there is also a matter that is based on the concept\r\nand discussed the theory test as a tool to measure the ability of students\r\nin the control of these materials.\r\nIn developing this book, the author seeks to be the material that is\r\npresented in accordance with the needs of competency to be achieved.\r\nTherefore, apart from the result of thought and experience as writers\r\nand practitioners of Software Engineering, which developed the material\r\nwith other appropriate reference', 'img/cover/1608899079.jpeg', '[\"Introducing\",\"Software Engineering Method\",\"Electronics and Computer Systems\",\"Operating System\",\"Basic Programming Algorithm\"]', '[\"160889907926\",\"160889907947\",\"160889907945\",\"160889907977\",\"160889907951\"]', '2020-12-25 05:24:39', '2021-01-02 02:25:02'),
(25, 3, 'Software Enginering Book 2', 'Aunur R. Mulyanto', 'PUSKURBUK KEMENDIKBUD', 'Book entitled \'Software Engineering\' is organized to meet the needs handbook for\r\nstudents Vocational Education. Especially on the program expertise Software\r\nEngineering. This book includes a description refers to the standard of competence\r\nand basic competencies for Software Engineering students from SMK class X, XI to\r\nclass XII.\r\nEach chapter contains a theory must be understood correctly by students and\r\naccompanied by examples of problems that are relevant to the theory. In addition there\r\nis also a matter that is based on the concept and discussed the theory test as a tool to\r\nmeasure the ability of students in the control of these materials.\r\nIn developing this book, the author seeks to be the material that is presented in\r\naccordance with the needs of competency to be achieved. Therefore, apart from the\r\nresult of thought and experience as writers and practitioners of Software Engineering,\r\nwhich developed the material with other appropriate reference\r\nIn this moment I wish to thank to all parties that support this book can be published.\r\nHopefully this book can be useful for students in developing capabilities. The author\r\nrealized that this book still needs to be developed continuously, so that the suggestions\r\nfrom various parties, this book is useful.', 'img/cover/1609742392.jpeg', '[\"Advance Programming Algorithm\",\"Application Programming Using VB & VB NET\",\"Java Object Oriented Programming\",\"Aplication Program C++\",\"Basic System Data Base\"]', '[\"160974239296\",\"160974239234\",\"160974239258\",\"160974239267\",\"160974239212\"]', '2021-01-03 23:39:52', '2021-01-03 23:39:52'),
(29, 3, 'Teori dan Aplikasi Kriptografi', 'Sentot Kromodimoeljo', 'SPK IT Consulting', 'Buku ini mencoba menjelaskan teori dan praktek kriptografi dan ditujukan\r\nterutama kepada pembaca yang ingin memperdalam pengetahuannya mengenai kriptografi. Banyak orang yang enggan membaca buku yang berisi matematika karena presentasi matematika biasanya hambar tanpa motivasi. Kriptografi tidak bisa dipisahkan dari matematika, jadi buku ini juga berisi matematika, akan tetapi penulis mencoba menggunakan bahasa yang sederhana\r\ndan memberi motivasi dan penjelasan untuk setiap rumus matematika agar\r\nmudah dipahami dan tidak membosankan. Memang untuk mendalami ilmu\r\nkriptografi tidak ada jalan pintas dan diperlukan ketekunan yang luar biasa.\r\nTetapi buku ini dapat juga dibaca untuk mendapatkan pengetahuan superficial\r\nmengenai ilmu kriptografi, dengan melewatkan atau membaca secara sepintas\r\nsaja bagian-bagian yang sukar matematikanya. Tentunya teori tanpa aplikasi\r\nadalah sia-sia, oleh sebab itu aplikasi kriptografi juga dibahas.', 'img/cover/1610348262.jpeg', '[\"Pendahuluan\",\"Konsep-konsep Dasar\",\"Matematika 1 - Aritmatika Modular\",\"Kriptografi Simetris Sederhana\",\"Matematika 2 - Polymonial Field\",\"Kriptografi Stream Chiper\",\"Kriptografi Blok Chiper\",\"Analisan Blok Chiper\",\"Cryptographically Secure Hashing\",\"Matematika 3 - Dasar PKC\",\"Matematika 4 - Kuadrat\",\"Matematika 5 - Algebraic Number\",\"Matematika 6 - Test Bilangan Prima\",\"Matematika 7 - Penguraian Bilangan Bulat\",\"Matematika 8 - Logaritma Diskrit\",\"Kriptografi Public Key\",\"Kriptografi Elliptic Curve\",\"Quantum Key Distribution\",\"Kebutuhan Akan Kriptografi\",\"Aplikasi - Keamanan Sesi\",\"Aplikasi - Pengamanan Email\",\"Aplikasi - Authentication\",\"Aplikasi - PKI\",\"Aplikasi - Cryptographic Library\",\"Analisa Protokol Kriptografi\",\"Kendala Penggunaan Kriptografi\",\"Masa Depan Kriptografi\"]', '[\"161034826255\",\"161034826249\",\"161034826223\",\"1610348262100\",\"161034826282\",\"161034826291\",\"161034826236\",\"161034826242\",\"161034826275\",\"161034826231\",\"161034826283\",\"161034826266\",\"161034826220\",\"161034826297\",\"161034826252\",\"16103482622\",\"161034826280\",\"161034826247\",\"161034826227\",\"1PengamanSesi\",\"2PengamanEmail\",\"3AplikasiAuthentication\",\"4AplikasiPk\",\"5AplikasiKripto\",\"6AnalisaProtokol\",\"7KendalaPengunaan\",\"8MasaDepan\"]', '2021-01-10 23:57:42', '2021-01-10 23:57:42'),
(30, 2, 'Refleksi dan Gagasan Kebijakan Fiskal', 'Anggito Abimanyu', 'Fakultas Ekonomi dan Bisnis UGM', 'Penulis membuka kembali catatan sejarah pengabdian yang telah diukir selama lebih dari 10 tahun di Departemen (sekarang Kementerian) Keuangan Republik Indonesia. Berbagai peristiwa, kejadian, tragedi, krisis dan keberhasilan telah terukir yang menurut hemat Penulis terlalu sayang untuk tidak didokumentasikan. Kejadian-kejadian tersebut merupakan hal kontemporer pada masanya, yang merupakan isu nasional dan sangat mungkin, seperti kata sejarah, terulang lagi. Mulai dari masalah makro, pajak, utang, BBM, tarif dasar listrik, APBN, inflasi, ASEAN, IMF, G20, krisis keuangan, bank century, perdagangan bebas, DPR, birokrasi hingga pemberantasan korupsi. Sudut pandang yang digunakan Penulis dalam tulisan ini terbagi menjadi dua sisi, meskipun tidak secara eksplisit dituliskan. Pertama, adalah sudut pandang penulis ketika masih berada di dalam lingkaran dalam Kementerian Keuangan. Kedua, adalah sudut pandang Penulis sebagai pengajar di Fakultas Ekonomika dan Bisnis (FEB) UGM, juga sebagai pengamat dan direktur Penelitian Ekonomika dan Bisnis (P2EB) FEB-UGM yang bersifat lebih analitis dan kritis atas kebijakan-kebijakan Pemerintah. Mudah-mudahan gagasan ini bermanfaat untuk menambah wawasan dan menjadi inspirasi bagi banyak orang.', 'img/cover/1610348838.jpeg', '[\"Masa Depan Ekonomi, Reformasi Birokrasi dan Ekonomi Poliki Angaran\",\"Masalah Risiki Fiskal: Inflasi, Capital, Inflow, Subsidi BBM dan Listrik 1\",\"Masalah Risiki Fiskal: Inflasi, Capital, Inflow, Subsidi BBM dan Listrik 2\",\"Dukungan Sektor Riil dan Perpajakan\",\"Anggaran dan Pemberantasan Korupsi\",\"Sektor Keuangan, Privatisasi dan Utang\",\"Ekonomi Global dan Integrasi dan Keuangan\"]', '[\"16103488389\",\"161034883895\",\"16103488382\",\"161034883883\",\"161034883899\",\"161034883817\",\"161034883896\"]', '2021-01-11 00:07:18', '2021-01-11 00:07:18'),
(31, 14, 'Kimia Kuantum', 'Koichi Ochno/Diterjemahkan Oleh Bambang Prihamboedi', 'Iwatani Shoten', 'Untuk mengatasi keterbatasan akses pada buku teks dan masalah bahasa, maka saya berinisiatif menerjemahkan buku elektronik ini, yang dapat diakses gratis. Buku versi internet ini adalah sebagai buku gratis untuk mahasiswa yang memiliki akses terbatas pada buku cetak dan menghadapai masalah bahasa dalam membaca bku bahasa asing. Saya berharap pembaca dapat mengambil manfaat dari buku ini. Saya menyampaikan terimakasih kepada Professor Ito atas bantuannya merealisasikan proyek ini dan kepada Iwanami Publishing Company yang mengizinkan publikasi edisi internet tanpa mengklaim royalty. Terimakasih pula kepada Dr. Bambang Prijamboedi yang telah membaca dan memberikan beberapa koreksi akhir.', 'img/cover/1610349400.jpeg', '[\"Teori Kuantum dan Persamaan Gelombang 1\",\"Teori Kuantum dan Persamaan Gelombang 2\",\"Atom 1\",\"Atom 2\",\"Metoda Dasar Aproksimasi\",\"Metoda Untuk Sistem Atom banyak dan Penerapannya\",\"Orbital Molekul dan Struktur Molekul 1\",\"Orbital Molekul dan Struktur Molekul 2\",\"Orbital Molekul dan Reaksi Kimia\"]', '[\"161034940059\",\"16103494007\",\"161034940066\",\"161034940082\",\"161034940066\",\"161034940073\",\"161034940068\",\"161034940055\",\"161034940039\"]', '2021-01-11 00:16:40', '2021-01-11 00:16:40'),
(32, 15, 'Komersialisasi Teknologi', 'Amir F. Manurung', 'RISTEK', 'Sebuah catatan komprehensif mengenai komersialisasi hasil riset di Korea, lengkap dengan contoh implementasinya di Indonesia.', 'img/cover/1610350027.jpeg', '[\"Perspaktif Sejarah : Strategi Pengembangan Kapasitas Inovasi IPTEK Korea\",\"Science Park dan Kota Inovasi Daedok\",\"Strategi Komersialisasi Teknologi oleh Korea Innovation Cluster Foundation (KICF)\",\"Korea Advanced Institute of Science and Techology (KAIST) dan Gugusan Inovasi\",\"Rencana Kegiatan Pengembangan Science dan Technology Park (STP)\",\"Pengembangan STP di Korea\",\"Proses dan Pencapaian dalam Komersialisasi Teknologi\"]', '[\"161035002772\",\"161035002780\",\"161035002799\",\"161035002779\",\"161035002776\",\"161035002737\",\"161035002782\"]', '2021-01-11 00:27:07', '2021-01-11 00:27:07'),
(33, 16, 'Sistem Local Ecological Knowledge dan Teknologi Masyarakat Lokal Pada Agroforestri', 'Rudi Hilmanto, S.Hut., M.Si', 'Universitas Lampung', 'Membahas manusia, alam, dan interaksinya tidak bisa terlepas dari gambaran\r\nsistem yang kompleks. Buku ini merupakan bahan referensi, hampir seluruhnya\r\nmerupakan hasil penelitian penulis, yang mencakup bagaimana manusia\r\nmelakukan interaksi dengan alam berupa adaptasi dan peradabannya.\r\nMasyarakat lokal (sebagai pakar-pakar lokal) dan teknologinya yang berharmoni\r\ndengan alam, sangat memahami kondisi alam lingkungan yang ada disekitar\r\nmereka. Pengetahuan dan teknologi masyarakat tersebut digunakan untuk\r\nmelakukan interaksi dengan alam berupa adaptasi dan peradabannya.\r\nKeharmonisan masyarakat lokal dengan alam diharapkan mampu\r\nmemberikan solusi dari permasalahan perubahan-perubahan yang terjadi di alam\r\nseperti tanah longsor, banjir, kelaparan, pemanasan global, dan kekeringan.\r\nPengetahuan masyarakat lokal dan teknologi tersebut perlu didokumentasikan,\r\ndigambarkan, disederhanakan, dikaji, dan dianalisis dalam bentuk model untuk\r\nmemudahkan memahami sistem yang kompleks. Penulis berharap dari buku ini\r\nmemberikan khasanah ilmu pengetahuan yang bersumber dari masyarakat lokal\r\ndalam pengelolaan sumberdaya alam.', 'img/cover/1610350445.jpeg', '[\"Pendahuluan\",\"Sistem dan Pengetahuan Masyarakat Lokal\",\"Interaksi Manusia dengan Alam\",\"Sistem Pengetahuan dalam Pengelolaan Sumber Daya Alam\",\"Pemodelan Sistem Pengetahuan Ekologi Lokal\",\"Sistem Pakar Lokal\"]', '[\"16103504459\",\"161035044564\",\"161035044597\",\"161035044687\",\"161035044695\",\"161035044681\"]', '2021-01-11 00:34:06', '2021-01-11 00:34:06'),
(34, 17, 'Seluk Beluk Masalah Agraria, Reforma Agraria dan Penelitian Agraria', 'Gunawan Wiradi; Moh. Shohibuddin (editor)', 'Sajogyo Institute; Sekolah Tinggi Pertanahan Nasional', '\"Duduk perkara\" masalah agraria seperti apa yang hendak dijawab oleh reforma agraria perlu diketahui terlebih dulu secara mendalam. Untuk itu, penelitian agraria yang cermat, sistematis dan mendalam amat diperlukan. Buku ini merupakan endapan pemikiran Gunawan Wiradi dalam menggulati masalah agraria, penelitian agraria dan kebijakan reforma agraria di tanah air sepanjang sekitar setengah abad kehidupan intelektualnya. Pergulatan panjang ini membawanya pada satu penegasan bahwa peliknya masalah agraria dan beragamnya tantangan global saat ini justru telah \"membuat Reforma Agraria sekaligus menjadi lebih sulit dilakukan, dan semakin harus dilakukan!\"', 'img/cover/1610351144.jpeg', '[\"Pendahuluan\",\"Ketimpangan Struktur Penguasaan\",\"Ketimpangan Peruntukan dan Penggunaan Tanah\",\"Perbedaan Konsepsi Agraria: Antara Hukum Formal dan Hukum Adat\",\"Konflik Agraria\",\"Tantangan Globalisasi\",\"Pasang Surut Agenda Reforma Agraria di Indonesia\",\"Reforma Agraria Berbasis Rakyar : Belajar dari Desa Ngandangan\",\"Penelitian Agraria: Beberapa Gagasan dan Saran\"]', '[\"161035114481\",\"161035114488\",\"161035114491\",\"161035114472\",\"161035114450\",\"161035114425\",\"161035114492\",\"161035114431\",\"161035114490\"]', '2021-01-11 00:45:44', '2021-01-11 00:45:44'),
(35, 17, 'Ranah Studi Agraria', 'Moh. Shohibuddin (editor); Gunawan Wiradi; Benjamin White; William L. Collier; Soentoro; Makali; Chris Manning', 'Sajogyo Institute; Sekolah Tinggi Pertanahan Nasional', 'Studi-studi Survei Agro Ekonomi (SAE) pada dekade 1970an-1980-an berada dalam konteks ketika strategi pembangunan Indonesia \"berbalik arah\": dari kebijakan Reforma Agraria yang menekankan pada perubahan struktural, menjadi kebijakan Revolusi Hijau yang menekankan pada perubahan teknologi. Bagaimanakah dampak dari strategi pembangunan ini pada hubungan kerja, penguasaan tanah, dan pembentukan kelas di pedesaan digambarkan secara rinci dalam buku ini. Pengantar yang ditulis oleh Prof. Ben White menjelaskan secara jernih di mana posisi studi-studi SAE tersebut, baik dari segi teoritis dalam konteks perdebatan akademis mengenai tanah, tenaga kerja dan pembentukan kelas; maupun dari segi kebijakan dalam konteks perdebatan mengenai relevansi land reform dan posisi ilmuwan sosial Indonesia dalam pembangunan pedesaan dan kesejahteraan masyarakat. Laporan studi-studi SAE tersebut, oleh karena itu, masih tetap relevan sampai sekarang karena berbagai masalah yang diungkapkannya merupakan masalah kronis dan persisten yang sampai kini pun masih dihadapi oleh bangsa ini.', 'img/cover/1610351654.jpeg', '[\"Recent Changes in Rice Harvesting Methods: Some Serious Socal Implications\",\"Sistim Tebasan, Bibit Unggul, dan Perubahan Agraria di Jawa\",\"Changes in the Kedoken System: Institutional Adaptation or Exploitation ?\",\"Pola-pola Penguasaan Tanah di Das Cimanuk: Beberapa Catatan Sementara\",\"Penguasaan Tanah dan Kelembagaan 1\",\"Penguasaan Tanah dan Kelembagaan 2\",\"Penguasaan Tanah dan Kelembagaan 3\",\"Landowbership, Tenancy, and Sources of Household Income 1\",\"Landowbership, Tenancy, and Sources of Household Income 2\",\"Agrarian and Nonagrarian Bases of Inequality in Nine Javanese Villages\"]', '[\"161035165440\",\"161035165422\",\"161035165443\",\"161035165457\",\"161035165414\",\"161035165475\",\"16103516547\",\"16103516542\",\"161035165424\",\"16103516545\"]', '2021-01-11 00:54:14', '2021-01-11 00:54:14'),
(36, 14, 'Nalar Fisika di Pasar Saham', 'Rachmad Resmiyanto', 'GRE Publishing', 'Buku ini menyuguhkan lompatan-lompatan nalar dari fisika ke pasar saham. Harapannya, buku ini akan turut melengkapi khazanah buku referensi ekonofisika di Indonesia yang masih sangat langka. Bagi pembaca dari fisika yang merindukan medan kajian yang menantang, ekonofisika patut untuk dipertimbangkan. Bagi pembaca dari ekonomi yang merindukan cara pandang atau paradigma baru dalam melihat medan persoalan ekonomi, ekonofisika layak diperhitungkan kecanggihannya.', 'img/cover/1610352051.jpeg', '[\"Selayang Pandang Ekonofisika\",\"Teori Peluang\",\"Proses Stokastik\",\"Jalan Acak\",\"Gerak Brown\",\"Pasar Saham\",\"Opsi Saham\",\"Hipotesis Pasar Efisien\",\"Perumusan Model Harga Opsi\",\"Siasat Investasi\"]', '[\"161035205125\",\"161035205165\",\"161035205194\",\"161035205157\",\"161035205122\",\"16103520514\",\"161035205147\",\"161035205137\",\"161035205153\",\"161035205179\"]', '2021-01-11 01:00:51', '2021-01-11 01:00:51'),
(37, 17, 'Land Reform Lokal a la Ngandagan', 'Mohamad Shohibuddin, Ahmad Nashih Luthfi', 'Sajogyo Institute, Sekolah Tinggi Pertanahan Nasional', 'Seperti di penjuru Nusantara lainnya, pada masa silam sistem tanah komunal juga pernah dikenal di Jawa: tanah dikuasai oleh desa untuk secara periodik diredistribusikan di antara para warga-inti desa (disebut sikep, gogol, kuli, dll). Di bawah kolonialisme Belanda, sistem ini kemudian di(salah)manfaatkan oleh penguasa kolonial untuk menjalankan tanam paksa serta mendapatkan tanah dan tenaga kerja secara murah--sebuah \"moda produksi kolonial\". Tak heran jika warisan komunalisme yang berbau kolonial ini segera menjadi sasaran utama agenda land reform di awal era kemerdekaan. Meski demikian, nun di sebuah desa di sudut tenggara Jawa Tengah, sebuah inovasi menarik di bawah kepemimpinan lokal pernah dilakukan pada 1947-1964. Memaknai ulang sistem tanah komunal yang pernah dikenal, komunitas desa ini berprakarsa menjalankan program redistribusi tanah sawah dan perluasan lahan kering di desa sehingga semua warga desa akhirnya memiliki akses atas tanah. Selain itu, larangan jual-beli dan penyakapan tanah ditegakkan dengan keras, sedangkan hubungan tenaga kerja dilakukan melalui tukar-menukar tenaga seraya menghindari segala bentuk patronase maupun subordinasi. Keberhasilan inovasi lokal ini, setelah pernah ditulis oleh Gunawan Wiradi pada tahun 1960 untuk karya skripsinya, dicoba disuarakan kembali dalam buku ini. Pengarang buku ini mencoba memaknai peristiwa lokal itu dalam konteks kekinian, seraya berargumen bahwa \"retradisionalisasi\" tidak harus selalu berarti kembali ke \"masa lampau\" dan \"feodalisme\". Dilakukan dengan semangat \"keadilan sosial\", melalui kombinasi \"revitalisasi\" dan \"reinterpretasi\" norma hukum adat, komunitas desa Ngandagan telah mencontohkan bagaimana \"retradisionalisasi\" bisa menjadi mekanisme untuk mewujudkan land reform. Dalam arti demikian, komunitas Ngandagan telah berhasil memberikan jawaban atas problem agraria yang dialami rakyat pasca kemerdekaan (yang negara tidak mampu melakukannya saat itu); tragisnya, untuk kemudian dijungkirbalikkan sama sekali pasca peristiwa \"tragedi 1965\".', 'img/cover/1610352387.jpeg', '[\"Pendahuluan\",\"Ngandagan : Desa Komunal Yang Memudar\",\"Desa Ngandagan dan Inisiatif Land Reform Lokal di Era Kepemimpinan Lurah Soemotirto\",\"Dinamika Politik Nasional di Era 1960-an dan Dampaknya di Desa Ngandagan\",\"Land Reform Lokal a la Ngandagan: Inovasi \\\"Sosialisme\\\" Berbasis Adat yang Terpangkas\"]', '[\"161035238717\",\"1610352387100\",\"161035238778\",\"161035238732\",\"161035238782\"]', '2021-01-11 01:06:27', '2021-01-11 01:06:27'),
(38, 16, 'Turbulensi Laut Banda', 'A. Sulaiman', 'BUKU-e LIPI', 'Buku ini berbicara tentang turbulen, sesuatu yang sukar didefinisikan\r\ntetapi sangat penting dalam kehidupan. Turbulensi terjadi diseluruh penjuru\r\nalam semesta: di dalam bintang, di atmosfer, di laut, di pabrik, di gedung\r\nDPR, dikantor, bahkan sampai di dapur. Dalam aktivistas kita sehari-hari,\r\nkita akan bertemu dengan turbulen. Sebagai contoh, bila kita menyeduh\r\nsecangkir susu coklat maka tentu saja kita akan mengaduknya supaya susu\r\ndan coklat bercampur sehingga bila diminum kita akan merasakan nikmat,\r\nsambil geleng-geleng kepala dan berkata “pas susunya !!”. Pada dasarnya kita\r\ntelah menciptakan turbulensi dengan pengaduk sebagai gaya pengeraknya.', 'img/cover/1610354163.jpeg', '[\"Pendahuluan\",\"Teori Turbulensi Dalam Fluida Berlapis\",\"Akuisisi dan Pengelolahan Data\",\"Diapycnal Mixing di Laut Banda\"]', '[\"161035416333\",\"161035416376\",\"161035416383\",\"161035416310\"]', '2021-01-11 01:36:03', '2021-01-11 01:36:03'),
(39, 18, 'Dasar Matematika Diskrit Dengan Pendekatan Problem Solving', 'Enos Lolang, Selvi Rajuaty Tandiseru', 'UKI Toraja Press', 'Buku ini terdiri atas enam bab yang diawali dengan pembahasan Dasar-Dasar Logika dan Pembuktian Matematika. Hal ini dimaksudkan untuk meletakkan landasan yang cukup kuat bagi mahasiswa dalam mempelajari logika matematika sehingga memiliki kemampuan yang memadai untuk memahami materi kuliah lainnya dalam bidang matematika. Agar mahasiswa dapat memperoleh pengalaman dalam menyelesaikan berbagai jenis kasus, pembahasan masing-masing bab disertai dengan banyak contoh penyelesaian soal-soal. Demikaian juga pada akhir setiap bab diberikan soal-soal latihan yang proporsional dengan contoh soal yang telah dibahas. Bab-bab selanjutnya tentang Dasar-Dasar Kombinatorika, menguraikan tentang prinsip pencacahan menurut matematika diskrit. Dengan memahami dasar-dasar kombinatorika pada bab ini diharapkan mahasiswa dapat mengembangkan kemampuan kombinatorik dalam melakukan perhitungan-perhitungan lanjut dengan menggunakan Permutasi dan Kombinasi, Prinsip Inklusi-Eksklusi, Fungsi Pembangkit, dan Relasi Rekurensi.', 'img/cover/1610355981.jpeg', '[\"Dasar-dasar Logika dan Pembuktian Matematika\",\"Dasar-dasar Kombinatorika\",\"Permutasi dan Kombinasi\",\"Prinsip Inklusi-Eksklusi\",\"Prinsip Pembangkit\",\"Relasi Rekurensi\"]', '[\"161035598134\",\"161035598193\",\"161035598114\",\"16103559815\",\"161035598110\",\"161035598111\"]', '2021-01-11 02:06:21', '2021-01-11 02:06:21'),
(40, 5, 'Principles and Tchniques of Biochemistry and Molecular Biology', 'Keith Wilson and John Walker', 'Cambridge University Press', 'This new edition of the bestselling textbook integrates the theoretical principles and experimental\r\ntechniques common to all undergraduate courses in the bio- and medical sciences. Three of the\r\n16 chapters have new authors and have been totally rewritten. The others have been updated and\r\nextended to reflect developments in their field exemplified by a new section on stem cells. Two new\r\nchapters have been added. One on clinical biochemistry discusses the principles underlying the diagnosis\r\nand management of common biochemical disorders. The second one on drug discovery and development\r\nillustrates how the principles and techniques covered in the book are fundamental to the design and\r\ndevelopment of new drugs. In-text worked examples are again used to enhance student understanding\r\nof each topic and case studies are selectively used to illustrate important examples. Experimental\r\ndesign, quality assurance and the statistical analysis of quantitative data are emphasised throughout\r\nthe book', 'img/cover/1610431581.jpeg', '[\"Basic Principles\",\"Cell Culture Techniques\",\"Centrifugation\",\"Microscopy\",\"Molecular Biology, Bioinformatics and Basic Techniques\",\"Recombinant DNA and Genetic Analysis\",\"Immunocemical Techniques\",\"Protein Structure, Purification, Characterisation and Function Analysis\",\"Mas Spectrometric Techniques\"]', '[\"161043158158\",\"16104315816\",\"16104315818\",\"161043158173\",\"16104315811\",\"161043158128\",\"161043158166\",\"161043158114\",\"161043158198\"]', '2021-01-11 23:06:21', '2021-01-11 23:06:21'),
(41, 5, 'Principles and Techniques of Biochemistry and Molecular Biology Part 2', 'Keith Wilson and John Walker', 'Cambridge University Press', 'This new edition of the bestselling textbook integrates the theoretical principles and experimental\r\ntechniques common to all undergraduate courses in the bio- and medical sciences. Three of the\r\n16 chapters have new authors and have been totally rewritten. The others have been updated and\r\nextended to reflect developments in their field exemplified by a new section on stem cells. Two new\r\nchapters have been added. One on clinical biochemistry discusses the principles underlying the diagnosis\r\nand management of common biochemical disorders. The second one on drug discovery and development\r\nillustrates how the principles and techniques covered in the book are fundamental to the design and\r\ndevelopment of new drugs. In-text worked examples are again used to enhance student understanding\r\nof each topic and case studies are selectively used to illustrate important examples. Experimental\r\ndesign, quality assurance and the statistical analysis of quantitative data are emphasised throughout\r\nthe book', 'img/cover/1610432277.jpeg', '[\"Electrophoretic Techniques\",\"Chromatographic Techniques\",\"Spectroscopic Techniques : I Spectrophometric Techniques\",\"Spectroscopic Techniques : II Spectrophometric Techniques\",\"Radiosotope Techniques\",\"Enzymes\",\"Principles of Clinical Biochemistry\",\"Cell Membrane Receptors and Cell Signalling\",\"Drug Discovery and Development\"]', '[\"161043227716\",\"161043227719\",\"161043227767\",\"161043227780\",\"161043227753\",\"161043227742\",\"161043227777\",\"16104322773\",\"161043227760\"]', '2021-01-11 23:17:57', '2021-01-11 23:17:57'),
(42, 16, 'Earth Science', 'CK-12 Foundation', 'CK-12 Foundation', 'Many students equate science to learning vocabulary terms, labeling\r\npictures, and memorizing facts. Science by nature is much more\r\ninclusive and loosely defined. Have you ever asked yourself questions\r\nabout your surroundings and wondered how or why they are\r\nhappening? This is science. Science works best when driven by\r\ncuriosity and innovation. In order for you to experience science in its\r\nfullest sense you must take it beyond the textbook and into your\r\neveryday experience, but in order to be meaningful there are certain\r\nguidelines that can help us. Science is not constrained to Earth\r\nScience, but there are cross-cutting concepts threaded throughout all\r\nscientific disciplines.', 'img/cover/1610432832.jpeg', '[\"Universe\",\"Universe 2\",\"Inside Earth\",\"Atmosphere\",\"Atmosphere 2\",\"Hydrosphere\",\"Hydrosphere 2\",\"People and Planet\",\"People and Planet 2\",\"People and Planet 3\"]', '[\"161043283369\",\"161043283390\",\"161043283371\",\"161043283353\",\"161043283367\",\"161043283379\",\"161043283358\",\"161043283365\",\"161043283383\",\"161043283361\"]', '2021-01-11 23:27:13', '2021-01-11 23:27:13'),
(43, 5, 'Medical Microbiology', 'F.H. Kayser, K.A. Bienz, J. Eckert and R.M. Zinkernagel', 'Thieme', 'The objective of this textbook of medical microbiology is to instill a broadbased knowledge of the etiologic organisms causing disease and the pathogenetic mechanisms leading to clinically manifest infections into its users.\r\nThis knowledge is a necessary prerequisite for the diagnosis, therapy, and\r\nprevention of infectious diseases. This book addresses primarily students\r\nof medicine, dentistry, and pharmacy. Beyond this academic purpose, its usefulness extends to all medical professions and most particularly to physicians\r\nworking in both clinical and private practice settings.', 'img/cover/1610433359.jpeg', '[\"General Aspects of Medical Microbiology\",\"Basic Principles of Immunology\",\"Basic Principles of Immunology 2\",\"Basic Principles of Immunology 3\",\"General Bacteriology\",\"General Bacteriology 2\",\"Bacteria as Human Pathogens\",\"Bacteria as Human Pathogens 2\",\"Bacteria as Human Pathogens 3\"]', '[\"161043335947\",\"161043335931\",\"161043335930\",\"161043335938\",\"161043335933\",\"161043335931\",\"161043335950\",\"161043335952\",\"161043335916\"]', '2021-01-11 23:35:59', '2021-01-11 23:35:59'),
(44, 5, 'Medical Microbiology Part 2', 'F.H. Kayser, K.A. Bienz, J. Eckert and R.M. Zinkernagel', 'Thieme', 'The objective of this textbook of medical microbiology is to instill a broadbased knowledge of the etiologic organisms causing disease and the pathogenetic mechanisms leading to clinically manifest infections into its users.\r\nThis knowledge is a necessary prerequisite for the diagnosis, therapy, and\r\nprevention of infectious diseases. This book addresses primarily students\r\nof medicine, dentistry, and pharmacy. Beyond this academic purpose, its usefulness extends to all medical professions and most particularly to physicians\r\nworking in both clinical and private practice settings.', 'img/cover/1610433746.jpeg', '[\"General Mycology\",\"Fungi as Human Pathogens\",\"General Virology\",\"Viruses as Human Pathogen\",\"Viruses as Human Pathogen 2\",\"Protozoa\",\"Protozoa 2\",\"Helminths\",\"Helminths 2\",\"Arthropods\",\"Etiological and Laboratory Diagnostic Summaries in Tabular Form\"]', '[\"161043374623\",\"161043374687\",\"161043374646\",\"161043374636\",\"1610433746100\",\"161043374628\",\"161043374672\",\"161043374648\",\"161043374664\",\"161043374678\",\"161043374675\"]', '2021-01-11 23:42:26', '2021-01-11 23:42:26'),
(45, 16, 'Essential of Ecology', 'G. Tyler Miller and Scott E. Spoolman', 'Brooks/Cole, Cengage Learning', 'In this edition, we build on proven strengths of past\r\neditions with the following major new features:\r\n■ New concept-centered approach\r\n■ Quantitative Data Analysis or Ecological Footprint\r\nAnalysis exercise at the end of each chapter and\r\nadditional Data Analysis exercises in the\r\nSupplements\r\n■ New design along with many new pieces of art and\r\nphotographs\r\n■ Comprehensive review section at the end of each\r\nchapter with review questions that include all\r\nchapter key terms in boldface\r\nThis edition also introduces a new coauthor, Scott\r\nSpoolman, who worked as a contributing editor on\r\nthis and other environmental science textbooks by Tyler\r\nMiller for more than 4 years. (See About the Authors,\r\np. xxiii.)', 'img/cover/1610434711.jpeg', '[\"Enviromental Problems, Their Causes, and Sustainability\",\"Science, Matter, Energy, and Systems\",\"Ecosystems: What Are They and How Do They Work ?\",\"Biodiversity and Evolution\",\"Biodiversity, Species Interactions, and Population Control\",\"The Human Population and Its Impact\",\"Climate and Terrestrial Biodiversity\",\"Aquatic Biodiversity\",\"Sustaining Biodiversity: The Species Approach\",\"Sustaining Biodiversity: The Ecosystem Approach\",\"Sustainin Aquatic Biodiversity\"]', '[\"161043471181\",\"161043471115\",\"161043471156\",\"161043471168\",\"161043471129\",\"161043471196\",\"161043471115\",\"161043471115\",\"161043471193\",\"16104347113\",\"161043471170\"]', '2021-01-11 23:58:31', '2021-01-11 23:58:31'),
(46, 3, 'Digital Logic and Computer Design', 'M. Morris Mano', 'M. Morris Mano', 'Digital is concerned with the design of digital electronic circuits. The subject is alse known by other names such as logic design, digital logic, switching circuit and digital system. Digital circuit are employed in the design of systems such as digital quire electronic digital hardware. this book present the basic tools for the design of desig circuits and provides methods and procedures suitable for a variety of digital design applications', 'img/cover/1610435633.jpeg', '[\"Binary Systems\",\"Boolean Algebra and Logic gates\",\"Simplification of Boolean Functions\",\"Combination Logic\",\"Combination Logic 2\",\"Synchronous Sequential Logic\",\"Registers, Counters, and the Memory Unit\",\"Algorithmic State Machines (ASM)\",\"Asynchronous Sequential Logic\",\"Digital Integrated Circuits\",\"Laboratory Experiments\",\"Laboratory Experiments 2\"]', '[\"161043563328\",\"161043563389\",\"161043563341\",\"161043563354\",\"161043563375\",\"161043563369\",\"161043563365\",\"161043563374\",\"161043563364\",\"161043563385\",\"161043563375\",\"161043563387\"]', '2021-01-12 00:13:53', '2021-01-12 00:13:53'),
(47, 19, 'Space, Time and Einstein', 'J.B. Kennedy', 'Acumen Publishing Limited', 'This book is a threefold invitation to the philosophy of space and\r\ntime. It introduces – gently and simply – the new, revolutionary ideas\r\nof Einstein. It introduces the concepts and arguments of philosophers,\r\nboth ancient and modern, which have proved of lasting value. Finally,\r\nit introduces the most recent discoveries and the debates raging now,\r\nin philosophy and physics, and points out how future developments\r\nmay unfold.', 'img/cover/1610436196.jpeg', '[\"Einstein\'s Revolution\",\"How to Build an Atomic Bomb\",\"Philosophical Progress\",\"The Philosophy of Left and Right\",\"Fronties\"]', '[\"16104361961\",\"161043619664\",\"161043619668\",\"161043619671\",\"161043619621\"]', '2021-01-12 00:23:16', '2021-01-12 00:23:16'),
(48, 19, 'Modern Cosmology', 'S. Bonometto, V. Gorini, and U Moschella', 'Institute of Physics Publishing', 'Cosmology is a new science, but cosmological questions are as old as mankind.\r\nTurning philosophical and metaphysical problems into problems that physics can\r\ntreat and hopefully solve has been an achievement of the 20th century. The main\r\ncontributions have come from the discovery of galaxies and the invention of a\r\nrelativistic theory of gravitation. At the edge of the new millennium, in the spring\r\nof 2000, SIGRAV—Societ`a Italiana di Relativit`a e Gravitazione (Italian Society\r\nof Relativity and Gravitation) and the University of Insubria sponsored a doctoral\r\nschool on ‘Relativistic Cosmology: Theory and Observation’, which took place\r\nat the Centre for Scientific Culture ‘Alessandro Volta’, located in the beautiful\r\nenvironment of Villa Olmo in Como, Italy. This book brings together the reports\r\nof the courses held by a number of outstanding scientists currently working in\r\nvarious research fields in cosmology. Topics covered range over several different\r\naspects of modern cosmology from observational matters to advanced theoretical\r\nspeculations.', 'img/cover/1610436709.jpeg', '[\"The Physics of the Early Universe\",\"An Introduction to the Physics of Cosmology\",\"An Introduction to the Physics of Cosmology 1\",\"Cosmological Models\",\"Inflationary Cosmology and Creation of Matter in the Universe\",\"Dark Metter and Particle Physics\",\"Supergravity and Cosmology\",\"The Cosmic Microwave Background\"]', '[\"161043670918\",\"161043670993\",\"16104367098\",\"161043670950\",\"161043670965\",\"161043670940\",\"161043670915\",\"161043670940\"]', '2021-01-12 00:31:49', '2021-01-12 00:31:49'),
(49, 19, 'Moden Cosmology Part 2', 'S. Bonometto, V. Gorini, and U Moschella', 'Institute of Physics Publishing', 'Cosmology is a new science, but cosmological questions are as old as mankind.\r\nTurning philosophical and metaphysical problems into problems that physics can\r\ntreat and hopefully solve has been an achievement of the 20th century. The main\r\ncontributions have come from the discovery of galaxies and the invention of a\r\nrelativistic theory of gravitation. At the edge of the new millennium, in the spring\r\nof 2000, SIGRAV—Societ`a Italiana di Relativit`a e Gravitazione (Italian Society\r\nof Relativity and Gravitation) and the University of Insubria sponsored a doctoral\r\nschool on ‘Relativistic Cosmology: Theory and Observation’, which took place\r\nat the Centre for Scientific Culture ‘Alessandro Volta’, located in the beautiful\r\nenvironment of Villa Olmo in Como, Italy. This book brings together the reports\r\nof the courses held by a number of outstanding scientists currently working in\r\nvarious research fields in cosmology. Topics covered range over several different\r\naspects of modern cosmology from observational matters to advanced theoretical\r\nspeculations.', 'img/cover/1610437088.jpeg', '[\"Dark Matter Search with Innovative Techniques\",\"Signature for Sigals From the Dark Universe\",\"Neutrino Oscillations: a Phnomenological Overview\",\"Highlights in Modern Observational Cosmology\",\"Clustering in the Universe: From Highly Nonlinear Structures to Homogeneity\",\"The Debate on Galaxy Space Distribution: an Overview\",\"Gravitational Lensing\",\"Numerical Simulations in Cosmology\"]', '[\"161043708823\",\"161043708882\",\"161043708839\",\"16104370891\",\"161043708932\",\"161043708986\",\"161043708996\",\"161043708974\"]', '2021-01-12 00:38:09', '2021-01-12 00:38:09'),
(50, 19, 'Space Warfare and Defense', 'Bert Chapman', 'ABC Clio', 'The key factor in early 21st-century American national security policy has justifiably\r\nbeen the U.S. Government’s responses to the September 11, 2001 terrorist attacks. This has\r\nbeen demonstrated by controversial wars in Iraq and Afghanistan; acrimony over the USA\r\nPatriot Act; contentious debate over the treatment and legal status of terrorist detainees;\r\ndisputes over the legal and constitutional propriety of the National Security Agency’s\r\nwireless surveillance program; and other affiliated topics such as homeland security, the\r\ncomplexities of counterinsurgency warfare, and U.S. relations with Islamic countries. As\r\nthese words are being written, public attention is riveted on the release of the Iraq Study\r\nGroup’s 2006 report containing possible suggestions for dealing with what has become an\r\nincreasingly frustrating situation in that country, and which has claimed significant U.S.\r\nmilitary casualties and financial resources.', 'img/cover/1610437786.jpeg', '[\"Development of U.S. Military Space Policy\",\"Development of U.S. Military Space Policy 2\",\"U.S. Military Space Programs\",\"Space Weaponry Development\",\"Other Countries Space Weapons Program\",\"Select U.S. Laws and International Agreements on Military Uses of Space\",\"U.S. Defense Department Resources\",\"Non-Defense Department U.S. Government Resources: Congress, Independent Agencies, and Commissions\",\"U.S. Research Institutions\",\"Foreign and International Government Organizations and Research Centers\"]', '[\"161043778627\",\"16104377863\",\"161043778646\",\"161043778657\",\"161043778697\",\"161043778653\",\"161043778618\",\"161043778664\",\"161043778633\",\"161043778664\"]', '2021-01-12 00:49:46', '2021-01-12 00:49:46'),
(51, 19, 'The Quantum Structure of Space d Time', 'David Gross, Marc Henneaux, and Alexander Sevrin', 'World Scientific', 'The 23rd Solvay Conference on Physics took place in Brussels from December\r\n1 through December 3, 2005 according to the tradition initiated by Lorentz at the\r\n1st Solvay Conference on Physics in 1911 (“Premier Conseil de Physique Solvay”).\r\nIt was followed on December 4 by a public event co-organized with the European\r\nCommission, during which R. Dijkgraaf and B. Greene delivered public lectures and\r\na panel of scientists (T. Damour, R. Dijkgraaf, B. Greene, D. Gross, G. ’t Hooft, L.\r\nRandall, G. Veneziano) answered questions from the audience.', 'img/cover/1610518846.jpeg', '[\"History\",\"Quantum Mechanics\",\"Singularities\",\"Mathematical Structures\",\"Emergent Spacetime\",\"Cosmology\"]', '[\"161051884655\",\"161051884638\",\"161051884625\",\"161051884632\",\"161051884694\",\"161051884647\"]', '2021-01-12 23:20:46', '2021-01-12 23:20:46');
INSERT INTO `buku` (`id`, `kategori_id`, `nama`, `penulis`, `penerbit`, `deskripsi`, `cover`, `bab`, `pdf`, `created_at`, `updated_at`) VALUES
(52, 14, 'Electrical power Systems Technology', 'Stephen W. Fardo and Dale R. Patrick', 'The Fairmont Press, INC.', 'Electrical Power Systems Technology (Third Edition) provides a broad\r\noverview of the production, distribution, control, conversion, and measurement of electrical power. The presentation method used in this book\r\nwill allow the reader to develop an understanding of electrical power systems. The units of the book are organized in a systematic manner, beginning with electrical power production methods. The fundamentals of each\r\nmajor unit of the book are discussed at the beginning of the unit. These\r\nfundamentals provide a framework for the information that follows in\r\neach unit. The last unit has been expanded to include control devices.', 'img/cover/1610519268.jpeg', '[\"Power Measurement Systems and Fundamentals\",\"Electrical Power Production Systems\",\"Alternating Current Power Systems\",\"Electrical Power Distribution Systems\",\"Single-phase and Three-Phase Distribution Systems\",\"Electrical Power Conversion Systems\",\"Mechanical Systems\",\"Electrocal Power Control Systems\"]', '[\"161051926838\",\"161051926816\",\"161051926826\",\"161051926861\",\"161051926856\",\"16105192684\",\"161051926873\",\"161051926874\"]', '2021-01-12 23:27:48', '2021-01-12 23:27:48'),
(53, 14, 'Elements of Nuclear Physics', 'W.E. Burcham', 'Longman', 'This book, like its predecessor Nuclear Physics, an Introduction (Longaman, 1972) is intended for the undegraduate, who is approaching the end of a first degree course in physics. It is not simply and abridged version of the earlier book, but is a new attempt to bring some of the more sigificant achievements pf nuclear physics withnin the compass of second-and third-year university teaching. Much selection of detail has therefor had to be exercised, and certain topics are expanded by an increased use of examples, for many of which solutions are provided. No formal treatment of elementary-particle physics is offered, but the connection of thissubject with nuclear physics is emphasized at many points', 'img/cover/1610520229.jpeg', '[\"The Methods of Nuclear physics\",\"Radioactivity, Radiations, Particles, and Interactions\",\"The Interaction of Particles and Radiation With Matter\",\"Some Apparatus of Nuclear Physics\",\"Nuclear Structure\",\"Nuclear Mass, Nuclear Size and Nuclear Matter\",\"The Single-particle Shell Model and Nuclear Moments\",\"Nuclear Deformations and The Unified Model\",\"Nuclear Interactions\",\"The Weak Interaction\",\"The Strong Interaction\"]', '[\"161052022983\",\"16105202294\",\"161052022977\",\"161052023044\",\"161052023037\",\"161052023089\",\"161052023027\",\"161052023065\",\"161052023051\",\"161052023077\",\"161052023017\"]', '2021-01-12 23:43:50', '2021-01-12 23:43:50'),
(54, 14, 'Essentials of Inorganic Chemistry', 'Katja A. Strohfeldt', 'WILEY', 'The aim of this book is to interest students from pharmacy, pharmaceutical sciences and related subjects to the\r\narea of inorganic chemistry. There are strong links between pharmacy/pharmaceutical sciences and inorganic\r\nchemistry as metal-based drugs are used in a variety of pharmaceutical applications ranging from anticancer\r\ndrugs to antimicrobial eye drops.\r\nThe idea of this introductory-level book is to teach basic inorganic chemistry, including general chemical principles, organometallic chemistry and radiochemistry, by using pharmacy-relevant examples. Each\r\nchapter in this book is dedicated to one main group of elements or transition-metal group, and typically starts\r\nwith a general introduction to the chemistry of this group followed by a range of pharmaceutical applications. Chemical principles are introduced with relevant pharmaceutical examples rather than as stand-alone\r\nconcepts.', 'img/cover/1610520639.jpeg', '[\"Introducing\",\"Alkali Metals\",\"Alkaline Earth Metals\",\"The Boron Group - Group 13\",\"The Carbon Group\",\"Group 15 Elements\",\"Transition Metals and d-Block Metal Chemistry\",\"Organometallic Chemistry\",\"The Clinical Use of Lanthanoids\",\"Radioactive Compounds and Their Clinical Application\",\"Chelation Therapy\"]', '[\"161052063969\",\"161052063953\",\"161052063926\",\"161052063990\",\"161052063969\",\"161052063959\",\"161052063955\",\"161052063977\",\"161052063978\",\"16105206392\",\"161052063951\"]', '2021-01-12 23:50:39', '2021-01-12 23:50:39'),
(55, 5, 'Food Microbiology', 'Martin R. Adams and Maurice O. Moss', 'RSCPublishing', 'The book is directed primarily at students of Microbiology, Food\r\nScience and related subjects up to Master’s level and assumes some\r\nknowledge of basic microbiology. We have chosen not to burden the text\r\nwith references to the primary literature in order to preserve what we hope\r\nis a reasonable narrative flow. Some suggestions for further reading for\r\neach chapter are included in Chapter 12. These are largely review articles\r\nand monographs which develop the overview provided and can also give\r\naccess to the primary literature if required. We have included references\r\nthat we consider are among the most current or best (not necessarily the\r\nsame thing) at the time of writing, but have also taken the liberty of\r\nincluding some of the older, classic texts which we feel are well worth\r\nrevisiting on occasion. By the very nature of current scientific publishing,\r\nmany of our most recent references may soon become dated themselves.\r\nThere is a steady stream of research publications and reviews appearing in\r\njournals such as Food Microbiology, Food Technology, the International\r\nJournal of Food Microbiology, the Journal of Applied Bacteriology and the\r\nJournal of Food Protection and we recommend that these sources are\r\nregularly surveyed to supplement the material provided here.', 'img/cover/1610521327.jpeg', '[\"The Scope of Food Microbiology\",\"Micro-organisms and Food Materials\",\"Factors Affecting the Growth and Survival of Micro-organisms in Foods\",\"The Microbiology of Food Preservation\",\"Microbiology of Primary Food Commodities\",\"Food Microbiology and Public Health\",\"Bacterial Agents of Foodborne Illness\",\"Bacterial Agents of Foodborne Illness 2\",\"Non-bacterial Agents of Foodborne Illness\",\"Fermented and Microbial Foods\",\"Methods for the Microbiological Examination of Foods\",\"Controlling the Microbiological Quality of Foods\"]', '[\"161052132795\",\"161052132722\",\"161052132757\",\"161052132817\",\"161052132860\",\"161052132875\",\"161052132822\",\"161052132898\",\"161052132811\",\"161052132819\",\"161052132840\",\"161052132825\"]', '2021-01-13 00:02:08', '2021-01-13 00:02:08'),
(56, 5, 'Plant Biology', 'A.J. Lack and D.E. Evans', 'Instant Notes', 'In this book we have covered all these aspects of modern plant biology. We have written it keeping\r\nin mind an undergraduate faced with a range of advanced courses, needing an affordable text that gives\r\ninsight into the whole range of plant science. Its scope and depth are suitable for a first and second year\r\nundergraduate student of plant biology; specialism will need an advanced text. We have also aimed it\r\nat molecular biologists and biotechnologists needing an accessible route to understanding the basis of\r\nthe systems on which they work. It is intended to provide the fundamental background required for\r\ntrue understanding. It should aid undergraduates in their learning and give insight for specialists into\r\nareas of plant science not their own. As in all Instant Notes books we have provided ‘Key Notes’ at the\r\nstart of each section. These are intended solely as revision notes, e.g. before an exam, to prompt a\r\nreader’s memory after reading the section fully. We have kept technical and jargon terms to the minimum needed for understanding; any such term is defined at first mention. We have assumed minimal\r\nprevious knowledge of biology and hope that the book will prove useful to journalists, environmentalists and those with a genuine interest in the key issues of plant biology as they seek to be informed\r\nabout the issues that they deal with.', 'img/cover/1610522118.jpeg', '[\"Introduction\",\"The Plant Cell\",\"Meristems and Primary Tissues\",\"The Flower\",\"Arabidopsis and Other Model Plants\",\"Features of Growth and Development\",\"Phytochrome, Photoperodism, and Photomorphogenesis\",\"Physiology of Floral Initiation and Development\",\"Plant and Water\",\"Photosynthetic Pigment and The Nature of Light\",\"Physical Factors and Plant Distribution\",\"Ecology of Flowering and Pollination\",\"Mycorriza\",\"Plants as Food\",\"Plant Breeding\",\"Diversity and Life Cycles\",\"Early Evolution of Vasculat Plants\",\"Early Seed Plants\"]', '[\"161052211858\",\"161052211850\",\"161052211830\",\"161052211852\",\"161052211831\",\"16105221185\",\"161052211827\",\"161052211871\",\"161052211897\",\"161052211844\",\"161052211835\",\"161052211891\",\"161052211855\",\"161052211894\",\"16105221186\",\"161052211836\",\"161052211873\",\"161052211852\"]', '2021-01-13 00:15:18', '2021-01-13 00:15:18'),
(57, 14, 'The Secret Science of Numerology', 'Shirley Blackwell Lawrance, Msc.D.', 'New Page Books', 'This is what this book is about; the search for facts that explain the\r\nscience behind number vibration and unraveling other mysteries on the\r\nway; discovering the thoughts of those who were most wise and how their\r\nbeliefs have been and are being proved by science today. And most importantly, how we can use this science to discover hidden meanings in our\r\neveryday words, our names, and in character analysis. It is an accurate\r\ntool for understanding our children and for employing the right people\r\nfor the job.', 'img/cover/1610522572.jpeg', '[\"The Search for the Science Behind it All\",\"Tracing the Roots\",\"Mystical Letters\",\"Number Groups and Numbers\",\"Key to Self-Knowledge and Word Analysis\",\"The New Age Inner Guidance Number\"]', '[\"161052257255\",\"161052257235\",\"161052257291\",\"161052257397\",\"161052257364\",\"161052257354\"]', '2021-01-13 00:22:53', '2021-01-13 00:22:53'),
(58, 18, 'Determinants and Their Application in Mathematical Physics', 'Robet Vein and Paul Dale', 'Springer', 'This book contains a number of features which cannot be found in any\r\nother book. Prominent among these are the extensive applications of scaled\r\ncofactors and column vectors and the inclusion of a large number of relations containing derivatives. Older books give their readers the impression\r\nthat the theory of determinants is almost entirely algebraic in nature. If\r\nthe elements in an arbitrary determinant A are functions of a continuous\r\nvariable x, then A possesses a derivative with respect to x. The formula for\r\nthis derivative has been known for generations, but its application to the\r\nsolution of nonlinear differential equations is a recent development.\r\nThe first five chapters are purely mathematical in nature and contain old\r\nand new proofs of several old theorems together with a number of theorems,\r\nidentities, and conjectures which have not hitherto been published. Some\r\ntheorems, both old and new, have been given two independent proofs on\r\nthe assumption that the reader will find the methods as interesting and\r\nimportant as the results.', 'img/cover/1610692778.jpeg', '[\"Determinants, First Minors, and Cofactors\",\"A Summary of Basic Determinant Theory\",\"Intermediate Determinant Theory\",\"Particular Determinants\",\"Further Determinant Theory\",\"Applications of Determinants in Mathematical Physics\"]', '[\"16106927796\",\"161069277976\",\"161069277998\",\"161069277987\",\"161069277949\",\"161069277964\"]', '2021-01-14 23:39:39', '2021-01-14 23:39:39'),
(59, 14, 'Basic Research Needs for Solar Energy Utilization', 'Nathan S. Lewis', 'Argonne National Laboratory', 'This report of the Basic Energy Sciences Workshop on Solar Energy Utilization identifies the\r\nkey scientific challenges and research directions that will enable efficient and economic use of\r\nthe solar resource to provide a significant fraction of global primary energy by the mid\r\n21st century. The report reflects the collective output of the workshop attendees, which included\r\n200 scientists representing academia, national laboratories, and industry in the United States and\r\nabroad, and the U.S. Department of Energy’s Office of Basic Energy Sciences and Office of\r\nEnergy Efficiency and Renewable Energy.', 'img/cover/1610693630.jpeg', '[\"Introduction\",\"Global Energy Resources\",\"Reports of the Panels on Basic Research Needs for Solar Energy Utilization\",\"Priority Research Directions\",\"Conclusion\"]', '[\"161069363077\",\"161069363059\",\"161069363097\",\"161069363041\",\"161069363044\"]', '2021-01-14 23:53:50', '2021-01-14 23:53:50'),
(60, 5, 'The Biology and Culture of Tilapias', 'R.S.V. Pullin, and R.H. Lowe~McConnell', 'International Center for Aquatic Resources Management', 'Tilapias are a major protein source in many of the developing countries.\r\nAlthough endemic to Africa, their distribution has been widened by artificial\r\nintroductions, mainly since the 19508, to include much of the tropics and\r\nsubtropics. Tilapias have many attributes that recommend them for culture.\r\nThey show excellent growth rates on low protein diets, whether cropping\r\nnatural aquatic production or receiving supplementary food. They tolerate\r\nwide ranges of environmental conditions, show little susceptibility to disease\r\nand are amenable to handling and captivity. They have a short generation\r\ntime and breed in captivity. Most important of all, they enjoy wide acceptance as food fish because of their high palatability and history of use from\r\ninland fisheries. With all these advantages, tilapias could become prime\r\ndomesticated species for fish culture.', 'img/cover/1610694184.jpeg', '[\"Biology\",\"Enviromental Physiology of Tilapias\",\"Tiliapia Culture in Ponds under Controlled Conditions\",\"Tilapia Hybridzation\"]', '[\"161069418459\",\"161069418493\",\"161069418413\",\"161069418473\"]', '2021-01-15 00:03:04', '2021-01-15 00:03:04'),
(61, 18, 'The Handbook of Portofolio Mathematics', 'Ralph Vince', 'John Wiley & Sons, Inc.', 'This book starts out as a compilation, cleanup, and in some cases,\r\nreformulation of the previous books I have written on this subject. I’m\r\nstanding on big shoulders here. The germ of the idea of those previous books\r\ncan trace its lineage to my good friend and past employer, Larry Williams. In\r\nthe dust cloud of his voracious research, was the study of the Kelly Criterion,\r\nand how that might be applied to trading. What followed over the coming\r\nyears then was something of an explosion in that vein, culminating in a\r\nbetter portfolio model than the one which is still currently practiced.\r\nFor years now I have been away from the markets—intentionally. In a\r\npeculiar irony, it has sharpened my bird’s-eye view on the entire industry.\r\nPeople still constantly seek me out, bend my ears, try to pick my hollow,\r\nrancid pumpkin about the markets. It has all given me a truly gigantic field\r\nof view, a dizzying phantasmagoria, on who is doing what, and how', 'img/cover/1610694839.jpeg', '[\"The Random Process and Gambling Theory\",\"Probability Distributions\",\"Reincensment of Returns and Geometric Growth Concepts\",\"Optimal f\",\"Characteristics of Optimal f\",\"Laws of Growth, Utility, and Finite Streams\",\"Classical Portofolio Construction\",\"The Geometry of Mean Variance Portfolios\",\"The Leverage Space Model\",\"The Geometry of Leverage Space Portfolios\",\"What the Professionals Have Done\",\"The Leverage Space Porfolio Model in the Real World\"]', '[\"161069483983\",\"161069483913\",\"161069483975\",\"161069483935\",\"161069483924\",\"161069483979\",\"161069483999\",\"161069483999\",\"161069483993\",\"161069483959\",\"161069483912\",\"161069483960\"]', '2021-01-15 00:13:59', '2021-01-15 00:13:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Agama', 'img/kategori/quran.png', '2020-12-03 12:03:03', '2020-12-03 12:03:03'),
(2, 'Hukum', 'img/kategori/law.png', '2020-12-03 12:03:03', '2020-12-03 12:03:03'),
(3, 'Informatika', 'img/kategori/cursor.png', '2020-12-03 12:03:03', '2020-12-03 12:03:03'),
(4, 'Sejarah', 'img/kategori/pillar.png', '2020-12-03 12:03:03', '2020-12-03 12:03:03'),
(5, 'Biologi', 'img/kategori/plant.png', '2020-12-03 12:03:03', '2020-12-03 12:03:03'),
(14, 'Kimia dan Fisika', 'img/kategori/1610348990.png', '2021-01-11 00:09:50', '2021-01-11 00:55:26'),
(15, 'Manajemen', 'img/kategori/1610349681.png', '2021-01-11 00:21:21', '2021-01-11 00:21:21'),
(16, 'Alam', 'img/kategori/1610354617.png', '2021-01-11 00:29:10', '2021-01-11 01:43:37'),
(17, 'Sosial', 'img/kategori/1610350618.png', '2021-01-11 00:36:58', '2021-01-11 00:36:58'),
(18, 'Matematika', 'img/kategori/1610355672.png', '2021-01-11 02:01:12', '2021-01-11 02:01:12'),
(19, 'Antariksa', 'img/kategori/1610435899.png', '2021-01-12 00:18:19', '2021-01-12 00:18:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namabencana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `korbanbencana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerugianbencana` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `durasibencana` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caramitigasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `namabencana`, `korbanbencana`, `kerugianbencana`, `lokasi`, `tanggal`, `durasibencana`, `kecamatan`, `caramitigasi`, `created_at`, `updated_at`) VALUES
(1, 'Banjir Turi', '43 kk terdampak', '25 hektar sawah terendam', 'Turi', '2020-09-17', '2 minggu', 'Turi', 'Menyediakan Biopori, Mengecek debit air di Pintu Air', '2020-11-17 08:03:06', '2020-12-11 00:44:15'),
(4, 'Banjir Weduni', '30 kk terdampak', '10 hektar sawah terendam', 'Weduni', '2020-09-30', '1 minggu', 'Deket', 'Mengeruk Saluran Air, Membuat Biopori', '2020-11-29 21:02:05', '2020-12-11 00:44:51'),
(5, 'Kekeringan Tikung', '33 kk terdampak', '2 hektar sawah mengalami gagal panen', 'tikung', '2020-12-01', '2 bulan', 'Tikung', 'Membuat cadangan air seperti tandon di rumah, membuat sumur', '2020-12-03 08:43:07', '2020-12-11 00:45:04'),
(6, 'Banjir Sumur Genuk', '65 KK terdampak', '5 hektar lahan pertanian terendam', 'Desa Sumur Genuk', '2018-07-20', '2 bulan', 'Babat', 'Cek Ketinggian Air di Pintu Air Bengawan, Siapkan Sumber Resapan Air (Biopori) di Lingkungan, Bersihkan dan Keruk Saluran Air yang Mampet', '2020-12-24 07:21:12', '2020-12-24 07:32:46'),
(8, 'Banjir Banaran', '525 KK terdampak', '164 rumah terendam, 6 hektar lahan pertanian terendam', 'Desa Banaran', '2018-07-20', '2 minggu', 'Babat', 'Cek Ketinggian Air di Pintu Air Bengawan, Siapkan Sumber Resapan Air (Biopori) di Lingkungan, Bersihkan dan Keruk Saluran Air yang Mampet', '2020-12-24 07:25:12', '2020-12-24 07:31:27'),
(9, 'Banjir Datinawong', '125 KK terdampak', '40 rumah terendam, 40 hektar lahan pertanian terendam, 10 hektar tambak gagal panen', 'Desa Datinawong', '2018-07-20', '1 bulan', 'Babat', 'Cek Ketinggian Air di Pintu Air Bengawan, Siapkan Sumber Resapan Air (Biopori) di Lingkungan, Bersihkan dan Keruk Saluran Air yang Mampet', '2020-12-24 07:26:50', '2020-12-24 07:30:36'),
(10, 'Banjir Trepan', '50 KK terdampak', '10 hektar lahan pertanian terendam', 'Desa Trepan', '2018-03-18', '1 bulan', 'Babat', 'Cek Ketinggian Air di Pintu Air Bengawan, Siapkan Sumber Resapan Air (Biopori) di Lingkungan, Bersihkan dan Keruk Saluran Air yang Mampet', '2020-12-24 07:34:59', '2020-12-24 07:34:59'),
(11, 'Banjir Pucangtelu', '36 KK terdampak', '47 rumah terendam, 450 hektar lahan pertanian terendam', 'Desa Pucangtelu', '2018-03-11', '1 bulan', 'Kalitengah', 'Cek Ketinggian Air di Pintu Air Bengawan, Siapkan Sumber Resapan Air (Biopori) di Lingkungan, Bersihkan dan Keruk Saluran Air yang Mampet', '2020-12-24 07:38:36', '2020-12-24 07:38:36'),
(12, 'Banjir Pucangro', '36 KK terdampak', '44 rumah terendam, 167 hektar lahan pertanian terendam', 'Desa Pucangro', '2018-03-18', '1 bulan', 'Kalitengah', 'Cek Ketinggian Air di Pintu Air Bengawan, Siapkan Sumber Resapan Air (Biopori) di Lingkungan, Bersihkan dan Keruk Saluran Air yang Mampet', '2020-12-24 07:40:53', '2020-12-24 07:40:53'),
(13, 'Banjir Mblajo', '57 KK terdampak', '57 rumah terendam, 87 hektar tambak gagal panen', 'Desa Mblajo', '2018-03-18', '1 bulan', 'Kalitengah', 'Cek Ketinggian Air di Pintu Air Bengawan, Siapkan Sumber Resapan Air (Biopori) di Lingkungan, Bersihkan dan Keruk Saluran Air yang Mampet', '2020-12-24 07:42:57', '2020-12-24 07:42:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_11_01_050125_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reader`
--

CREATE TABLE `reader` (
  `id` int(11) NOT NULL,
  `buku_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reader`
--

INSERT INTO `reader` (`id`, `buku_id`, `created_at`, `updated_at`) VALUES
(1, '1', '2020-12-01 02:32:21', '2020-12-01 02:32:21'),
(2, '2', '2020-12-01 02:32:45', '2020-12-01 02:32:45'),
(3, '1', '2020-12-01 02:33:07', '2020-12-01 02:33:07'),
(4, '1', '2020-12-01 02:42:03', '2020-12-01 02:42:03'),
(5, '1', '2020-12-01 03:32:45', '2020-12-01 03:32:45'),
(6, '2', '2020-12-04 01:42:27', '2020-12-04 01:42:27'),
(7, '2', '2020-12-10 22:41:11', '2020-12-10 22:41:11'),
(8, '1', '2020-12-10 22:41:24', '2020-12-10 22:41:24'),
(9, '6', '2020-12-10 22:47:36', '2020-12-10 22:47:36'),
(10, '23', '2020-12-21 02:31:33', '2020-12-21 02:31:33'),
(11, '24', '2020-12-25 06:40:18', '2020-12-25 06:40:18'),
(12, '24', '2020-12-25 22:20:33', '2020-12-25 22:20:33'),
(13, '24', '2020-12-25 22:42:54', '2020-12-25 22:42:54'),
(14, '22', '2020-12-31 02:46:46', '2020-12-31 02:46:46'),
(15, '24', '2020-12-31 02:57:52', '2020-12-31 02:57:52'),
(16, '1', '2020-12-31 03:32:19', '2020-12-31 03:32:19'),
(17, '24', '2020-12-31 04:20:01', '2020-12-31 04:20:01'),
(18, '24', '2020-12-31 04:20:39', '2020-12-31 04:20:39'),
(19, '24', '2021-01-01 04:00:36', '2021-01-01 04:00:36'),
(20, '24', '2021-01-01 04:00:44', '2021-01-01 04:00:44'),
(21, '24', '2021-01-01 04:02:30', '2021-01-01 04:02:30'),
(22, '24', '2021-01-01 04:04:26', '2021-01-01 04:04:26'),
(23, '24', '2021-01-01 20:07:58', '2021-01-01 20:07:58'),
(24, '23', '2021-01-01 20:08:06', '2021-01-01 20:08:06'),
(25, '24', '2021-01-01 23:09:09', '2021-01-01 23:09:09'),
(26, '1', '2021-01-02 02:17:40', '2021-01-02 02:17:40'),
(27, '25', '2021-01-08 22:10:58', '2021-01-08 22:10:58'),
(28, '29', '2021-01-11 00:40:39', '2021-01-11 00:40:39'),
(29, '29', '2021-01-11 00:40:59', '2021-01-11 00:40:59'),
(30, '31', '2021-01-11 00:41:24', '2021-01-11 00:41:24'),
(31, '34', '2021-01-11 00:46:03', '2021-01-11 00:46:03'),
(32, '29', '2021-01-11 01:11:22', '2021-01-11 01:11:22'),
(33, '29', '2021-01-11 01:11:26', '2021-01-11 01:11:26'),
(34, '29', '2021-01-11 01:11:46', '2021-01-11 01:11:46'),
(35, '29', '2021-01-11 01:11:48', '2021-01-11 01:11:48'),
(36, '29', '2021-01-11 01:21:10', '2021-01-11 01:21:10'),
(37, '29', '2021-01-11 01:21:15', '2021-01-11 01:21:15'),
(38, '38', '2021-01-11 01:44:57', '2021-01-11 01:44:57'),
(39, '38', '2021-01-11 01:45:06', '2021-01-11 01:45:06'),
(40, '38', '2021-01-11 01:45:13', '2021-01-11 01:45:13'),
(41, '46', '2021-01-12 00:14:27', '2021-01-12 00:14:27'),
(42, '53', '2021-01-12 23:51:15', '2021-01-12 23:51:15'),
(43, '39', '2021-01-19 02:01:54', '2021-01-19 02:01:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `commentar` varchar(255) NOT NULL,
  `rate` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`id`, `buku_id`, `user`, `commentar`, `rate`, `created_at`, `updated_at`) VALUES
(5, 1, 'Bayu1999', 'lol', 3.5, '2020-11-05 03:27:27', '2020-11-05 03:27:27'),
(6, 2, 'Bayu1999', 'iki', 4, '2020-11-07 01:12:13', '2020-11-07 01:12:13'),
(7, 6, 'Bayu1999', 'popo', 3, '2020-11-07 06:29:08', '2020-11-07 06:29:08'),
(8, 1, 'Bayu', 'bayu seng ngewehi komentar ogak bayu1999 seng ngewehi update 2', 5, '2020-11-07 06:30:02', '2020-11-07 06:30:02'),
(9, 2, 'Agung', 'biasa', 1.5, '2020-11-07 09:31:08', '2020-11-07 09:31:08'),
(12, 20, 'Bayu9', 'buku yang menarik', 4, '2020-12-31 03:37:03', '2020-12-31 03:37:03'),
(14, 1, 'Yuu19', 'buku yang bagus', 4, '2021-01-02 03:01:24', '2021-01-02 03:01:24'),
(15, 2, 'Yuu19', 'bagus sekali lagi', 4, '2021-01-02 03:02:57', '2021-01-02 03:02:57'),
(16, 24, 'Yuu19', 'buku yang luar biasa', 4, '2021-01-02 07:03:51', '2021-01-02 07:03:51'),
(17, 20, 'Yuu19', 'biasa', 3, '2021-01-02 07:06:07', '2021-01-02 07:06:07'),
(18, 25, 'Agung200', 'Buku yang sangat menarik', 5, '2021-01-08 22:13:09', '2021-01-08 22:13:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0tLAu2tndFJgu39RwaR5A5l7BVViUtd4MnSrAJTH', NULL, '209.17.96.138', 'Mozilla/5.0 (compatible; Nimbostratus-Bot/v1.3.2; http://cloudsystemnetworks.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibGtHeVdZbVZuUWlFNHFNWkhVRDRWWXpwV3NDc3h3ZXg3c1ZlRjM1QSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyOToiaHR0cDovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1610868586),
('0XyHYaU9EatLEeDKlspP88YpvTGjLyGD9ijnpXps', NULL, '209.17.96.90', 'Mozilla/5.0 (compatible; Nimbostratus-Bot/v1.3.2; http://cloudsystemnetworks.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRU9MbExOMG5FZUgxQm9nUU81YlZtSTZXOHRYOE9JNHNBQmp3M0lYcyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cHM6Ly9kbGlicmFyeS5tYW5nYW5vaWQuY29tIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vZGxpYnJhcnkubWFuZ2Fub2lkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1611062474),
('1hK2akAhPwNCEAsGAcOwrIC1mMmdJIwFql3t6cfw', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQTh6ZjFvVTV2eXZBTWxCV0VWZFlTSDI1S1BFRkRlYjdDUTZSUEpFbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610693334),
('34vkhwRWVTf7BF3cUi9N5gDDDgwOIOJd9dYXXXVP', 1, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQUhjQU8zQlZ4cG9sZEJtM3lOS2RuNVJkS1QzY0ZCME5HZzhrTXE2eCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwczovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20vZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGVlSkVwVHcxR3VuTW45UmM2Y0YvU3V6Nlp1QUdQRlgyZ3ZqSXlDcmdoRW5xWWRmUUpSbjJDIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRlZUpFcFR3MUd1bk1uOVJjNmNGL1N1ejZadUFHUEZYMmd2akl5Q3JnaEVucVlkZlFKUm4yQyI7fQ==', 1610692924),
('4OANp3VmlWhHXv5qzxvENx1EFlJEqRlyjVELVlOT', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibTg5TjNwYXNiMzV5cGh0bngzSmxYU3N2SDBXaUdkS0RqU09jMDFjVyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20vZGFzaGJvYXJkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9kbGlicmFyeS5tYW5nYW5vaWQuY29tL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1610693340),
('55lweWVCYbJoxs2oAihaDjlU0yIk57ywtUp7xOOG', 1, '114.125.81.68', 'Mozilla/5.0 (Linux; Android 10; M2004J19C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiY2Q2VU96OW0zcTV0RnNoUTh5UWNHT1huWjVBeGFSdTVTREp1UlFVQyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vZGxpYnJhcnkubWFuZ2Fub2lkLmNvbS9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZWVKRXBUdzFHdW5NbjlSYzZjRi9TdXo2WnVBR1BGWDJndmpJeUNyZ2hFbnFZZGZRSlJuMkMiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGVlSkVwVHcxR3VuTW45UmM2Y0YvU3V6Nlp1QUdQRlgyZ3ZqSXlDcmdoRW5xWWRmUUpSbjJDIjt9', 1610764814),
('6LCdH2NNHks93Ja2hL2M1YMzcQtgcjIdrTWXo88O', 1, '36.68.223.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiY0tRSWlSTEttZDA1RU9DRzkybjhSbG5TaW9CajRLZDRCRmx0cHd6MSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxOiJodHRwOi8vZGxpYnJhcnkubWFuZ2Fub2lkLmNvbS9idWt1L2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRlZUpFcFR3MUd1bk1uOVJjNmNGL1N1ejZadUFHUEZYMmd2akl5Q3JnaEVucVlkZlFKUm4yQyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZWVKRXBUdzFHdW5NbjlSYzZjRi9TdXo2WnVBR1BGWDJndmpJeUNyZ2hFbnFZZGZRSlJuMkMiO30=', 1611047148),
('DIfZMIc0L3IQYROnprmPlfobGdygcJz4Xhxjh30u', NULL, '138.246.253.24', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.85 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0VCckNHcUpZWWE5UGs2NHg5NDdJcXdtMlB4NVEzY2k5b2VVM2ZEMSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cHM6Ly9kbGlicmFyeS5tYW5nYW5vaWQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1611326152),
('eH41UWPDkxP1c2lGiPJHDumf6EZaxtiFBWAiNwwa', 1, '114.125.81.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoic2JWQ0NXSUJyNkxhNWNCV2I5RDA4VFNmcVBMVXMySGR6SGZrZ0VacyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vZGxpYnJhcnkubWFuZ2Fub2lkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRlZUpFcFR3MUd1bk1uOVJjNmNGL1N1ejZadUFHUEZYMmd2akl5Q3JnaEVucVlkZlFKUm4yQyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZWVKRXBUdzFHdW5NbjlSYzZjRi9TdXo2WnVBR1BGWDJndmpJeUNyZ2hFbnFZZGZRSlJuMkMiO30=', 1610780347),
('FeTRTHjn0MUCLybkaL0dvRTMvIrvXRgTJzOrDC6P', NULL, '138.246.253.24', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.85 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0FjWUJmWDdrSjdaZUx5TUpwcHFsY3VHZjc5bXJLOXc3eGFMYXVRYSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cHM6Ly93d3cuZGxpYnJhcnkubWFuZ2Fub2lkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1611224951),
('fMi5IAanhUi8hFdjjaN37rpxJqAPAuJnRYmhYUVK', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQUNpSEpybW5SMEV3emhaUDB4dEdlaW1xSURzV041MkFUUlF1TjNjWCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZWVKRXBUdzFHdW5NbjlSYzZjRi9TdXo2WnVBR1BGWDJndmpJeUNyZ2hFbnFZZGZRSlJuMkMiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGVlSkVwVHcxR3VuTW45UmM2Y0YvU3V6Nlp1QUdQRlgyZ3ZqSXlDcmdoRW5xWWRmUUpSbjJDIjt9', 1611375632),
('G5jcOidPw4gJ1bQLTOKhCFBLaSvWNDheVd9xkQoZ', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM3RVdVhseWtURDNmSUpFWExBNmJJa2JJVm15VjJTWEJQWWlURUtNNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610693309),
('HzjppxUukxGR9QmokFmxEBsS6cKB0RibuTDdUas1', NULL, '209.17.96.186', 'Mozilla/5.0 (compatible; Nimbostratus-Bot/v1.3.2; http://cloudsystemnetworks.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOTQ4cFgwS0hTVURDaDNIWTRNYzlGTE5JbktvSFlQdWxVbDNkdXZSYSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cHM6Ly9kbGlicmFyeS5tYW5nYW5vaWQuY29tIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vZGxpYnJhcnkubWFuZ2Fub2lkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1611137878),
('jPEc9wsZEcqS7AiD8hPhFwER0Lm1O4VvVgVZ7JEt', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZVZGMDhRR3A1Vjk5OUpLV0hkUDI3T0FrTDh0Q2ZkYTdscnJSc0JqNSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyOToiaHR0cDovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1610693363),
('k7VHEYvKuIwgtJscKlNACzNfr1jssO1P95Jc2qg1', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHZLZThsMENOZ3dPYkhYdU8wUXpWa3JFSjNrd2RVZ2dzQ1cyWmtPciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9kbGlicmFyeS5tYW5nYW5vaWQuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610693340),
('LCSwgjlaMJOve8TvbYNAOqGxTrSZ1Giz0A9fymsI', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSjlFd1JQc1lHVGN2ZzVHa3RFWWhMbW5ucHh6MHRqMW1PNG9PS0pjVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610693347),
('LVhfnhfgJU5SI6FGnrOkn8Wwe8K6wUPo4qf6gb5I', 1, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiUHJNejFaNG90R2tjQ0gzVWpPMWtvSzh0QXBKbDdLNkNKMkNKWG1zMCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vZGxpYnJhcnkubWFuZ2Fub2lkLmNvbS9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZWVKRXBUdzFHdW5NbjlSYzZjRi9TdXo2WnVBR1BGWDJndmpJeUNyZ2hFbnFZZGZRSlJuMkMiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGVlSkVwVHcxR3VuTW45UmM2Y0YvU3V6Nlp1QUdQRlgyZ3ZqSXlDcmdoRW5xWWRmUUpSbjJDIjt9', 1610694866),
('McFjI9gy5thpJqoqmITpi41vsAri6Lze9cTV5iXB', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOXZNenhXaVU5RlZKZzg2MUdTY0ZZbmFBa0pSM0dPSjhkQjVTbUdjNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610693325),
('njPKV4qHhlXQCOpOELiBmh2hrdvU1i8Koyvtd4hP', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVm9tY091TXd2YUZCbVB3WVpiR081OXk1WWMwSTN5bFRJb3RrNnVKYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9kbGlicmFyeS5tYW5nYW5vaWQuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610693363),
('p5KFixObatVfLSfw00MaTyRHaRG0ZNSwTGG3hFXQ', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlNrOHp1S3p4bmRRVk1ESnJBS3JVSFNXdG0zSUlkbE9TSzBGV1p3TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9kbGlicmFyeS5tYW5nYW5vaWQuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610693328),
('r0lM3YJC1CrQfLbWpNNRA9ZgBr58Jicz6dfjCXtH', NULL, '114.125.109.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQmQycXdKNTJXczNwS0JYZXQ4Y2w5U2h2Qjlyb0w2UGtwWXY1bWYxOSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyOToiaHR0cDovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNToiaHR0cDovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1610938015),
('RzDjiK69LUYEp8k115TaKcHaujVgeUTtbGVUKSyv', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRm5TRGx5OFRHVjZTWElQUUtGWjIwTUVsWng5b3Q5Q1NIbUtZazRjYyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20vYnVrdSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vZGxpYnJhcnkubWFuZ2Fub2lkLmNvbS9idWt1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610693318),
('sFAHQAHOnLnJ3HJaMOjVlkD2cQl7gCe4JAxngiAD', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEVMTjMwRGM5V3VjN1VVM1JBbXhZUXkxWDk1SWZsZTBYaUthNUpvdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9kbGlicmFyeS5tYW5nYW5vaWQuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610693318),
('urD8diMotESrgAeUDZ7NElCvmgHub48iXO3r55se', NULL, '36.68.223.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN0ZmblhGOXo4WVBYaEVKWkFmamMzZzYzVENteWNnZEZaMnpVNWpvbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610693371),
('wjM2up1qqppkM6HeC5iG8LYXPZCvJ0TG2Fh8RRtg', NULL, '209.17.97.42', 'Mozilla/5.0 (compatible; Nimbostratus-Bot/v1.3.2; http://cloudsystemnetworks.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicUhhb3NSbG9iQkFjOGY1Nkcya3htbXVyRkF2QUdvZUlGSElxeER5VCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyOToiaHR0cDovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovL2RsaWJyYXJ5Lm1hbmdhbm9pZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1611170141);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'bayu', 'bayu@mail.com', NULL, '$2y$10$eeJEpTw1GunMn9Rc6cF/Suz6ZuAGPFX2gvjIyCrghEnqYdfQJRn2C', NULL, NULL, NULL, NULL, NULL, '2020-11-06 21:19:09', '2020-11-06 21:19:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `reader`
--
ALTER TABLE `reader`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `reader`
--
ALTER TABLE `reader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
