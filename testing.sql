-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 28 2018 г., 12:31
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testing`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `answer` text,
  `right_ans` tinyint(1) DEFAULT NULL,
  `questionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id`, `answer`, `right_ans`, `questionID`) VALUES
(1, 'Разделить шары на три равные кучи. Взвесить любые две. Если они равны, то тяжелый шар в оставшейся куче, тогда мы взвешиваем два любых из оставшейся кучи, и определяем какой шар тяжелее (если равны, то тяжелый шар - тот который не взвешивали). Если кучи не равны, то берем шары из тяжелой кучи и вычисляем тяжелый шар вышеописанным методом.', 1, 1),
(2, 'Существует бесконечное множество решений, однако наиболее красивы из них три: \r\n- Показав на конкретную дверь: \"Твой товарищ сказал бы, что ЭТА дверь ведет на свободу?\" Ответ \"да\" означает, что это дверь НЕ ведет на свободу. \r\n- \"Перед дверью, ведущей на свободу, сидит стражник, говорящий правду?\" Ответ \"да\" означает, что нужно войти в ту дверь, возле которой сидит стражник, которому Вы задали вопрос. \r\n- Показав на конкретную дверь: \"Если бы я спросил тебя, ведет ли ЭТА дверь на свободу, что бы ты ответил?\" Ответ \"да\" означает, что эта дверь ведет на свободу. Этот ответ подходит даже тогда, когда нет никакого второго стражника.', 1, 2),
(3, 'При прохождении массива записывать дельту - разницу между i-м значением элемента массива и числом Х. При прохождении каждого элемента массива сравнивать новую дельту со старой. Чем меньше значение дельты, тем число ближе к Х. Отсюда можно вычислить ближайшее число.', 1, 3),
(4, 'Ответ - на 512. \r\nРассмотрим следующие ситуации: \r\n- если останется 2 лепрекона золото разделят на двоих; \r\n- если останется 3 лепрекона исключат младшего и разделят золото на двоих на следующем голосовании; \r\n-если останется 4 лепрекона золото разделят на четверых, т.к. третий по старшинству лепрекон будет голосовать за раздел, зная, что его тоже исключат на след. голосовании; \r\n-если останется 5, 6 или 7 лепреконов золото разделят на четверых; \r\n-если останется 8 лепреконов золото разделят на восьмерых и т.д. \r\nМожно сделать вывод, что золото будет разделено на кол-во лепреконов равное максимальной степени двойки в пределах от двух до начального кол-ва лепреконов.', 1, 4),
(5, 'Ответ: выиграет Карлсон. \r\nОбъяснения: Малыш на своем ходу делает шоколадку прямоугольником, а Карлсон отламывает так, что бы снова был квадрат, и так до тех пор, пока у Малыша не останется шоколадка 1Х1.\r\n', 1, 5),
(6, 'For (int i = 1; i <= n; i + +)', 0, 6),
(7, 'For (int i = 0; i <= n; i + +)', 0, 6),
(8, 'For (int i = 0; i <n; i + +)', 1, 6),
(9, 'For (int k = 0; k <100; k + +) S + = n [k];', 1, 7),
(10, 'For (int k = 0; k <100; k + +, S = S + n [k]);', 0, 7),
(11, 'For (int k = 0; k <100;) S = S + n [k]; k + +;', 0, 7),
(12, 'Название программы, указывается при сохранении', 0, 8),
(13, ' Модули, сохраняют заголовки функций', 1, 8),
(14, 'Название главной функции или функции пользователя', 0, 8),
(15, 'Массив данных с различной структурой;', 0, 9),
(16, 'Тип функций, которые могут иметь различную структуру параметров;', 0, 9),
(17, 'Составной объект, к которому могут входить элементы различных типов.', 1, 9),
(18, ' Только поля;', 1, 10),
(19, 'Только функции;', 0, 10),
(20, 'Поля и функции;', 0, 10),
(21, 'Любые;', 0, 11),
(22, 'Только закрытые;', 0, 11),
(23, ' Только открытые;', 1, 11),
(24, 'Int a [4] = 2,4,16,8;', 0, 12),
(25, 'Int a [4] = [2,4,16,8];', 0, 12),
(26, 'Int a [4] = {2,4,16,8}', 1, 12),
(27, 'Для конструирования класса;', 0, 13),
(28, ' Для инициализации объектов класса;', 0, 13),
(29, 'Для выделения памяти объектам класса;', 1, 13),
(30, 'Конструктор по умолчанию;', 1, 14),
(31, 'Конструктор копирования;', 0, 14),
(32, ' Конструктор присваивания;', 0, 14),
(33, 'Конструктор по умолчанию;', 1, 15),
(34, ' Конструктор присваивания;', 0, 15),
(35, 'Конструктор перемещения;', 0, 15),
(36, 'a)​ live', 1, 16),
(37, 'b)​ lives', 0, 16),
(38, 'c) are lived', 0, 16),
(39, 'a) set', 0, 17),
(40, 'b) sets', 1, 17),
(41, 'c) are set', 0, 17),
(42, 'a) mean', 0, 18),
(43, 'b) means', 1, 18),
(44, 'c) are meant', 0, 18),
(45, 'isn’t talking', 0, 19),
(46, 'don’t talk', 0, 19),
(47, 'doesn’t talks', 1, 19),
(48, 'a) knows', 0, 20),
(49, 'b) known', 0, 20),
(50, 'c) know', 1, 20),
(51, 'а) оксид калия', 0, 21),
(52, 'б) оксид калия серная кислота', 0, 21),
(53, 'в) кислород ', 1, 21),
(54, 'а) с оксидом натрия', 0, 22),
(55, 'б) с оксидом азота(V) ', 1, 22),
(56, 'в) с хлоридом бария', 0, 22),
(57, 'а) у магния', 0, 23),
(58, 'б) у натрия', 0, 23),
(59, 'в) у алюминия ', 1, 23),
(60, 'а) азотной кислоты', 0, 24),
(61, 'б) хлорида натрия', 0, 24),
(62, 'в) гидроксида натрия', 1, 24),
(63, 'а) Водородная связь.', 0, 25),
(64, 'б)Неполярная ковалентная связь', 0, 25),
(65, 'в) Полярная ковалентная связь', 1, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `dateCreate` date DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `image`, `dateCreate`, `categoryID`) VALUES
(1, 'Какой язык программирования получил имя в честь комедийного сериала?', 'Язык программирования Python назван не в честь питонов, хотя иконки файлов с написанными на нём скриптами или логотипы сред разработки часто представляют собой змеиную голову. Имя языку автор выбрал из-за того, что был поклонником скетч-сериала «Летающий цирк Монти Пайтона».', '73b31757bd5176d81802fa07b47efa23.png', '2018-05-26', 5),
(2, 'Каким образом компьютерные игры и программы скачивали из бумажных журналов и радиопередач?', 'В 1980-х и начале 1990-х годов большой популярностью в Европе, а затем и странах бывшего СССР, пользовались компьютеры ZX Spectrum. Их дешевизна была обусловлена использованием в качестве экрана обычного телевизора, а в качестве внешнего накопителя — бытового магнитофона. В него вставлялись аудиокассеты с записанными играми и программами, звук которых компьютер интерпретировал как последовательность битов и загружал в память. Часто программы можно было «скачать» в специальных радиопередачах, записав на кассету. Также небольшие программы печатались в посвящённых «Спектрумам» журналах в виде исходного кода — его нужно было набрать на клавиатуре, запустить и опять же сохранить на аудионоситель.', 'a15d0103c5e5badb45fbd63a9eee628f.png', '2018-05-26', 5),
(3, 'Какой особенностью обладали все ведущие программисты первого компьютера ЭНИАК?', 'До изобретения электронно-вычислительных машин компьютерами в США называли работников, занимавшихся ручной калькуляцией на арифмометрах сложных задач — например, рассчитывавших таблицы стрельбы. Большинство компьютеров были женщинами, и их стало ещё больше в военное время. Многие из них затем успешно переквалифицировались в программисты. Так, среди шести ведущих программистов ЭНИАКа, первого электронного компьютера общего назначения, не было ни одного мужчины.', 'fbf29ea870cf317e1a311176dc2cbb07.png', '2018-05-26', 5),
(4, ' Игрушечные утки', 'Некоторые программисты используют для отладки кода метод утёнка. Для этого нужно поставить на рабочий стол игрушечную утку (или представить её) и подробно объяснять строка за строкой, что должна делать программа. Прибегая к этому методу, программист зачастую встречает искомую ошибку, которую не замечал при просмотре кода в среде разработки.', '27c833ac315f94e0e63cac35e42f8bf6.png', '2018-05-26', 5),
(5, 'Какой дефис был назван самым дорогим дефисом в истории?', 'В 1962 году американцы запустили первый космический аппарат для изучения Венеры Маринер-1, потерпевший аварию через несколько минут после старта. Сначала на аппарате отказала антенна, которая получала сигнал от наводящей системы с Земли, после чего управление взял на себя бортовой компьютер. Он тоже не смог исправить отклонение от курса, так как загруженная в него программа содержала единственную ошибку — при переносе инструкций в код для перфокарт в одном из уравнений была пропущена чёрточка над буквой, отсутствие которой коренным образом поменяло математический смысл уравнения. Журналисты вскоре окрестили эту чёрточку «самым дорогим дефисом в истории» (в пересчёте на сегодняшний день стоимость утерянного аппарата составляет 135 000 000 $).', '34ca2eea0e45d51b567701aa8424c743.png', '2018-05-26', 5),
(6, 'Кто считается первым в мире программистом?', 'Первым в мире программистом была женщина — англичанка Ада Лавлэйс. В середине 19 века она составила план операций для прообраза современной ЭВМ — аналитической машины Чарльза Беббиджа, с помощью которых можно было решить уравнение Бернулли, выражающее закон сохранения энергии движущейся жидкости.', '78b94ad0081d1093864bb14c2ed50862.png', '2018-05-26', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(3, 'Tests'),
(4, 'Zadachi\r\n'),
(5, 'Articles');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1526998411),
('m180522_134900_create_categories_table', 1526998413),
('m180522_134932_create_tests_table', 1526998414),
('m180522_135001_create_questions_table', 1526998415),
('m180522_135028_create_answers_table', 1526998415),
('m180522_135106_create_articles_table', 1526998416),
('m180522_135129_create_students_table', 1526998416),
('m180522_135205_create_passed_test_table', 1526998418);

-- --------------------------------------------------------

--
-- Структура таблицы `passed_tests`
--

CREATE TABLE `passed_tests` (
  `id` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `testID` int(11) DEFAULT NULL,
  `result` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text,
  `testID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `question`, `testID`) VALUES
