SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `text` text NOT NULL,
  `image` text DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `about` (`id`, `heading`, `text`, `image`) VALUES
(1, 'Heading', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis erat dictum, vestibulum eros non, viverra nunc. Aliquam sit amet velit eu erat eleifend efficitur. Fusce suscipit nunc ac ex tempor, non dignissim mi ultrices. Maecenas lacinia ligula non posuere molestie. Nullam feugiat odio libero, nec fringilla justo suscipit ut. Sed id nulla quam. Praesent erat diam, rutrum a efficitur faucibus, volutpat vitae ante. Curabitur tellus elit, facilisis eu ultricies vel, malesuada vitae nisl. Phasellus varius, nunc nec tristique placerat, risus arcu feugiat dui, a pharetra mi ', 'default.jpg'),
(2, 'I am a Fake Card', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis erat dictum, vestibulum eros non, viverra nunc. Aliquam sit amet velit eu erat eleifend efficitur. Fusce suscipit nunc ac ex tempor, non dignissim mi ultrices. Maecenas lacinia ligula non posuere molestie. Nullam feugiat odio libero, nec fringilla justo suscipit ut. Sed id nulla quam. Praesent erat diam, rutrum a efficitur faucibus, volutpat vitae ante. Curabitur tellus elit, facilisis eu ultricies vel, malesuada vitae nisl. Phasellus varius, nunc nec tristique placerat, risus arcu feugiat dui, a pharetra mi ', 'default.jpg');

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admin` (`id`, `username`, `password`, `name`) VALUES
(2, 'munish', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Munish Kumar');

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `teacher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `courses` (`id`, `name`, `teacher`) VALUES
(4, 'English', 'Miss. Ruchika Kashyap'),
(5, 'Hindi', 'Miss. Ruchika Kashyap'),
(6, 'Punjabi', 'Miss. Ruchika Kashyap'),
(7, 'Social Science', 'Mr. Aditya Kashyap'),
(8, 'Environmental Science', 'Mr. Aditya Kashyap'),
(9, 'Mathematics', 'Mr. Rahul Sharma'),
(10, 'Physics', 'Mr. Rahul Sharma'),
(11, 'Chemistry', 'Mr. Damanpreet Singh'),
(12, 'Biology', 'Mr. Damanpreet Singh'),
(13, 'Punjabi', 'Mr. Rishabh Grewal'),
(14, 'Mathematics', 'Mr. Rishabh Grewal'),
(15, 'DBMS', 'Mr. Rishabh Grewal'),
(16, 'Digital Electronics', 'Mr. Rishabh Grewal'),
(17, 'Internet Applications', 'Mr. Damanpreet Singh'),
(18, 'Programming in C', 'Mr. Vishal Kakkar'),
(19, 'Programming in C++', 'Mr. Vishal Kakkar'),
(20, 'Python', 'Mr. Vishal Kakkar'),
(21, 'PHP', 'Mr. Vishal Kakkar'),
(22, 'Computer Graphics', 'Mr. Vishal Kakkar'),
(23, 'Web Technologies', 'Mr. Rahul Sharma'),
(24, 'Software Engineering', 'Mr. Damanpreet Singh'),
(25, 'Business Management and Marketing', 'Mr. Tushar Parkash');

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `notice` (`id`, `notice`) VALUES
(9, 'I am a Sample Notification - Munish is the Best'),
(10, 'I am another notification and Munish is best'),
(11, 'I am also a notification -  Munish is Good'),
(12, 'Another one'),
(13, 'One More SAmple'),
(14, 'One More SAmple'),
(15, 'One More SAmple'),
(17, 'One More SAmple');

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `students` (`id`, `username`, `password`, `email`, `name`, `phone`) VALUES
(4, 'sample_student', 'fb134ab7da573c6d9679e41927fcaabf88086fd493d5cc91d39e96b2e4ab3773', 'sample@sample.com', 'Sample Student', '0000000000');

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `teachers` (`id`, `username`, `password`, `name`, `email`, `phone`, `age`, `approved`) VALUES
(14, 'sample_teacher', 'fb134ab7da573c6d9679e41927fcaabf88086fd493d5cc91d39e96b2e4ab3773', 'Sample Teacher', 'sample@sample.com', '0000000000', 0, 1),
(16, 'damanpreetsingh', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Damanpreet Singh', 'damanpreet666636@gmail.com', '7696938896', 0, 1),
(17, 'rishabh', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Risabh Grewal', 'rishabhpalia000@gmail.com', '9592012104', 0, 1),
(18, 'vishal', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Vishal Kakkar', 'krishna.kakkar77@gmail.com', '8283842692', 0, 1),
(19, 'rahulsharma', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Rahul Sharma', 'rahul11sharma1999@gmail.com', '6239461546', 0, 0),
(20, 'ruchikakashyap', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Ruchika Kashyap', 'ruchikakashyap4573@gmail.com', '8544885491', 0, 1),
(21, 'adityakashyap', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Aditya Kashyap', 'adityakashyap775@gmail.com', '0000000000', 0, 1),
(22, 'tusharparkash', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Tushar Parkash', 'tusharparkash7@gmail.com', '7696067860', 0, 1),
(24, 'munish', 'fb134ab7da573c6d9679e41927fcaabf88086fd493d5cc91d39e96b2e4ab3773', 'Munish Kumar', 'mk6229478@gmail.com', '0000000000', 17, 1);

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `student` text NOT NULL,
  `teacher` text NOT NULL,
  `marks` text NOT NULL,
  `attendance` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `test` (`id`, `date`, `student`, `teacher`, `marks`, `attendance`) VALUES
(10, '2020-06-15', 'sample_student', 'sample_teacher', '10/10', 'Present'),
(14, '2020-06-14', 'sample_student', 'sample_teacher', '10/10', 'Present'),
(15, '2020-06-14', 'sample_student', 'sample_teacher', '10/10', 'Present'),
(16, '2020-06-16', 'sample_student', 'sample_teacher', '0/10', 'Absent');


ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`username`);

ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
