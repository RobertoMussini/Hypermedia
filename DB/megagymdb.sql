-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Giu 14, 2015 alle 11:18
-- Versione del server: 5.1.71-community-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_nikestudio`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `awards`
--

CREATE TABLE IF NOT EXISTS `awards` (
  `year` year(4) NOT NULL,
  `month` tinyint(4) NOT NULL,
  `instructor` int(11) NOT NULL,
  PRIMARY KEY (`year`,`month`,`instructor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `awards`
--

INSERT INTO `awards` (`year`, `month`, `instructor`) VALUES
(2014, 11, 6),
(2014, 12, 5),
(2015, 1, 1),
(2015, 1, 2),
(2015, 2, 1),
(2015, 2, 7),
(2015, 3, 5),
(2015, 3, 6),
(2015, 4, 3),
(2015, 4, 4),
(2015, 5, 2),
(2015, 6, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'combat', 'A combat sport, or fighting sport, is a competitive contact sport with one-on-one combat. Determining the winner depends on the particular contest''s rules. The aim of all the courses in thi category is helping you achieve your goals through hard work while keeping your training fun.\r\nWhether you''re interested in learning the art of fighting, or want to get into fighting shape by training like a fighter, owner and operators and team of dedicated & experienced trainers are here to help.'),
(2, 'dance', 'Would you like to improove your flexibility, strength, body awareness, and balance? You want to make some fitness and having fun at the same time? You just want to express yourself and move your body? We''re sure you''ll find what you''re looking for in the courses of this category!'),
(3, 'fitness', 'Physical fitness is a general state of health and well-being and, more specifically, the ability to perform aspects of sports or occupations. Physical fitness is generally achieved through correct nutrition, moderate-vigorous physical activity, exercise and rest. It is a set of attributes or characteristics seen in people and which relate to the ability to perform a given set of physical activities. A fun and social opportunity for fitness is offered through our various group fitness classes. If you get bored on machines, like someone else to structure your workout, or don''t enjoy exercising alone, group fitness classes offer you many possibilities! We offer a little bit of everything to high intensity and our class schedule changes every semester.'),
(4, 'functional training', 'Functional training is a classification of exercise which involves training the body for the activities performed in daily life. On short, you can pretty much achieve anything you want when training functionally. By choosing a variety of functional tools and selecting the right exercises, training variables and load for your goals, the vast majority of the major health and fitness goals can be achieved.'),
(5, 'aerobics', 'Aerobics is a form of physical exercise that combines rhythmic aerobic exercise with stretching and strength training routines with the goal of improving all elements of fitness (flexibility, muscular strength, and cardio-vascular fitness). We perform it with music and we practice it in a group setting led by an instructor (fitness professional), some courses are done solo and without musical accompaniment. With the goal of preventing illness and promoting physical fitness, practitioners perform various routines comprising a number of different dance-like exercises. Aerobics classes are divided into different levels of intensity and complexity. Aerobics classes allow participants to select their level of participation according to their fitness level. We offer a variety of aerobic classes. Check them out!'),
(6, 'pool', 'This category is for anybody who wants to learn swimming, just improove his/her skills, to explore more deep in the water or just have fun and do some exercises where you can still feel the ground under your feet. Don''t worry, you''re never too young or too old to learn or to stay fit. Courses are designed to provide individuals with the basic knowledge, techniques, and skills of pool.');

-- --------------------------------------------------------

--
-- Struttura della tabella `coordinates`
--