(1, 'Имеется девять шаров, восемь из которых одинакового веса, а один - тяжелее остальных и весы, с помощью которых можно определить какой шар(группа шаров) тяжелее. За два взвешивания определить тяжелый шар.', 1),
(2, 'Допустим, что вы - узник, которому вдруг предоставлено право выйти на свободу, но только в том случае, если справитесь с таким заданием: перед вами две двери, одна из них ведет на волю, другая - дорога к смерти. Сидят два стражника, причем один из них - лгун, а второй всегда говорит правду; вы не знаете, кто из них кто. Вы должны, задав лишь один вопрос одному из стражников, определить дорогу на свободу. Какой вопрос вы зададите?', 2),
(3, 'Дан массив произвольных положительных чисел. Так же дано число Х. Найти ближайшее число из массива к числу Х не более чем за один проход массива.\r\n\r\nНапример:\r\nМассив 2, 6, 9, 4, 1, 23, 55\r\nЧисло Х=10\r\nБлижайшим является число 9', 3),
(4, 'Жили-были 1000 лепреконов, каждый лепрекон имеет уникальный возраст и очень жадный. У лепреконов было золото и они решили его поделить. Условие дележки: если половина или более лепреконов согласна поделить, то золото делят между всеми поровну, если меньше половины согласно на раздел, то самого младшего лепрекона исключают из претендентов на золото и процесс повторяется. На сколько лепреконов поделят золото?', 4),
(5, 'Имеется шоколадка 100х100 плиток. Малыш и Карлсон по очереди отламывают от нее куски (один кусок за ход) вдоль углубления (т.е. прямоугольные куски). Проигрывает тот, кто не сможет сделать ход. Кто выиграет при правильной игре, если Малыш ходит первым?', 5),
(6, '1. Укажите правильно организован цикл для обработки всех элементов массива, размерность которого n', 6),
(7, '2. Приведенный фрагмент программы решает задачу вычисления суммы элементов массива. Какие команды соответствуют выделенной команде?\r\nint n [100]; int S = 0\r\nfor (int k = 0; k <100; k + +) S = S + n [k];', 6),
(8, '3. Что такое заголовочные файлы?', 6),
(9, '4. Укажите тип данных, определяет служебное слово struct:', 6),
(10, '5. Укажите элементы, которые может содержать структура:', 6),
(11, '1. Укажите типы доступа возможные для элементов структур:', 7),
(12, '2. Из предоставленных вариантов инициализации массива данных выберите правильный:', 7),
(13, '3. Определите, для чего предназначены конструкторы класса:', 7),
(14, '4. Укажите конструктор, который будет вызван компилятором, если объект A класса Point объявить таким образом — Poиnt A:', 7),
(15, '5. Выберите, какие виды конструкторов является в С +:', 7),
(16, '1. My friends ___ in a country house.', 8),
(17, '2. The sun ___ in the West.', 8),
(18, '3. A green traffic lights ___ “Go”.', 8),
(19, '4. He is too shy, so he ___ to anybody.', 8),
(20, '5. Do you ___ where the library is?', 8),
(21, '1. К простым веществам относится:', 9),
(22, '2. Серная кислота не взаимодействует :', 9),
(23, '3. Где слабее всего выражены металлические свойства:', 9),
(24, '4. В каком растворе имеет синюю окраску лакмус:', 9),
(25, '5. Какая связь удерживает первичную структуру белка:', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'nata', NULL, 'nata@example.com', 'nat123');

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tests`
--

INSERT INTO `tests` (`id`, `name`, `image`, `categoryID`) VALUES
(1, 'Задача с девятью шарами', '92bfefbd77693a9967084d7ae8442656.jpg', 4),
(2, 'Путь к свободе', 'f687d95f948fcd99a263119d116029b2.jpg', 4),
(3, 'Ближайшее число', '7519ac724221f362cd1c4203e0c663e5.jpg', 4),
(4, '1000 лепреконов', 'd3b3de1aeb97f2faf6f073d2b0bba961.jpg', 4),
(5, 'Шоколадка 100 на 100', '93237f5ebe0768d655f501469f1fc363.jpg', 4),
(6, 'Основы программирования', 'd3657c0bae194588fbd7b01f60eaa08a.jpg', 3),
(7, 'Programming', '51f3f05c894f43f171a365c8d6f76099.png', 3),
(8, 'English', 'd3f873d76bd8d82733a4eea102a62ee5.jpg', 3),
(9, 'Химия', '48700d123f85539e503829047c7efd6b.jpg', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-answers-questID` (`questionID`);

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-article-catID` (`categoryID`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `passed_tests`
--
ALTER TABLE `passed_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-passed_tests-testID` (`testID`),
  ADD KEY `idx-passed_tests-studentID` (`studentID`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-questions-testID` (`testID`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tests-catID` (`categoryID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `passed_tests`
--
ALTER TABLE `passed_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fk-answers-questID` FOREIGN KEY (`questionID`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk-article-catID` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `passed_tests`
--
ALTER TABLE `passed_tests`
  ADD CONSTRAINT `fk-passed_tests-studentID` FOREIGN KEY (`studentID`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-passed_tests-testID` FOREIGN KEY (`testID`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk-tests-testID` FOREIGN KEY (`testID`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `fk-tests-catID` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;