-- COMMENT - SELECT * FROM PERSON WHERE FirstName = 'Bradley' and LastName = 'Files'

-- 🧹 Drop and recreate the temp table
DROP TABLE IF EXISTS #TempEquipImport;

CREATE TABLE #TempEquipImport (
    RecordNumber INT,
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    Email NVARCHAR(254)
);

-- 📥 INSERT YOUR DATA HERE (copy/paste from awk or manual SQL)
INSERT INTO #TempEquipImport (RecordNumber, FirstName, LastName, PhoneNumber, Email)
VALUES
(4, 'JAMES', 'LEE', '+15856833506', 'jameslee.1@outlook.com'),
(5, 'Mikayla ', 'Chapin', '+15852304754', 'mikaylachapinvideo@gmail.com'),
(6, 'Rachael', 'Osterhoudt ', '+16074234066', 'rachaekristy@gmail.com'),
(7, 'Olivia', 'Smith', '+15853310235', 'oliviasmith524@gmail.com'),
(8, 'Kaila', 'Knight', '+15857041920', 'kecknight@rochester.rr.com'),
(9, 'Lisa', 'Furia', '+15857042628', 'lisamfuria@gmail.com'),
(10, 'Tara', 'West', '+15852330762', 'tawest2022@gmail.com'),
(11, 'Zach', 'Grose', '+15855203582', 'zachgrose@gmail.com'),
(12, 'David', 'McIntyre', '+14073628582', 'djmcintyre121@gmail.com'),
(13, 'Christina ', 'Diaz', '+15856039462', 'stinamdiaz@gmail.com'),
(14, 'Dwight', 'Marble', '+15853299911', 'dwight.marble@gmail.com'),
(15, 'Priya', 'Roberts', '+15167543638', 'pr9602@rit.edu'),
(16, 'Holly', 'Stachyra', '+19725336336', 'holly@stachyra.com'),
(17, 'Philip', 'Accorso', '+15857979459', 'phila585@yahoo.com'),
(18, 'Jaron ', 'Cummings ', '+18023387873', 'j16kcummings@gmail.com'),
(19, 'Nancy', 'Roman', '+15859553714', 'luvbeatriz1122@gmail.com'),
(20, 'Kalese', 'Goodwin', '+19047166823', 'kalesegoodwin@gmail.com'),
(21, 'Carly ', 'Henkel', '+15857469077', 'chenkel6@yahoo.com'),
(22, 'Joy', 'Choi', '+15512069366', 'joyy07@gmail.com'),
(23, 'Elinor', 'Williams', '+15859690865', 'elinor.williams@yahoo.com'),
(24, 'Carl', 'Groth', '+15854399166', 'cgroth14612@yahoo.com'),
(25, 'Isaac', 'Moran', '+16074251040', 'michaelimoran15@gmail.com'),
(26, 'Zahara', 'Trotter', '+15855763686', 'Trotterzahara@gmail.com'),
(27, 'Jennifer', 'Crespo', '+15856354871', 'nimalik001@hotmail.com'),
(28, 'Stephanie', 'Mahonsky', '+15857381632', 'stephaniemahonsky@gmail.com'),
(29, 'Leah', 'Khan', '+15852037205', 'leahrkhan@gmail.com'),
(30, 'Dominic', 'Pasquantonio', '+15856297081', 'dominic16rangers@gmail.com'),
(31, 'TeAnna', 'Coplin', '+15853177050', 'teanna610@gmail.com'),
(32, 'Jeniffer', 'Groth', '+15857665413', 'jfires14612@yahoo.com'),
(33, 'Allycia', 'McClendon', '+15856648461', 'allyciamcclendon12@gmail.com'),
(34, 'Jenny', 'Miller', '+15852599649', 'jmiller@northridgerochester.com'),
(35, 'Caley', 'Miller', '+14194637666', 'caley1207@gmail.com'),
(36, 'Shawn', 'Hagan', '+15853055516', '9reatness@gmail.com'),
(37, 'Erin', 'Sirianni', '+15854659095', 'erin9sirianni@gmail.com'),
(38, 'Danny', 'Sirianni', '+15858205142', 'danny9sirianni@gmail.com'),
(39, 'Opellia', 'Hagan', '+15854486141', 'omhagan294@gmail.com'),
(40, 'Michele ', 'Petronio', '+15857641133', 'michele.petronio@ymail.com'),
(41, 'Tonyamarie', 'Pinkins', '+17163903243', 'mrspinkins29@gmail.com'),
(42, 'Katie', 'Mahonsky', '+15853012767', 'kmahonsky@gmail.com'),
(43, 'Joyce', 'Bisbo', '+15857488757', 'jbisbobrown@yahoo.com'),
(44, 'Nicole', 'Jones', '+15855034890', 'nic.lynn16@gmail.com'),
(45, 'Kenneth', 'Pinckney', '+15854900577', 'kpinckney2216@gmail.com'),
(46, 'Mariana', 'Cong', '+15854783093', 'mariz.c014@gmail.com'),
(47, 'Aidan', 'Bowerman', '+17169848704', 'aidanbowerman01@gmail.com'),
(48, 'Nathaniel', 'Diaz', '+15854349264', 'nate9629@yahoo.com'),
(49, 'Zach', 'ONeil', '+15852088732', 'z.oneil@yahoo.com'),
(50, 'Bradley', 'Fiato', '+17169860002', 'BradFiato@gmail.com'),
(51, 'Nick', 'Agostinelli', '+15853293170', 'ngustinelli9@gmail.com'),
(52, 'Nicole', 'Risolo', '+15853001325', 'nicolerisolo18@gmail.com'),
(53, 'Bryan', 'Blaschek', '+15852081916', 'bryblaz02@gmail.com'),
(54, 'Elizabeth', 'Maneiro', '+15857757806', 'elizabeth.maneiro@gmail.com'),
(55, 'Logan', 'Bicknell', '+16073683601', 'logan@rivetcx.com'),
(56, 'Zachariah ', 'Bantle ', '+15858651537', 'zachariahbantle@gmail.com'),
(57, 'Diane ', 'Field ', '+15857292768', 'fielddiane3@gmail.com'),
(58, 'Jorden', 'Moser', '+17174489500', 'jmoser2024@gmail.com'),
(59, 'Sarah', 'Green', '+15856452107', 'greensarah670@gmail.com'),
(60, 'Lucas', 'Allman ', '+15857102969', 'lallman1776@gmail.com'),
(61, 'Samson', 'Panthi', '+15857474828', 'samson.bunty@gmail.com'),
(62, 'Andrew', 'Dudley', '+15852692592', 'andrewdudley2003@gmail.com'),
(63, 'Dawn', 'Wagner', '+15855034887', 'dawnmw63@rochester.rr.com'),
(64, 'Karen', 'Bisbo', '+15859437878', 'kbisbo@rochester.rr.com'),
(65, 'Shannon ', 'Calhoun ', '+15857664021', 'latricemartin362@gmail.com'),
(66, 'Elizabeth', 'Tuttle', '+15857550217', 'bookcharmer@rochester.rr.com'),
(67, 'Susan', 'Hulse', '+15854153733', 'sueperpa@gmail.com'),
(68, 'Elaine ', 'Wilkins ', '+15853058051', 'elainewilkins91@gmail.com'),
(69, 'Lauren', 'Shean', '+15854788513', 'laurenannshean@gmail.com'),
(70, 'Judy', 'Heath', '+15852590395', 'judyheath33@yahoo.com'),
(71, 'Liana', 'Lobo', '+15857899808', 'chan.liana@gmail.com'),
(72, 'Sarah', 'Reddy', '+15853095857', 'sleepywifey247@gmail.com'),
(73, 'Brittany', 'Catlin', '+15854723819', 'bcatlin@northridgerochester.com'),
(74, 'Juliana', 'Falcón', '+15852811853', 'jmfalcon2001@gmail.com'),
(75, 'Taylor', 'Benedict', '+13152713567', 'tbenedict@northridgerochester.com'),
(76, 'Matt', 'DeCory', '+15854692748', 'mattdecory@gmail.com'),
(77, 'Ashley', 'Kuvshinikov', '+18146020096', 'ashley.kuv@gmail.com'),
(78, 'Josh', 'Miles', '+15853688555', 'milesjoshuae14@gmail.com'),
(79, 'Kara', 'Reinhardt', '+13154860738', 'kleihua13@gmail.com'),
(80, 'Christine', 'Horton', '+15857375400', 'cehorton23@yahoo.com'),
(81, 'Aleah', 'Martone', '+15854748145', 'amartone817@gmail.com'),
(82, 'Jonny', 'Martone', '+15854910118', 'jmartone819@gmail.com'),
(83, 'Ed', 'Burm', '+15857482790', 'eddieburm@gmail.com'),
(84, 'Chiara', 'Figer', '+15857054404', 'chiarafiger@hotmail.com'),
(85, 'Allison', 'Straw', '+15857302900', 'allison.j.straw@gmail.com'),
(86, 'Linda', 'Stanzel ', '+15858999730', 'lstanz1313@gmail.com'),
(87, 'Carlene', 'Black', '+15856228129', 'cbgdesigns@yahoo.com'),
(88, 'Janel', 'Snitzel ', '+15852594166', 'jsnitzel1@gmail.com'),
(89, 'Tiffany ', 'Redden ', '+15856430654', 'tiffie315@googlemail.com'),
(90, 'Kristen', 'Jamison', '+15054142275', 'kjamison@rochesterchristianschool.org'),
(91, 'Martin', 'Jamison', '+15853691148', 'mjamisonart@gmail.com'),
(92, 'Andrew', 'Johnson', '+13078994981', 'andrewjrjohnson@gmail.com'),
(93, 'Laura', 'Harding Smith', '+15857492097', 'laura_hardingsmith@yahoo.com'),
(94, 'Debby ', 'Rose', '+15853303877', 'djr061261@live.com'),
(95, 'Stephen', 'Lasnick', '+15856102365', 'sjlasnick@gmail.com'),
(96, 'Gio', 'Greer', '+15856060099', 'giovanni.greer26@gmail.com'),
(97, 'David', 'Mendez', '+15853606174', 'ovannimendez2001@gmail.com'),
(98, 'Gene', 'Lowery', '+14757750137', 'glowery139@gmail.com'),
(99, 'Brandon', 'Drexler', '+15852338421', 'brandondrexler22@gmail.com'),
(100, 'Sue', 'Reger', '+15857040214', 'Suezq200@aol.com'),
(101, 'Cheryl ', 'Battaglia', '+15854064547', 'mrsbags1989@gmail.com'),
(102, 'Ian', 'Jamison', '+15857090968', 'tomianrocks1616@gmail.com'),
(103, 'Hope', 'Harkins', '+15853303710', 'hope.harkins@gmail.com'),
(104, 'Jessica', 'Kalvaitis', '+16072152538', 'jessikal2015@gmail.com'),
(105, 'Melodie ', 'Soto', '+15857362254', 'm.soto2012@yahoo.com'),
(106, 'Neil', 'Herry', '+15854488685', 'nherry32@gmail.com'),
(107, 'Kristen', 'Vignare', '+15853634468', 'kvignare@yahoo.com'),
(108, 'Ashley ', 'Graziose ', '+16079725382', 'ashleybender226@gmail.com'),
(109, 'Ally', 'Pearson', '+15852006980', 'apearson0724@gmail.com'),
(110, 'Lucas', 'Lassinger', '+17164858600', 'lblassinger@gmail.com'),
(111, 'Frances', 'Conde', '+15857038578', 'francespeo87@gmail.com')

