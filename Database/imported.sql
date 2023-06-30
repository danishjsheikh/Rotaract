-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2023 at 06:31 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20372148_rotaract`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(100) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `short` varchar(1500) DEFAULT NULL,
  `descrip` varchar(10000) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `short`, `descrip`, `img`, `url`, `date`, `status`) VALUES
(1, 'About Us', '', '<div>Furtherance Flora Solutions is on a mission to provide all possible solutions to the clients in cost effective way across all industry.  We are helping our clients to understand and implement new business ideas with the help of technologies, data and analytics.</div><div><br></div><div>Our highly experienced professional is working on same roof and promise to deliver quality with 100% efficiency and transparent work within the given turnaround time based on service level agreement.</div><div><br></div><div>Our methodology is all data driven which helps us to forecast the business requirement and based on the methodology the client can implement appropriate strategies to achieve their desired outcome for their business.</div>', '193618558About-us-min.jpg', NULL, 'Wed 09 Dec 2020', '0');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(100) NOT NULL,
  `ad_name` varchar(20) NOT NULL,
  `ad_email` varchar(100) NOT NULL,
  `ad_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_id`, `ad_name`, `ad_email`, `ad_password`) VALUES
(1, 'Danish', 'danishjsheikh@gmail.com', 'Alaways&Forever8021'),
(2, 'Mansi', 'mansid0903@gmail.com', 'Changlamarathi8080');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(100) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(11, 'Upcoming Events'),
(10, 'Past Events');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(100) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `short` varchar(1500) DEFAULT 'Check This Event',
  `descrip` varchar(10000) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `category`, `short`, `descrip`, `img`, `url`, `date`, `status`) VALUES
(10, 'Rakhi Made Special', 'Past Events', 'On the auspicious occasion of Raksha Bandhan rather than just celebrating it in the conventional way we decided to use the opportunity to help the Jagruti Palak Sanstha with their cause of supporting the intellectually disabled children. Money was raised by selling the rakhis made by the talented kids to students, faculties and staff of the college.', '<p><img src=\"https://i.ibb.co/KL2SbVF/Untitled.jpg\" style=\"text-align: justify; width: 50%; float: left;\" class=\"note-float-left\"></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">On the occasion of Raksha Bandhan, an event was organized to sell rakhis made by disabled kids. The event was held on 12th August 2022 in Sardar Patel Institute of Technology. After getting in touch with Jagruti Palak Sanstha to offer them our help, they provided us with rakhis made by the wonderfully talented kids. The rakhis were available in various designs, colors, and sizes, catering to the preferences of different customers. The rakhis were sold to students, staff and faculties of the college. Everyone enthusiastically participated for helping the cause by helping to sell the rakhis as well by purchasing them. The event was a success and a very proud moment for each and every person who contributed in bringing something good in the lives of the kids. The proceeds from the sale of these rakhis were used by Jagruti Palak Sanstha to provide education, healthcare, and other necessary support to these children.</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The purpose of the event was to support and empower the disabled children by showcasing their skills and providing them with an opportunity to earn a livelihood.&nbsp;</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">This initiative also helped to raise awareness about the capabilities of disabled children and promoted a more inclusive society. It sent a message that everyone deserves a chance to succeed and that disability should not be a barrier to achieving one\'s dreams.</span><span style=\"background-color: transparent; font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">&nbsp;</span></p><p><span id=\"docs-internal-guid-5b951e6c-7fff-34b0-6872-befd15d32c0e\"></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span></p><span style=\"background-color: transparent; font-family: Arial; font-size: 11pt; white-space: pre-wrap;\"></span><p></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p>', '755082235IMG-20220808-WA0010.jpg', '', 'Fri 12 Aug 2022', '0'),
(11, 'Prarambh Installation', 'Past Events', 'Installation ceremony for the new core committee was held with the presence of guests from Rotary Club of Mumbai. The previous yearâ€™s team was felicitated for the amazing work and contribution towards the community. Along with the felicitation of the old, a new team was welcomed with new spirit and energy to carry forward the legacy.\r\n', '<span id=\"docs-internal-guid-c0a43daf-7fff-db6b-5aba-87b924db3312\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><img src=\"https://i.ibb.co/tpJrRsX/IMG-0792.jpg\" style=\"border:5px solid #FFFFFF; width: 50%; float: left;\" class=\"note-float-left\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"></span></p><div style=\"text-align: justify;\"><span style=\"background-color: transparent; font-size: 11pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; font-family: Arial;\">The installation ceremony of a Rotaract core team was held on 26</span><span style=\"background-color: transparent; font-size: 11pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\"><span style=\"font-size: 0.6em; vertical-align: super; font-family: Arial;\">th</span></span><span style=\"background-color: transparent; font-size: 11pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; font-family: Arial;\"> August 2022 at the S.P.I.T. auditorium. The ceremony marked the beginning of a new term for the Rotaract club, and the core team was responsible for leading the club in its various activities and initiatives.</span><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial;\">The ceremony began with welcoming of Chief guest, Rotaractor. Gemin Shah, Guest of Honour, Rotarian R.Shridhar and&nbsp; Secretary Arun Wadhva from Rotary Club Of Mumbai, Juhu and Club Treasurer Rotarian. Piyush Shah and Youth director Rotarian Kala Shridhar. Followed by a welcome speech by the outgoing president of the Rotaract club. The outgoing president highlighted the achievements of the club during their tenure and expressed their gratitude to the members for their support and dedication.</span></div></span><p></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><img src=\"https://i.ibb.co/HB5nXCd/IMG-1402.jpg\" style=\"border:5px solid #FFFFFF;width: 50%; float: right;\" class=\"note-float-right\"><span style=\"background-color: transparent; font-family: Arial; font-size: 11pt; text-align: left; white-space: pre-wrap;\"></span></p><div style=\"text-align: justify;\"><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial;\">The chief guest of the ceremony, then gave a motivational speech, emphasizing the importance of leadership and service in today\'s world. The chief guest also congratulated the incoming core team and encouraged them to continue the good work of the club.</span></div><p></p><div><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"><span id=\"docs-internal-guid-8a718e6d-7fff-d2b4-56ac-fc7c6a9900b2\"><div><span style=\"font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\"><br></span></div><div><span style=\"font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\"><br></span></div><div><br></div><div><img src=\"https://i.ibb.co/WyHKj1K/IMG-0328.jpg\" style=\"border:5px solid #FFFFFF; width: 50%; float: left;\" class=\"note-float-left\"></div><div></div><div></div><div></div><div><br></div><div style=\"text-align: justify; \"><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial;\">The installation of the core team was then conducted&nbsp; by present guests of honor. The incoming president of the Rotaract club took the oath of office, followed by the other members of the core team. The outgoing president then presented the new president with the club\'s badge.</span><span style=\"font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\"><br></span></div></span></span><span id=\"docs-internal-guid-6387d8c8-7fff-cc9f-129d-8e14f6801c44\"><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">The newly installed president then gave a speech, outlining the club\'s vision and plans for the upcoming year. The president emphasized the importance of community service and social responsibility and invited the members to participate actively in the club\'s initiatives.</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">The ceremony concluded with a vote of thanks by the newly installed vice-president. The members of the Rotaract club then gathered for a group photograph, marking the beginning of a new term of service and leadership.</span></p><div style=\"text-align: justify; \"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"><br></span></div></span></div>\r\n', '1334648899T.jpg', '', 'Fri 26 Aug 2022', '0'),
(12, 'E-Waste Collection Drive', 'Past Events', 'Ewaste collection drive was conducted on 30th August at SPIT Campus in association with IIC SPIT. The event aimed to promote the responsible disposal of electronic waste and raise awareness about the environmental impact of e-waste.\r\n', '<p><img src=\"https://i.ibb.co/2n7qNY5/ewaste.jpg\" style=\"border:5px solid #FFFFFF;width: 50%; float: left;\" class=\"note-float-left\"><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"></span></p><div style=\"text-align: justify;\"><span style=\"background-color: transparent; font-size: 11pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\">On 30</span><span style=\"background-color: transparent; font-size: 11pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\"><span style=\"font-size:0.6em;vertical-align:super;\">th</span></span><span style=\"background-color: transparent; font-size: 11pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\"> August an e-waste collection drive was organized by IIC SPIT in collaboration with RC SPIT. The event was promoted through social media, flyers, and local media outlets to raise awareness and encourage participation. Participants were invited to bring their old or unwanted electronic devices such as computers, laptops, printers, smartphones, and TVs to the designated collection point. The organizers ensured that the collected e-waste was securely transported to a certified e-waste recycling facility. The event included enlightening participants with information about the harmful effects of e-waste on the environment and human health, and the benefits of recycling e-waste.</span></div><p></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The e-waste collection event was a success with a significant amount of response from students. The collected e-waste was safely and responsibly recycled, preventing harmful materials from entering landfills and reducing the environmental impact of e-waste.</span></p><p><span id=\"docs-internal-guid-ba352571-7fff-7d84-9175-bb99712cebea\"></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The e-waste collection event was an effective way to raise awareness about the importance of responsible e-waste disposal and promote recycling. By engaging with the community and providing education and incentives, the event succeeded in collecting a significant amount of e-waste and promoting positive behavior change. The organizers hope to build on the success of this event and continue to promote responsible e-waste disposal in the future</span><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">.</span></p>\r\n', '819123774ewaste.jpg', '', 'Tue 30 Aug 2022', '0'),
(13, 'Beach Cleaning', 'Past Events', 'A Beach Cleaning event was organized by RC SPIT on 24th September 2023 at Dadar Beach. The event aimed to promote environmental stewardship, raise awareness about the impacts of plastic pollution on marine ecosystems, and engage the community in a collective effort to clean up local beaches.', '<p><img src=\"https://i.ibb.co/h71pDg2/IMG-4503-2.jpg\" style=\"border:5px solid #FFFFFF;text-align: justify; width: 50%; float: left;\" class=\"note-float-left\"><span id=\"docs-internal-guid-f697839e-7fff-d5c8-e2c1-2a08c9bc4df5\"></span></p><div style=\"text-align: justify; \"><br></div><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">A Beach Cleaning event was organized by RC SPIT on 24</span><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"><span style=\"font-size:0.6em;vertical-align:super;\">th</span></span><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"> September 2023 at Dadar Beach. The event aimed to promote environmental stewardship, raise awareness about the impacts of plastic pollution on marine ecosystems, and engage the community in a collective effort to clean up local beaches.</span><br></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><br></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><img src=\"https://i.ibb.co/wSJ6fG8/IMG-2244.jpg\" style=\"border:5px solid #FFFFFF;width: 50%; float: right;\" class=\"note-float-right\"></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"background-color: transparent; font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">The event was promoted through social media, flyers, and local media outlets to raise awareness and encourage participation. Participants were invited to register online or on-site to join the beach cleaning effort. Even while rainy clouds gathered over the heads, participants still managed to continue the work with the same enthusiasm. RC SPIT provided participants with gloves, garbage bags, and other necessary equipment to ensure the safety and comfort of the participants.</span><br></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span id=\"docs-internal-guid-4361f7ae-7fff-7bad-3b79-a2a09a92501e\"></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The participants were divided into teams and assigned specific areas of the beach to clean up. They collected and properly disposed of plastic waste, debris, and other litter. The organizers monitored the collection process to ensure that hazardous or non-biodegradable materials were not left behind. The event included educating participants with information about the harmful effects of plastic pollution on marine ecosystems and the importance of reducing plastic waste.</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><img src=\"https://i.ibb.co/xXsJ1Zh/IMG-2280.jpg\" style=\"border:5px solid #FFFFFF;width: 50%; float: left;\" class=\"note-float-left\"></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><br></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><br></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><br></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><br></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><br></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span id=\"docs-internal-guid-707506e2-7fff-fe81-88e9-f10cca499164\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"><br></span></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span id=\"docs-internal-guid-707506e2-7fff-fe81-88e9-f10cca499164\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"><br></span></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span id=\"docs-internal-guid-707506e2-7fff-fe81-88e9-f10cca499164\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"><br></span></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span id=\"docs-internal-guid-707506e2-7fff-fe81-88e9-f10cca499164\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">The event was a huge success as huge amount of participants turned up for the cause and rose up to the expectations. Everyone was very fulfilled after sitting down and looking at the amazing work that they pulled off.</span></span><br></p>\r\n', '282140812679572032image-1.jpg', '', 'Sat 24 Sep 2022', '0'),
(14, 'Pad Project', 'Past Events', 'On 30th October RC SPIT Associated with Saksharta Foundation for their PAD Project to donate sanitary pads to girls from 7th to 10th grade at Lokmanya Tilak Udyan Juhu. Mr. Hardik Bhat (EREPS Certified K11 master trainer) was the speaker for the event. The event was to promote fitness and exercise and importance of sanitation.', '<p><img src=\"https://i.ibb.co/2ZwprGD/p1.jpg\" style=\"border: 5px solid rgb(255, 255, 255); width: 50%; float: left;\" class=\"note-float-left\"><span id=\"docs-internal-guid-8153e547-7fff-b2ef-515f-d14acec90c57\"></span></p><div style=\"text-align: justify;\"><span style=\"color:#000000;background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\">On 30</span><span style=\"color:#000000;background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"><span style=\"font-size:0.6em;vertical-align:super;\">th</span></span><span style=\"color:#000000;background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"> October RC SPIT Associated with Saksharta Foundation for their PAD Project to donate sanitary pads to girls from 7</span><span style=\"color:#000000;background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"><span style=\"font-size:0.6em;vertical-align:super;\">th</span></span><span style=\"color:#000000;background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"> to 10</span><span style=\"color:#000000;background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"><span style=\"font-size:0.6em;vertical-align:super;\">th</span></span><span style=\"color:#000000;background-color: transparent; font-size: 11pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; white-space: pre-wrap;\"> grade at Lokmanya Tilak Udyan Juhu. Mr. Hardik Bhat (EREPS Certified K11 master trainer) was the speaker for the event. The event was to promote fitness and exercise and importance of sanitation.The event aimed to address the issue of menstrual hygiene and provide access to affordable and high-quality menstrual products to women and girls in the community. The organizers collected information about the menstrual needs of the girls to ensure that the right products were distributed.The girls were provided with free sanitary pads, along with information about menstrual hygiene and how to use the products. The organizers also provided a comfortable and private space for women and girls to access the products. The event included information booths and interactive displays that provided participants with information about menstrual hygiene, reproductive health, and the social and economic barriers that prevent access to menstrual products.</span></div><p></p><p></p><p><img src=\"https://i.ibb.co/j8g7Hd2/p2.jpg\" style=\"border:5px solid #FFFFFF;width: 50%; float: right;\" class=\"note-float-right\"></p><p><span id=\"docs-internal-guid-911b1847-7fff-6c53-e845-f7160367b5ef\"></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The event was a success and the girls were very happy because of the interactions and the event. The girls expressed gratitude for the opportunity to access high-quality menstrual products. The sanitary pad distribution event was an effective way to address the issue of menstrual hygiene and promote access to affordable and high-quality menstrual products. By engaging with the community and providing education and support, the event succeeded in providing a critical service to women and girls who may face social and economic barriers to accessing menstrual products. The organizers hope to build on the success of this event and continue to promote menstrual health and hygiene in the future.</span></p>\r\n\r\n\r\n', '693204277pad.jpg', '', 'Sun 30 Oct 2022', '0'),
(15, 'HLA Testing', 'Past Events', ' On 2nd November 2022 RC SPIT conducted a Blood Cancer Awareness session in collaboration with IIT Bombay Techfest, â€˜Rudhirâ€™. HLA swab testing was conducted with over 30 volunteering doctors from all over Mumbai and over 100 tests were conducted. It was an enlightening session on blood cancer and was great success.\r\n', '<p><img src=\"https://i.ibb.co/sgpMk5q/h1.jpg\" style=\"width: 100%;\"></p><div style=\"text-align: justify;\"><span style=\"background-color: transparent; font-size: 11pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; font-family: Arial;\">On 2</span><span style=\"background-color: transparent; font-size: 11pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline;\"><span style=\"font-size: 0.6em; vertical-align: super; font-family: Arial;\">nd</span></span><span style=\"background-color: transparent; font-size: 11pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; font-family: Arial;\"> November 2022, an HLA testing event was organized by RC SPIT in collaboration with IIT Bombay Techfest, â€˜Rudhirâ€™. The event aimed to raise awareness about the importance of HLA testing in medical treatment and provide access to free HLA testing for individuals who may have difficulty affording it.</span></div><div style=\"text-align: justify;\"><span style=\"background-color: transparent; font-size: 11pt; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; vertical-align: baseline; font-family: Arial;\"><span style=\"white-space: pre-wrap;\">The event was promoted through social media, flyers, and local media outlets to raise awareness and encourage participation. Participants were invited to register online or on-site to receive free HLA testing. The volunteer doctors collected information about the medical history and family background of the participants to determine their eligibility for testing. </span></span><span style=\"font-family: Arial; font-size: 14.6667px; white-space: pre-wrap;\">The participants were provided with free HLA testing, which involved a simple cheek swab. </span></div><div style=\"text-align: justify;\"><span style=\"font-family: Arial; font-size: 14.6667px; white-space: pre-wrap;\">The volunteers ensured that the testing was conducted safely and efficiently, with appropriate precautions to prevent the spread of infectious diseases.</span><span style=\"font-family: Arial; font-size: 14.6667px; white-space: pre-wrap;\"><br></span></div><div style=\"text-align: justify;\"><img src=\"https://i.ibb.co/27Bq84Y/h2.jpg\" class=\"note-float-left\" style=\"font-size: 1rem; border: 5px solid rgb(255, 255, 255); width: 50%; float: left;\"></div><div style=\"text-align: justify;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size: 11pt; font-family: Arial; vertical-align: baseline; white-space: pre-wrap;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size: 11pt; font-family: Arial; vertical-align: baseline; white-space: pre-wrap;\">The event included information booths and interactive displays that provided participants with information about the importance of HLA testing in medical treatment, the role of H</span><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial; white-space: pre-wrap;\">LA in organ transplantation, and the genetic factors that influence HLA types.</span><br></div><span id=\"docs-internal-guid-f8997d20-7fff-44e8-5c43-27c86913b219\"><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"background-color: transparent; font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">The HLA testing event was a success, with over participants receiving free HLA testing. The event generated significant media coverage and social media engagement, reaching to a lot of people.</span><br></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span id=\"docs-internal-guid-a0206074-7fff-713e-8e88-5dc7e52c5fca\"></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The HLA testing event was an effective way to promote access to HLA testing and raise awareness about the importance of HLA typing in medical treatment. By engaging with the community and providing education and support, the event succeeded in providing a critical service to individuals who may have difficulty affording HLA testing. We hope to build on the success of this event and continue to promote HLA testing and genetic health in the future.</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br></span></p></span>\r\n', '20782681hla.jpg', '', 'Wed 02 Nov 2022', '0'),
(16, 'Night Cycling', 'Past Events', 'Like every year RC SPIT arranged the most asked for Night Cycling event which was arranged on 21st January 2023. The event included cycling on the defined route which started from the Charni Road West covering Gate Way of India followed by the famous Queenâ€™s necklace spots like Marine lines, Girgaon Chawpatty, Malabar Hills etc and back again to the start. The event was a huge success with almost 150 participants and everyone cycled whole night enjoying the night and doing it for a good cause was the cherry on the cake.\r\n', '<p><span style=\"font-family: Arial;\">ï»¿</span><img src=\"https://i.ibb.co/gvGKyfz/IMG-9431-1.jpg\" style=\"border:5px solid #FFFFFF;width: 50%; float: left;\" class=\"note-float-left\"><span style=\"background-color: transparent; font-size: 11pt; text-align: justify; font-family: Arial; white-space: pre-wrap;\">On 21st January, a night cycling event was organized by us. The event aimed to promote cycling as a healthy and sustainable form of transportation and provide a fun and unique experience for participants.</span></p><p style=\"text-align: justify; \"><span style=\"background-color: transparent; font-family: Arial; font-size: 11pt; white-space: pre-wrap;\">The event was promoted through social media, flyers, and local media outlets to raise awareness and encourage participation. Participants were invited to register online or on-site to participate in the night cycling event. The we collected information about the cycling experience and equipment of the participants to ensure that they were able to safely participate in the event. Before the start of the cycling event, we provided a safety briefing to all participants, which included instructions on how to ride safely at night and use of cycling lights.The cycling route was carefully planned to showcase the city\'s landmarks and scenic areas, while also ensuring the safety of the participants. The cycling route was well-lit and included rest areas and refreshment stops. The route was The Cycle Shop the Gate Way Of India, CST, Tardeo, Nana Chowk, Haji Ali, Worli, Breach Candy, Malabar Hill, Marine Drive and Return back to the cycle shop. After the cycling event, the participants were provided with music, food, and drinks at Marine Drive to relax and socialize.</span></p><p style=\"text-align: justify; \"><img src=\"https://i.ibb.co/2dWD1XQ/IMG-5905.jpg\" style=\"border:5px solid #FFFFFF;width: 50%; float: right;\" class=\"note-float-right\"></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The night cycling event was a success, with over 150 participants cycling through the city at night. The event generated significant media coverage and social media engagement, reaching a lot of people. The participants expressed enjoyment for the unique experience and appreciated the opportunity to promote cycling as a sustainable form of transportation.</span></p><p style=\"text-align: justify; \"><span id=\"docs-internal-guid-1f6309fe-7fff-7a2c-83cd-4348d28da13b\"></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">The night cycling event was an effective way to promote cycling as a healthy and sustainable form of transportation and provide a fun and unique experience for participants. By engaging with the community and providing education and support on safe cycling practices, the event succeeded in providing a critical service to individuals who are interested in cycling. We hope to build on the success of this event and continue to promote cycling and sustainable transportation in the future.</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br></span></p><p style=\"text-align: justify; \"><span id=\"docs-internal-guid-d6523f48-7fff-1be4-7d26-7d23ded035ea\"></span><br></p><div><span style=\"background-color: transparent; font-family: Arial; font-size: 11pt; white-space: pre-wrap;\"><br></span></div>\r\n', '568960082night.jpg', '', 'Sun 22 Jan 2023', '0'),
(17, 'Food for Paws', 'Past Events', 'To feed the little ones on the streets RC SPIT organized â€˜Food For Pawsâ€™ on 12th February 2023 at Malad. The aim  of the event was to encourage animal welfare and promote humility towards the street dogs. The event was a success as all little ones were happy with the food and the participants also got to pet the cuties.\r\n', '<p><img src=\"https://i.ibb.co/6ZZ6hSL/IMG-1908.jpg\" style=\"border:5px; margin-right: 15px; solid #FFFFFF; width: 50%; float: left;\" class=\"note-float-left\"><span id=\"docs-internal-guid-89944d64-7fff-be4a-40df-7210d725fc82\"></span></p><div><br></div><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 13pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">On 12</span><span style=\"font-size: 13pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><span style=\"font-size: 0.6em; vertical-align: super; font-family: Arial;\">th</span></span><span style=\"font-size: 13pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"> February 2023, a street dog feeding event was organized by RC SPIT that aimed to provide free food and water to street dogs in the community and raise awareness about animal welfare. The event was promoted through social media, flyers, and local media outlets to raise awareness and encourage participation. We prepared food and water bowls, as well as dog food, to distribute to street dogs in the community. We distributed the food and water to street dogs in areas of the community. The participants were also provided with guidance on how to care for street dogs and prevent animal cruelty. Counseling to participants who had questions or concerns about animal welfare and responsible pet ownership was provided. The street dog feeding event was a success, with all street dogs in the area receiving free food and water. The participants were happy for the opportunity to help street dogs in the community.</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 13pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 13pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 13pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><span id=\"docs-internal-guid-1acf2915-7fff-7c94-7bf8-9f89c2790ef5\"></span></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><img src=\"https://i.ibb.co/897wSky/paws.jpg\" style=\"border:5px solid #FFFFFF;width: 50%; float: right;\" class=\"note-float-right\"><span style=\"font-size:13pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:13pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:13pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 13pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"background-color: transparent; font-family: Arial; font-size: 13pt; white-space: pre-wrap;\">The street dog feeding event was an effective way to promote animal welfare and responsible pet ownership in the community. By engaging with the community and providing education and support, the event succeeded in providing a critical service to street dogs who may have difficulty accessing food and water. We hope to build on the success of this event and continue to promote animal welfare and responsible pet ownership in the future.</span><br></p>\r\n', '1535692132image-3.jpg', '', 'Sun 12 Feb 2023', '0');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(100) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `descc` varchar(5000) DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `descc`, `status`) VALUES
(4, 'Question 2', 'Answer', '0'),
(5, 'Question 1', 'Answer', '0');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(100) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `short` varchar(1500) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `title`, `short`, `img`, `status`) VALUES
(46, 'B.O.D. Sports', 'Om Chandra', '1648248995Om_Chandra_Sports_BOD (1).jpg', '0'),
(47, 'B.O.D. International Services', 'Anusha Maniar', '1072947070Anusha_Maniar_InternationalServicesBOD (1).jpg', '0'),
(48, 'B.O.D. Digital Communication', 'Krish Mehta', '9608317Krish mehta (1).jpg', '0'),
(49, 'B.O.D. Digital Communication', 'Sujal Choradia', '92069424SujalChordia_BOD_DigitalCommunication (1).jpeg', '0'),
(50, 'B.O.D. Marketing', 'Krutuja Bundele', '331244765krutuja (1).jpg', '0'),
(51, 'B.O.D. Marketing', 'Kunal Bhatia', '273437819Kunal_Bhatia_BOD_Marketing (1).jpg', '0'),
(53, 'B.O.D. Professional Development', 'Srushti Patil', '2060052732Srushti Patil (1).jpeg', '0'),
(54, 'B.O.D. Club Service', 'Atharva Bhagwat', '2014443733Atharv Bhagwat_BOD_Club Services  (1).jpg', '0'),
(55, 'B.O.D. Public Relations', 'Atharva Bhagwat', '1967445101Atharav_Bhagwat_BOD_PR-Head (1).jpg', '0'),
(56, 'B.O.D. Community Services', 'Sammrudhi Patil', '1575120460Samruddhi_Patil_BOD_Community services  (1).jpg', '0'),
(57, 'Social Media Manager', 'Tarun Agarwal', '1898960298Tarun_Agrawal_BOD_Social media manager (2).jpg', '0'),
(58, 'Technical Head', 'Jay Jani', '112572276JayJani (1).jpg', '0'),
(59, 'Technical Head', 'Amith Prasanth', '724090423AmithPrasanth (1).jpg', '0'),
(60, 'Technical Head', 'Danish Sheikh', '556126115danihs (1).jpg', '0'),
(61, 'Seargent At Arms', 'Namooh Shah', '2035862802Namooh Shah (1).jpg', '0'),
(62, 'Joint Secretary', 'Nishtha Sharma', '1635577246Nishtha.jpg', '0'),
(63, 'Treasurer', 'Shubhan Kadam', '323675839ShubhanK (1).jpg', '0'),
(64, 'Vice President', 'Alisha Kadam', '432379264Alisha Kadam (1).jpg', '0'),
(65, 'IPP', 'Yash Jain', '1377920215Yash_Jain (1).jpg', '0'),
(66, 'Secretary', 'Palaash Gandhi', '1894835601Palaash Gandhi  (1).jpg', '0'),
(67, 'President', 'Atman Ainapure', '2067780766Atman.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(100) NOT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `footer_desc` varchar(5000) DEFAULT NULL,
  `facebook` varchar(2000) DEFAULT NULL,
  `twitter` varchar(2000) DEFAULT NULL,
  `linkedin` varchar(2000) DEFAULT NULL,
  `instagram` varchar(2000) DEFAULT NULL,
  `youtube` varchar(2000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `map` varchar(3000) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `header_logo`, `email`, `phone`, `phone2`, `footer_logo`, `footer_desc`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `address`, `city`, `state`, `country`, `pin`, `map`, `site_name`) VALUES
(1, '1077930642754453333Logo 1-min.png', 'rotaractspit2021@gmail.com', '+91 9967382535', '+91 9899 007 899', '1328530813Logo 1.PNG', '', 'https://www.facebook.com/Rotaract.SPIT/', '#', '#', 'https://www.instagram.com/rc_spit/', '#', 'Bhavans Campus, Old D N Nagar, Munshi Nagar, Andheri West, Mumbai, Maharashtra 400058', '', '', '', '', '           <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7539.339121409767!2d72.8328268888182!3d19.12214692412743!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c9d90e067ba9%3A0x16268e5d6bca2e6a!2sBharatiya%20Vidya%20Bhavan\'s%20Sardar%20Patel%20Institute%20of%20Technology%20(SPIT)!5e0!3m2!1sen!2sin!4v1677661177838!5m2!1sen!2sin\" width=\"600\" height=\"490\" style=\"border:0; width: 100%\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>                             ', 'Rotaract Club Of SPIT');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(100) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `descrip` varchar(10000) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
