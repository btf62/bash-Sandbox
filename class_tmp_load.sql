-- COMMENT - SELECT * FROM PERSON WHERE FirstName = 'Bradley' and LastName = 'Files'

-- 🧹 Drop and recreate the temp table
DROP TABLE IF EXISTS #TempEquipImport;

CREATE TABLE #TempEquipImport (
    RecordNumber INT,
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    Email NVARCHAR(254),
    Submitted DATETIME,
    Token NVARCHAR(64)
);

-- 📥 INSERT YOUR DATA HERE (copy/paste from awk or manual SQL)
INSERT INTO #TempEquipImport (RecordNumber, FirstName, LastName, PhoneNumber, Email, Submitted, Token)
VALUES
(2, 'Nick', 'Horton', '+15858316222', 'nhorton@northridgerochester.com', CAST('2025-05-28T18:12:30' AS DATETIME), 'vtxedh3vvm16ax6634pc1zlkvtxedh3i'),
(3, 'JAMES', 'LEE', '+15856833506', 'jameslee.1@outlook.com', CAST('2025-05-29T00:48:29' AS DATETIME), 'tfvzm1l0qvw2irtfvzgd8rrpvr5q60kg'),
(4, 'Mikayla', 'Chapin', '+15852304754', 'mikaylachapinvideo@gmail.com', CAST('2025-05-30T10:35:39' AS DATETIME), 'v6bvpc7fphumgroj28v6bvpkg8z6gwug'),
(5, 'Rachael', 'Osterhoudt ', '+16074234066', 'rachaekristy@gmail.com', CAST('2025-05-30T10:40:18' AS DATETIME), 'owewvc52jzpy0ebc23owewvcqinwafo4'),
(6, 'Olivia', 'Smith', '+15853310235', 'oliviasmith524@gmail.com', CAST('2025-05-30T10:42:30' AS DATETIME), 'emllevzehrxmxk84bemllevrnb5ig0s2'),
(7, 'Kaila', 'Knight', '+15857041920', 'kecknight@rochester.rr.com', CAST('2025-05-30T10:42:41' AS DATETIME), 'twemp18xjmicxehbtwem9rwv6ecqzfge'),
(8, 'Lisa', 'Furia', '+15857042628', 'lisamfuria@gmail.com', CAST('2025-05-30T11:04:56' AS DATETIME), 'tmwtfe04z853m2kr4b5otmwtfetkniug'),
(9, 'Tara', 'West', '+15852330762', 'tawest2022@gmail.com', CAST('2025-05-30T11:10:28' AS DATETIME), '7gahd67uavohq3jycdyv7gahd619c7rp'),
(10, 'Zach', 'Grose', '+15855203582', 'zachgrose@gmail.com', CAST('2025-05-30T11:22:45' AS DATETIME), 'v1vas6i2tp1wwy1lcbv1vasedxnp1zg3'),
(11, 'David', 'McIntyre', '+14073628582', 'djmcintyre121@gmail.com', CAST('2025-05-30T11:29:46' AS DATETIME), 'k6bixvys515oh8v6mb8nxgak6bixvyfz'),
(12, 'Christina ', 'Diaz', '+15856039462', 'stinamdiaz@gmail.com', CAST('2025-05-30T11:32:17' AS DATETIME), 'enpc97xo3jk03h4x12fy5aenpclbq3fp'),
(13, 'Dwight', 'Marble', '+15853299911', 'dwight.marble@gmail.com', CAST('2025-05-30T11:35:14' AS DATETIME), 'yhf9t25awz4hp2v8ttpyhf9s36xs0vw2'),
(14, 'Priya', 'Roberts Ramgarib', '+15167543638', 'pr9602@rit.edu', CAST('2025-05-30T11:39:01' AS DATETIME), 'phvv0v68ek6erfnrkw5phvwl85rl2wl0'),
(15, 'Holly', 'Stachyra', '+19725336336', 'holly@stachyra.com', CAST('2025-05-30T12:00:40' AS DATETIME), 'm69az7ymcgu46wlpn3km69aoq9yefgfy'),
(16, 'Philip', 'Accorso', '+15857979459', 'phila585@yahoo.com', CAST('2025-05-30T12:02:14' AS DATETIME), '0qh9cafjzj6d3rr10qh9cafxrwftqv3v'),
(17, 'Jaron ', 'Cummings ', '+18023387873', 'j16kcummings@gmail.com', CAST('2025-05-30T12:29:57' AS DATETIME), 'orl8wclmin3v852nsorl8wifarsb02s6'),
(18, 'Nancy', 'Roman', '+15859553714', 'luvbeatriz1122@gmail.com', CAST('2025-05-30T12:30:26' AS DATETIME), 'aatmdv1wn9l901ujqmaatmdv1l5mprwl'),
(19, 'Kalese', 'Goodwin', '+19047166823', 'kalesegoodwin@gmail.com', CAST('2025-05-30T12:44:29' AS DATETIME), 'czndqxstizxfm9mv3f14aczndqxp5erq'),
(20, 'Carly ', 'Henkel', '+15857469077', 'chenkel6@yahoo.com', CAST('2025-05-30T12:45:08' AS DATETIME), 'l6k3lr1gopscbkhl6k3lbe2zr9si03x9'),
(21, 'Joy', 'Choi', '+15512069366', 'joyy07@gmail.com', CAST('2025-05-30T12:52:29' AS DATETIME), '12vk7qridgcfst0fxrb1412vk7ux82qr'),
(22, 'Elinor', 'Williams', '+15859690865', 'elinor.williams@yahoo.com', CAST('2025-05-30T13:09:10' AS DATETIME), 'ciy2h44skahtu5wciy2h5kuo8w3nyanl'),
(23, 'Carl', 'Groth', '+15854399166', 'cgroth14612@yahoo.com', CAST('2025-05-30T13:16:33' AS DATETIME), 'd8jyswejp3p36xlcjd8jysto12iyiy0m'),
(24, 'Isaac', 'Moran', '+16074251040', 'michaelimoran15@gmail.com', CAST('2025-05-30T13:25:46' AS DATETIME), 'rbd1kdthysw9ayrbdyoug9qrtnybygd1'),
(25, 'Zahara', 'Trotter', '+15855763686', 'Trotterzahara@gmail.com', CAST('2025-05-30T13:28:32' AS DATETIME), 'tdeh87udntoz1v7dutdvvlbmq0jh1dq2'),
(26, 'Jeniffer', 'Crespo', '+15856354871', 'nimalik001@hotmail.com', CAST('2025-05-30T14:02:14' AS DATETIME), '8ipouw1emd3bl65cze488ipou8hjbkp0'),
(27, 'Stephanie', 'Mahonsky', '+15857381632', 'stephaniemahonsky@gmail.com', CAST('2025-05-30T14:09:40' AS DATETIME), 'g7oi82qi4qif64zfoswrk2g7oiesx7ra'),
(28, 'Leah', 'Khan', '+15852037205', 'leahrkhan@gmail.com', CAST('2025-05-30T14:26:38' AS DATETIME), 'xoof71jg0z0wcslz19xoofe8elad71tr'),
(29, 'Dominic', 'Pasquantonio', '+15856297081', 'dominic16rangers@gmail.com', CAST('2025-05-30T14:47:08' AS DATETIME), 'ss6ielqq5qgjjhcljss6iev72s3gs3af'),
(30, 'TeAnna', 'Coplin', '+15853177050', 'teanna610@gmail.com', CAST('2025-05-30T16:03:49' AS DATETIME), 'lmtigghxpxr3pdx9oplmtigghkzvb3k9'),
(31, 'Jeniffer', 'Groth', '+15857665413', 'jfires14612@yahoo.com', CAST('2025-05-30T16:26:24' AS DATETIME), 'pkaynj52zdg2pkaki7jbplx911wsxhcd'),
(32, 'Allycia', 'McClendon', '+15856648461', 'allyciamcclendon12@gmail.com', CAST('2025-05-30T16:52:16' AS DATETIME), 'woofwd5yanj6vnrlcxwoofwdwnji4ngx'),
(33, 'Jenny', 'Miller', '+15852599649', 'jmiller@northridgerochester.com', CAST('2025-05-30T20:42:46' AS DATETIME), 'ukb3sud4xt1jjavjdukb3c62jemtpvra'),
(34, 'Caley', 'Miller', '+14194637666', 'caley1207@gmail.com', CAST('2025-05-30T22:29:33' AS DATETIME), 'rj43sfun6j7dfirj43zmo41v3f99ryfa'),
(35, 'Shawn', 'Hagan', '+15853055516', '9reatness@gmail.com', CAST('2025-05-31T06:31:10' AS DATETIME), 'ko18ljwm2hmts4qudkko18lnjbsl3s5b'),
(36, 'Erin', 'Sirianni', '+15854659095', 'erin9sirianni@gmail.com', CAST('2025-05-31T09:03:26' AS DATETIME), 'w5y2pylmq1e7ptz00w5y2py860wua5jq'),
(37, 'Danny', 'Sirianni', '+15858205142', 'danny9sirianni@gmail.com', CAST('2025-05-31T09:03:59' AS DATETIME), 'crh9md4kop00z69jcrh9mdrvkfp4vi82'),
(38, 'Monique', 'Dawson-Hagan', '+15854486141', 'omhagan294@gmail.com', CAST('2025-05-31T12:55:48' AS DATETIME), '843xggkhr9ynnaa7ld843xggka6cefcp'),
(39, 'Michele ', 'Petronio', '+15857641133', 'michele.petronio@ymail.com', CAST('2025-05-31T19:39:16' AS DATETIME), 'iisosjtulq1l88306iisos6ajwaqqc86'),
(40, 'Tonyamarie', 'Pinkins', '+17163903243', 'mrspinkins29@gmail.com', CAST('2025-05-31T21:57:47' AS DATETIME), 'ql7hccb4av04zprpqql7hog27a61wlsp'),
(41, 'Katie', 'Mahonsky', '+15853012767', 'kmahonsky@gmail.com', CAST('2025-06-01T03:29:23' AS DATETIME), 'tctdy26vz8flxesmtctdq1vvrluadzrm'),
(42, 'Joyce', 'Bisbo', '+15857488757', 'jbisbobrown@yahoo.com', CAST('2025-06-01T11:02:35' AS DATETIME), 'ijcdf2nd51f69lunufhfijcdfdm9ijec'),
(43, 'Nicole', 'Jones', '+15855034890', 'nic.lynn16@gmail.com', CAST('2025-06-01T12:57:39' AS DATETIME), 'rmsho2utcuy19dvcxrmshommgb9ayutp'),
(44, 'Kenneth', 'Pinckney', '+15854900577', 'kpinckney2216@gmail.com', CAST('2025-06-01T13:12:30' AS DATETIME), 'uau8ntfj5nhtd1hwuau8nhtp2ndnj6y9'),
(45, 'Mariana', 'Cong', '+15854783093', 'mariz.c014@gmail.com', CAST('2025-06-01T13:59:33' AS DATETIME), 'u8yywmrs7w3afnhgxe3u8yynkb17hkrm'),
(46, 'Aidan', 'Bowerman', '+17169848704', 'aidanbowerman01@gmail.com', CAST('2025-06-01T14:02:09' AS DATETIME), 'qngdpxrbq7fu2nu8lis43qngdp63bzgk'),
(47, 'Nathaniel', 'Diaz', '+15854349264', 'nate9629@yahoo.com', CAST('2025-06-01T14:02:22' AS DATETIME), 'es9gzsstzkha0gp8xves9gzsy4yfhh0r'),
(48, 'Zach', 'O''Neil', '+15852088732', 'z.oneil@yahoo.com', CAST('2025-06-01T14:08:10' AS DATETIME), 'xxqlhnn0fvxb0od58xxqltpwme9kj5b9'),
(49, 'Bradley', 'Fiato', '+17169860002', 'BradFiato@gmail.com', CAST('2025-06-01T14:09:44' AS DATETIME), '04x81135xw2z2xtpwoxm5704x81dg3h3'),
(50, 'Nick', 'Agostinelli', '+15853293170', 'ngustinelli9@gmail.com', CAST('2025-06-01T14:09:45' AS DATETIME), '679yzfa0gokxeueko1nm679yzfkl2x2b'),
(51, 'Nicole', 'Risolo', '+15853001325', 'nicolerisolo18@gmail.com', CAST('2025-06-01T14:10:18' AS DATETIME), 'c66jbpw402sic66j8pcduaiynqxvcnvl'),
(52, 'Bryan', 'Blaschek', '+15852081916', 'bryblaz02@gmail.com', CAST('2025-06-01T14:10:25' AS DATETIME), 'n1qi4bebaardc4n1qr9zn0wrvvwxzfh7'),
(53, 'Elizabeth', 'Maneiro', '+15857757806', 'elizabeth.maneiro@gmail.com', CAST('2025-06-01T14:53:06' AS DATETIME), 'krkg3b5opc9bikrkgr78l41r9ha1h0r5'),
(54, 'Logan', 'Bicknell', '+16073683601', 'logan@rivetcx.com', CAST('2025-06-01T14:56:34' AS DATETIME), '2vn893wozr5oxwi7co2vn890pfjpaq6a'),
(55, 'Zach', 'Bantle ', '+15858651537', 'zacharybantle@gmail.com', CAST('2025-06-01T14:57:27' AS DATETIME), 'j8xhjhbqtpw7rjeszbj8xhj6wwrpmb2q'),
(56, 'Diane ', 'Field ', '+15857292768', 'fielddiane3@gmail.com', CAST('2025-06-01T15:05:23' AS DATETIME), 'sjvn5mhaddtvydtzjsd3gqqsjvny8vqz'),
(57, 'Jorden', 'Moser', '+17174489500', 'jmoser2024@gmail.com', CAST('2025-06-01T15:29:28' AS DATETIME), 'buh9qbz6vnvtgjyk3buh9qtsub1ok0kj'),
(58, 'Sarah', 'Green', '+15856452107', 'greensarah670@gmail.com', CAST('2025-06-01T15:30:18' AS DATETIME), 'np1wpxyd9atmtyanp1wrlgs8iosh97tp'),
(59, 'Lucas', 'Allman ', '+15857102969', 'lallman1776@gmail.com', CAST('2025-06-01T15:30:52' AS DATETIME), 'cwscocp7qkpydd4wcwe9hhjpzn9oph9d'),
(60, 'Samson', 'Panthi', '+15857474828', 'samson.bunty@gmail.com', CAST('2025-06-01T15:32:05' AS DATETIME), 'myden1b7bu9zawagmyden1tstbrxofwz'),
(61, 'Andrew', 'Dudley', '+15852692592', 'andrewdudley2003@gmail.com', CAST('2025-06-01T15:33:36' AS DATETIME), 'xqdvcd6uf8cdh38x1zxqdvckkift2sxf'),
(62, 'Dawn', 'Wagner', '+15855034887', 'dawnmw63@rochester.rr.com', CAST('2025-06-01T16:08:19' AS DATETIME), '0v31qfr7v7kx7c5y1qn0v31qf267gp4d'),
(63, 'Karen', 'Bisbo', '+15859437878', 'kbisbo@rochester.rr.com', CAST('2025-06-01T16:09:58' AS DATETIME), 'zlukmz8cvhm3kylkpfvwzlukmmxpe5v0'),
(64, 'Shannon ', 'Calhoun ', '+15857664021', 'latricemartin362@gmail.com', CAST('2025-06-01T16:20:41' AS DATETIME), '25i3kjq5mdthlx9tytrmm025i3oo5p1s'),
(65, 'Elizabeth', 'Tuttle', '+15857550217', 'bookcharmer@rochester.rr.com', CAST('2025-06-01T22:45:53' AS DATETIME), 'i9g8u0btnywc3g95nnupi9g86tqj8spq'),
(66, 'Susan', 'Hulse', '+15854153733', 'sueperpa@gmail.com', CAST('2025-06-02T13:27:53' AS DATETIME), 'vhdmz1eg5orv0tet2vhdmphyatwzfjsv'),
(67, 'Elaine ', 'Wilkins ', '+15853058051', 'elainewilkins91@gmail.com', CAST('2025-06-02T21:19:29' AS DATETIME), '2grj53qtyt59691cd6q2grj533b3r0a0'),
(68, 'Lauren', 'Shean', '+15854788513', 'laurenannshean@gmail.com', CAST('2025-06-03T00:46:56' AS DATETIME), 'of8l5qzcqgtm87dof87ljit1aswj2suo'),
(69, 'Judy', 'Heath', '+15852590395', 'judyheath33@yahoo.com', CAST('2025-06-03T16:03:08' AS DATETIME), 'kcg2rzl9zd2ng70j7m4kcg2rzhrb03z8'),
(70, 'Liana', 'Lobo', '+15857899808', 'chan.liana@gmail.com', CAST('2025-06-03T16:32:56' AS DATETIME), 'nse21dbtypjlchkipwdlnse214ogczx5'),
(71, 'Sarah', 'Reddy', '+15853095857', 'sleepywifey247@gmail.com', CAST('2025-06-04T01:01:02' AS DATETIME), 'tjopi92d2pc3f052e7ckoftjopgc4d89'),
(72, 'Brittany', 'Catlin', '+15854723819', 'bcatlin@northridgerochester.com', CAST('2025-06-04T13:52:57' AS DATETIME), 'l0iu577a1gpx9zq9kil0iueyxz5yx8fb'),
(73, 'Juliana', 'Falcón', '+15852811853', 'jmfalcon2001@gmail.com', CAST('2025-06-04T14:29:23' AS DATETIME), 'ee34fhqe519odrge0mw4xd6tee34fhqe'),
(74, 'Taylor', 'Benedict', '+13152713567', 'tbenedict@northridgerochester.com', CAST('2025-06-04T14:42:12' AS DATETIME), 'yxrymoe23cji49wtgi0ayxrymohb8884'),
(75, 'Matt', 'DeCory', '+15854692748', 'mattdecory@gmail.com', CAST('2025-06-04T14:49:44' AS DATETIME), 'td68d9ahcrv5wsxcbvtd68d9yuisfrwx'),
(76, 'Ashley', 'Kuvshinikov', '+18146020096', 'ashley.kuv@gmail.com', CAST('2025-06-04T23:12:26' AS DATETIME), 'mzi67336i58k55497xjjl6mzi671f0ym'),
(77, 'Josh', 'Miles', '+15853688555', 'milesjoshuae14@gmail.com', CAST('2025-06-04T23:26:00' AS DATETIME), 'qg7kxjj73igtfqp5safqg7k9sm761kgl'),
(78, 'Kara', 'Reinhardt', '+13154860738', 'kleihua13@gmail.com', CAST('2025-06-04T23:59:29' AS DATETIME), 'ttgil6d7gl3ofhlvdmouyttgil6d3mrb'),
(79, 'Christine', 'Horton', '+15857375400', 'cehorton23@yahoo.com', CAST('2025-06-05T00:18:47' AS DATETIME), 'e98wm6ag9nc9sohz2olhxe98wm6atouk'),
(80, 'Aleah', 'Martone', '+15854748145', 'amartone817@gmail.com', CAST('2025-06-05T01:31:42' AS DATETIME), 'ifqh3b7l69cixjt3eh488ifqhh390od3'),
(81, 'Jonny', 'Martone', '+15854910118', 'jmartone819@gmail.com', CAST('2025-06-05T01:33:43' AS DATETIME), 'bcl4i7p332tpkl9bclkgmmajy8xxc90v'),
(82, 'Ed', 'Burm', '+15857482790', 'eddieburm@gmail.com', CAST('2025-06-05T01:34:37' AS DATETIME), 'ycx42uw5ubwmyedycx42sthym10jbmt9'),
(83, 'Chiara', 'Figer', '+15857054404', 'chiarafiger@hotmail.com', CAST('2025-06-05T16:27:38' AS DATETIME), 'dz06wd7s9v51zcl0pryu8dz06wd7u1qq'),
(84, 'Allison', 'Straw', '+15857302900', 'allison.j.straw@gmail.com', CAST('2025-06-06T11:19:52' AS DATETIME), 'yqc1pgpvkby9m51myqc1oihj269f3sjz'),
(85, 'Linda', 'Stanzel ', '+15858999730', 'lstanz1313@gmail.com', CAST('2025-06-06T13:16:46' AS DATETIME), 'gaj6yz08w7wy0z071l2gaj6yzo9aevjk'),
(86, 'Carlene', 'Black', '+15856228129', 'cbgdesigns@yahoo.com', CAST('2025-06-06T13:35:15' AS DATETIME), '4ou9s5r4vouwvlt4j0aqc8b8uv5xdn9j'),
(87, 'Janel', 'Snitzel ', '+15852594166', 'jsnitzel1@gmail.com', CAST('2025-06-06T21:45:06' AS DATETIME), 'dj5agmakzin9vdwmdj5ag82z68ko4gei'),
(88, 'Tiffany ', 'Redden ', '+15856430654', 'tiffie315@googlemail.com', CAST('2025-06-06T21:46:48' AS DATETIME), 'un9mmq8kicnzt4ukxj4uxun9mo6nt10r'),
(89, 'Kristen', 'Jamison', '+15054142275', 'kjamison@rochesterchristianschool.org', CAST('2025-06-08T01:27:03' AS DATETIME), 'avpnzlhmofewlj3jxavpnnpaqe1ywrs3'),
(90, 'Martin', 'Jamison', '+15853691148', 'mjamisonart@gmail.com', CAST('2025-06-08T02:03:16' AS DATETIME), 'c96ixju9ml7s3xh514c96ixk5fs2iqri'),
(91, 'Andrew', 'Johnson', '+13078994981', 'andrewjrjohnson@gmail.com', CAST('2025-06-08T14:01:15' AS DATETIME), 'nmcub0vmnz5h785nmcubdrjfwsqnfbj0'),
(92, 'Laura', 'Harding Smith', '+15857492097', 'laura_hardingsmith@yahoo.com', CAST('2025-06-08T14:01:33' AS DATETIME), '0aps474gm3jnftspdxxqlo0aps474hr5'),
(93, 'Debby ', 'Rose', '+15853303877', 'djr061261@live.com', CAST('2025-06-08T14:02:07' AS DATETIME), 'hnvtd094n8znv9hnvtwlix5r5wi806hh'),
(94, 'Stephen', 'Lasnick', '+15856102365', 'sjlasnick@gmail.com', CAST('2025-06-08T14:05:29' AS DATETIME), '26ao6bxk5gbmnmdea8aoi26ao6qct0kq'),
(95, 'Giovanni', 'Greer', '+15856060099', 'giovanni.greer26@gmail.com', CAST('2025-06-08T14:15:55' AS DATETIME), 'jtr80vls2df3yybq164eup1jtr80vls8'),
(96, 'David', 'Mendez', '+15853606174', 'ovannimendez2001@gmail.com', CAST('2025-06-08T14:16:03' AS DATETIME), 'txswy5ba9hvfuo1b2d3g5txswy5bbpcz'),
(97, 'Gene', 'Lowery', '+14757750137', 'glowery139@gmail.com', CAST('2025-06-08T14:17:50' AS DATETIME), 'ieclznu3jhb5kiieclzjf6teh17utge8'),
(98, 'Brandon', 'Drexler', '+15852338421', 'brandondrexler22@gmail.com', CAST('2025-06-08T14:20:10' AS DATETIME), 'fohfi0qxftefohvcuefjzvx8m5r2hvcu'),
(99, 'Sue', 'Reger', '+15857040214', 'Suezq200@aol.com', CAST('2025-06-08T14:47:31' AS DATETIME), 'selcexkofsfvsy4s1lni94sqshv38040'),
(100, 'Cheryl ', 'Battaglia', '+15854064547', 'mrsbags1989@gmail.com', CAST('2025-06-08T14:47:41' AS DATETIME), 'dzjk1tcqolunbjcdzjs6o2hk20lfdvts'),
(101, 'Ian', 'Jamison', '+15857090968', 'tomianrocks1616@gmail.com', CAST('2025-06-08T15:11:40' AS DATETIME), 'dy0nmekroi4ai7lk7vmdy0nmekusfwgn'),
(102, 'Hope', 'Harkins', '+15853303710', 'hope.harkins@gmail.com', CAST('2025-06-08T15:39:07' AS DATETIME), 't11uflxiu2eb7zp87t11ufl73y10qz3e'),
(103, 'Jessica', 'Kalvaitis', '+16072152538', 'jessikal2015@gmail.com', CAST('2025-06-08T15:39:22' AS DATETIME), 'rke5tyv577v8qn74vzjrke5ttk2yl3jk'),
(104, 'Melodie ', 'Soto', '+15857362254', 'm.soto2012@yahoo.com', CAST('2025-06-08T16:24:27' AS DATETIME), 'v1o78uakw4mrrxkc0cbnv1o78zwrhpf2'),
(105, 'Neil', 'Herry', '+15854488685', 'nherry32@gmail.com', CAST('2025-06-08T19:53:43' AS DATETIME), 'radt7lkk4p1dy9itct8rradt58gx7l3z'),
(106, 'Kristen', 'Vignare', '+15853634468', 'kvignare@yahoo.com', CAST('2025-06-08T22:25:32' AS DATETIME), 'd05ensphq3griuyo1a3d05endn6a8qmg'),
(107, 'Ashley ', 'Graziose ', '+16079725382', 'ashleybender226@gmail.com', CAST('2025-06-08T23:35:36' AS DATETIME), 'ifpupulavaezjozvifpuwtdqp6xsf6ln'),
(108, 'Ally', 'Pearson', '+15852006980', 'apearson0724@gmail.com', CAST('2025-06-08T23:36:35' AS DATETIME), 'tk46a3e4lt8yutk46aak727zcdn81x3h'),
(109, 'Lucas', 'Lassinger', '+17164858600', 'lblassinger@gmail.com', CAST('2025-06-09T00:05:21' AS DATETIME), '9da7j0i2sawq0gaw9da7j6o8s26o9q30'),
(110, 'Frances', 'Conde', '+15857038578', 'francespeo87@gmail.com', CAST('2025-06-09T04:55:20' AS DATETIME), 'ci3sixbeftiqlf07lyaci3sixbahfyd8')


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