-- SELECT * FROM #TempEquipImport;

-- Configure
DECLARE @IncludeMatches BIT = 0; -- Set to 1 to show MATCH rows, 0 to hide them

-- 🧾 Run audit report
;WITH AuditReport AS (
    SELECT
        T.RecordNumber AS [OriginalRecord],
        T.LastName,
        T.FirstName,
        CASE
            WHEN P.Id IS NULL THEN 'NEW PERSON'
            WHEN (
                ISNULL(LOWER(P.Email), '') <> ISNULL(LOWER(T.Email), '') OR
                RIGHT(REPLACE(REPLACE(REPLACE(REPLACE(PN.Number, '-', ''), ' ', ''), '(', ''), ')', ''), 10)
                <> RIGHT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(T.PhoneNumber, '+', ''), '-', ''), ' ', ''), '(', ''), ')', ''), 10)
            ) THEN 'UPDATE DATA'
            ELSE 'MATCH'
        END AS [AuditStatus],
		CASE 
			WHEN P.Id IS NULL THEN 
				CONCAT(
                    'Name: ''', T.FirstName, ' ', T.LastName, ''' ',
                    'Email: ''', T.Email, ''' ',
                    'Phone: ''',
                    STUFF(STUFF(RIGHT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(T.PhoneNumber, '+', ''), '-', ''), ' ', ''), '(', ''), ')', ''), 10), 4, 0, '-'), 8, 0, '-'),
                    ''''
                )
			ELSE
				-- Build action parts individually
				LTRIM(
					RTRIM(
						CONCAT(
							CASE 
								WHEN ISNULL(LOWER(P.Email), '') <> ISNULL(LOWER(T.Email), '') 
								THEN CONCAT('Change Email from ''', P.Email, ''' to ''', T.Email, '''; ') 
								ELSE '' 
							END,
							CASE 
								WHEN RIGHT(REPLACE(REPLACE(REPLACE(REPLACE(PN.Number, '-', ''), ' ', ''), '(', ''), ')', ''), 10)
									<> RIGHT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(T.PhoneNumber, '+', ''), '-', ''), ' ', ''), '(', ''), ')', ''), 10)
								THEN CONCAT(
                                    'Change Phone from ''',
                                    STUFF(STUFF(RIGHT(REPLACE(REPLACE(REPLACE(REPLACE(ISNULL(PN.Number, ''), '-', ''), ' ', ''), '(', ''), ')', ''), 10), 4, 0, '-'), 8, 0, '-'),
                                    ''' to ''',
                                    STUFF(STUFF(RIGHT(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(T.PhoneNumber, '+', ''), '-', ''), ' ', ''), '(', ''), ')', ''), 10), 4, 0, '-'), 8, 0, '-'),
                                    ''''
                                )
								ELSE '' 
							END
						)
					)
				)
		END AS [Action]
    FROM
        #TempEquipImport T
        OUTER APPLY (
            SELECT TOP 1 P.*
            FROM Person P
            WHERE 
                LOWER(P.LastName) = LOWER(T.LastName)
                AND (
                    LOWER(P.FirstName) = LOWER(T.FirstName)
                    OR LOWER(P.NickName) = LOWER(T.FirstName)
                )
            ORDER BY P.Id
        ) P
        OUTER APPLY (
            SELECT TOP 1 PN.Number
            FROM PhoneNumber PN
            WHERE PN.PersonId = P.Id
        ) PN
)

SELECT *
FROM AuditReport
WHERE 
    @IncludeMatches = 1 OR AuditStatus <> 'MATCH'
ORDER BY AuditStatus, OriginalRecord;