CREATE TABLE IF NOT EXISTS `coordinates` (
  `id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `coordinates`
--

INSERT INTO `coordinates` (`id`, `lat`, `long`) VALUES
(1, 27.988056, 86.925278);

-- --------------------------------------------------------

--
-- Struttura della tabella `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `category` int(11) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=52 ;

--
-- Dump dei dati per la tabella `courses`
--

INSERT INTO `courses` (`id`, `name`, `category`, `description`, `level`) VALUES
(1, 'boxe', 1, 'Want to learn real boxing from a real boxer? Starting from the basics the class will cover everything from how to hold your hands, correct stance, technique for all punches, footwork and progressing through to defensive moves.\r\nBoxing is an explosive, anaerobic sport. The act of throwing punches, round after round, while contending with an attacking opponent is a daunting task. Boxing is perhaps the most physically demanding sport of all.\r\nAs a boxer, you must punch, slip and block with split-second movements and reactions. A boxer must be prepared to fight with intensity, round after round. Your body must be conditioned to throw the same explosive punches in the last round that you started with in Round 1.', 1),
(2, 'boxe', 1, 'Want to continue what you started and box like a real boxer? In this course you''ll manage to really improove your strength and boxing skills. Your enemies won''t stand a chance!\r\nBoxing is an explosive, anaerobic sport. The act of throwing punches, round after round, while contending with an attacking opponent is a daunting task. Boxing is perhaps the most physically demanding sport of all.\r\nAs a boxer, you must punch, slip and block with split-second movements and reactions. A boxer must be prepared to fight with intensity, round after round. Your body must be conditioned to throw the same explosive punches in the last round that you started with in Round 1.', 2),
(3, 'mma', 1, 'There are no limits as to what you can achieve in this course. Whether you are a seasoned professional athlete looking for that extra edge or whether you are a beginner with no idea where to start, our teachers will take care of you. We offer programs for everyone regardless of their fitness level, size or physical limitations.\r\nCouple our affordable classes with the positive and supportive atmosphere and you have a winning formula that cannot be replicated.', 1),
(4, 'mma', 1, 'There are no limits as to what you can achieve in this course. Whether you are a seasoned professional athlete looking for that extra edge or whether you are a beginner with no idea where to start, our teachers will take care of you. We offer programs for everyone regardless of their fitness level, size or physical limitations.\nCouple our affordable classes with the positive and supportive atmosphere and you have a winning formula that cannot be replicated.', 2),
(5, 'krav maga', 1, 'The mind and body are trained to be reactive, recreating situations in the gym the most realistic and dynamic, through movements that use each technique learned just as effectively, even under stress, achieving maximum self-confidence. A few shots, but addressed the weaknesses of one or more attackers, without wasting energy, can get immediate results to be able to run or save another person from aggression.\r\nKrav Maga is aimed at an audience of any age, sex, body size and weight. That is why the great worldwide success. The registrations can be made at any time of ''anno.ganelli, knives, rifles fitted with bayonets.', 1),
(6, 'krav maga', 1, 'There are several forms of martial arts Israel, and each of them has the main emphasis on the common goal of survival and the training techniques based on reality ''. Some are used by the Infantry Basic (Krav Maga), while others are reserved only for the best Unita ''Special Forces (KAPAP, Lothar, etc.). The Command KM owes its efficiency thanks to the techniques continuously tested in operational areas by Departments Army Special Unit and the SWAT Israelis. In the seventies Moni Aizik, influential member of the Elite Commando Unit, was contacted by his superiors with a request to modernize the methods used then. He tried to make a team with Imi Lichtenfeld (brilliant creator of Krav Maga), who although retired offered his knowledge. But the age difference was that everyone was on his posizioni..I two worked together only twice during that time, then Moni continued alone to make more effi cient discipline, eliminating unnecessary and complicated movements and adding defensive techniques for : weapons, firearms, soil and strokes', 2),
(7, 'kick boxing', 1, 'Whether you’re looking to increase strength, confidence, coordination, or you’re just after a kickass cardio workout, kickboxing will keep you coming back for more. The flexibility of the term (and its students) has contributed to the sport’s tremendous popularity: You’ll find kickboxing classes focusing on everything from cardio conditioning and elements of dance to self-defense, martial arts, and one-on-one competition. But deciding which kind of class to attend is just the first step in preparing to raise those fists for the first time.\r\nIf you’re concerned about your level of fitness, it’s always wise to consult your doctor before beginning a new sport, particularly if you suffer from chronic conditions like asthma, diabetes, or obesity. Kickboxing can be more intense than a normal exercise program, and classes may challenge your body in ways it’s not yet used to.', 1),
(8, 'kick boxing', 1, 'Whether you’re looking to increase strength, confidence, coordination, or you’re just after a kickass cardio workout, kickboxing will keep you coming back for more. The flexibility of the term (and its students) has contributed to the sport’s tremendous popularity: You’ll find kickboxing classes focusing on everything from cardio conditioning and elements of dance to self-defense, martial arts, and one-on-one competition. But deciding which kind of class to attend is just the first step in preparing to raise those fists for the first time.\r\nIf you’re concerned about your level of fitness, it’s always wise to consult your doctor before beginning a new sport, particularly if you suffer from chronic conditions like asthma, diabetes, or obesity. Kickboxing can be more intense than a normal exercise program, and classes may challenge your body in ways it’s not yet used to..', 2),
(9, 'brazilian jiu jitsu', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 1),
(10, 'brazilian jiu jitsu', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 2),
(11, 'classical dance', 2, 'Students that have danced before recreationally as a young child and do not have memory of the use of classical muscle techniques or vocabulary, this is a great class for you to refresh. Students that wish to explore a new physical discipline or simply learn basic body posture to get fit, this is an excellent class to start with.  Mixed age groups all accepted from late teens to adults.', 1),
(12, 'classical dance', 2, 'The Intermediate Level is a critical step in helping students become dance artists of professional caliber. Dance instruction at this level further strengthens the skills and techniques learned in the basic level, and students enhance their body flexibility and their ability to express the forms. Basic Level courses are pre-requisites, unless waived with the consent of the instructor. In addition, instruction provides comprehensive training in body movements and nuance in Chinese dance. Students will learn the methods and techniques of Chinese dance performances that are characterized by the external expression of the dancer’s internal sensibility. Training in basic skills are combined with techniques to help students deepen their understanding and appreciation of Chinese dance. The Intermediate Level dance training also exposes students to more advanced skills and techniques in order to cultivate their ability to precisely express the required dance forms.', 2),
(13, 'classical dance', 2, 'This class is suitable for those that have a good physical knowledge and technical skill of classical ballet technique. Consistency of the Level 1 Ballet class is highly advisable prior to taking this Level 2/3 class.  Please enquire with us if you are suited to this particular class and class level prior to dropping into this class.', 3),
(14, 'hip hop dance', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 1),
(15, 'hip hop dance', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 2),
(16, 'hip hop dance', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 3),
(17, 'jazz dance', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 1),
(18, 'jazz dance', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 2),
(19, 'jazz dance', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 3),
(20, 'tip tap', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 1),
(21, 'tip tap', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 2),
(22, 'tip tap', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 3),
(23, 'pilates', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 0),
(24, 'thai chi', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 0),
(28, 'fit boxe', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 0),
(29, 'zumba', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 0),
(30, 'spinning', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 0),
(31, 'kettleball', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 0),
(32, 'crossfit', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 1),
(33, 'crossfit', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 2),
(34, 'crossfit', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 3),
(35, 'freestyle aerobics', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 1),
(36, 'freestyle aerobics', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 2),
(37, 'sport aerobics', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 1),
(38, 'sport aerobics', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 2),
(39, 'sport aerobics', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 3),
(40, 'step aerobics', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 1),
(41, 'step aerobics', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 2),
(42, 'water aerobics', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 0),
(43, 'yoga postures', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 0),
(44, 'swimming', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 1),
(45, 'swimming', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 2),
(46, 'swimming', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 3),
(47, 'water gym', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 0),
(48, 'diving', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 1),
(49, 'diving', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut viverra vestibulum mi nec cursus. Fusce ut tempor orci, sed dignissim eros. Nullam ullamcorper feugiat lorem, ac blandit elit. Duis id dolor pharetra, laoreet ligula ut, rutrum leo. Phasellus pharetra, sapien vulputate aliquam faucibus, urna orci congue orci, ac consequat enim.', 2),
(51, 'kick boxing', 1, 'Whether you’re looking to increase strength, confidence, coordination, or you’re just after a kickass cardio workout, kickboxing will keep you coming back for more. The flexibility of the term (and its students) has contributed to the sport’s tremendous popularity: You’ll find kickboxing classes focusing on everything from cardio conditioning and elements of dance to self-defense, martial arts, and one-on-one competition. But deciding which kind of class to attend is just the first step in preparing to raise those fists for the first time.\r\nIf you’re concerned about your level of fitness, it’s always wise to consult your doctor before beginning a new sport, particularly if you suffer from chronic conditions like asthma, diabetes, or obesity. Kickboxing can be more intense than a normal exercise program, and classes may challenge your body in ways it’s not yet used to.', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `instructors`
--

CREATE TABLE IF NOT EXISTS `instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `surname` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- Dump dei dati per la tabella `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `surname`, `description`) VALUES
(1, 'claudia', 'battaglia', 'Joining the MegaGym in January of 2014, Claudia is one of our newer trainers, but that doesn''t mean she lacks experience. Available for both personal and full-class sessions, Kellsie began her career on the University of Washington boxing team and earned the Collegiate National Championship title in the same year, proving she''s a natural fit in the ring. Kellsie enjoys the atmosphere and challenge that the MegaGym creates for guests, comparing the environment to that of a family, which supports all levels of boxers. The one goal in mind for all is to succeed.'),
(2, 'marco', 'benassi', 'Some time ago I had occasion to talk to a professional Bodybuilding, which I am confident ''that the legendary Arnold Schwarzenegger tenette his training schedule to 13 years. I was obviously surprised by this statement, but I went to the bottom of the matter. Arnold after years of training, had correctly learned and understood that each of us according to their structure to their joints not that genetics, felt that there were more years'' or less suitable for a recruitment and congestion of the muscle groups. Example, there are people who love the bench press, because ''derive from it a solicitation important muscle, others prefer presses with dumbbells, others prefer a guided bench press .. and so'' every athlete, every muscle has its preferences. These preferences for an advanced athlete are dictated not by the facility ''in performing a given year, but entirely that perceives congestion of the muscle itself. !! But keep the same exercises forever can ''continue to deliver results?\r\nCertainly yes, and we will see how.'),
(3, 'francesca', 'borghetti', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(4, 'walter', 'bracco', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(5, 'domenico', 'carlone', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(6, 'flavia', 'carotti', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(7, 'sherry', 'cat', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(8, 'ilaria', 'cevolo', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(9, 'jari', 'cherubini', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(10, 'riccardo', 'ciappelli', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(11, 'felice', 'alfuso', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(12, 'francesco', 'alfier', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(13, 'nicola', 'antonioli', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(14, 'cesare', 'barbati', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(15, 'paolo', 'cremonesi', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.\r\n'),
(16, 'sofia', 'aiolfi', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(17, 'andrea', 'bianchi', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(18, 'edoardo', 'bertoni', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(19, 'davide', 'redemagni', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(20, 'marco', 'redenani', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(21, 'filippo', 'picappa', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(22, 'sara', 'barbati', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(23, 'matteo', 'sangalli', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.'),
(24, 'christina', 'aiolfi', 'Pellentesque ut maximus enim, sed molestie lectus. Donec iaculis metus in sem luctus cursus. In et ligula eget nisi faucibus finibus. Integer porta vulputate diam, sit amet ultrices nibh sagittis sit amet. Nullam sit amet aliquet erat. Cras dapibus leo nec justo rutrum, at tincidunt erat mattis. Vivamus ullamcorper urna nec lorem luctus, a interdum felis mollis.');

-- --------------------------------------------------------

--
-- Struttura della tabella `quotes`
--

CREATE TABLE IF NOT EXISTS `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `quote` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

--
-- Dump dei dati per la tabella `quotes`
--

INSERT INTO `quotes` (`id`, `name`, `quote`) VALUES
(1, 'Aristotle', 'Excellence is an art won by training and habituation. We do not act rightly because we have virtue or excellence, but we rather have those because we have acted rightly. We are what we repeatedly do. Excellence, then, is not an act but a habit.'),
(3, 'Muhammad Ali', 'I hated every minute of training, but I said, "Don''t quit. Suffer now and live the rest of your life as a champion."'),
(4, 'Friedrich Nietzsche', 'On the mountains of truth you can never climb in vain: either you will reach a point higher up today, or you will be training your powers so that you will be able to climb higher tomorrow.'),
(5, 'John Romaniello', 'The best training program in the world is absolutely worthless without the will to execute it properly, consistently, and with intensity.'),
(7, 'Joe Bastianich', 'I prioritize in life. I like to work, I do TV shows, I do a lot of Iron Man training. I enjoy kicking back on a good night and drinking wine until I go to bed, and having fun with my friends. You just have to make time for it and keep it balanced.'),
(8, 'Paula Radcliffe', 'It''s important that athletes can compete on a level playing field. And youngsters coming into the sport can know that if they are working hard and training hard, they''ll see a true reflection of where they stand and what they can achieve worldwide and not be swayed by people who are cheating.');

-- --------------------------------------------------------

--
-- Struttura della tabella `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `hour_start` time NOT NULL,
  `hour_end` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `teaches`
--

CREATE TABLE IF NOT EXISTS `teaches` (
  `instructor` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  PRIMARY KEY (`instructor`,`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `teaches`
--

INSERT INTO `teaches` (`instructor`, `course`) VALUES
(1, 1),
(1, 3),
(1, 5),
(2, 2),
(2, 3),
(2, 8),
(3, 5),
(3, 7),
(4, 11),
(5, 13),
(6, 16),
(6, 21),
(7, 28),
(7, 31),
(8, 40),
(8, 46),
(9, 25),
(9, 39),
(10, 33),
(10, 42),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 6),
(17, 7),
(18, 8),
(19, 9),
(20, 10),
(21, 11),
(22, 12),
(23, 13),
(24, 14);

-- --------------------------------------------------------

--
-- Struttura della tabella `texts`
--

CREATE TABLE IF NOT EXISTS `texts` (
  `page` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `text` longtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `texts`
--

INSERT INTO `texts` (`page`, `title`, `text`) VALUES
('instructors', 'Our instructors', 'We demand the best from our personal trainers, so they can demand the best from you. Our personal trainers have to meet high standards of excellence in exercise physiology, nutrition, anatomy, training program development, exercise application, health screening, and fitness assessments. Every personal trainer has to pass the Gold''s Fitness Personal Trainer Certification course and exam, in addition to their national accreditation. But most importantly, our personal trainers excel at applying their knowledge to all walks of life, from athletes to seniors.'),
('home', 'Welcome to MegaGym db!', 'Where our only goal is to help you realize yours. Join your nearest MegaGym today to get stronger with every workout, every training session and every class.'),
('location', 'Here we are!', 'Our gym is located right on top of the peak of Mount Everest to guarantee our costumers the maximum solitude and provide them the necessary concentration to achieve their ultimate fitness goals.'),
('courses', 'Welcome to our courses!', 'Where our only goal is to help you realize yours. Join your nearest MegaGym today to get stronger with every workout, every training session and every class.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
