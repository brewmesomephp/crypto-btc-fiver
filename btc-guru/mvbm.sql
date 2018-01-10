-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: mvbm
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `admin_bip32_extended_public_key` text NOT NULL,
  `admin_bip32_key_index` int(2) NOT NULL,
  `admin_bitcoin_address` text NOT NULL,
  `permissions` int(2) NOT NULL,
  `isModerator` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitcoin_payments`
--

DROP TABLE IF EXISTS `bitcoin_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitcoin_payments` (
  `address` varchar(35) NOT NULL,
  `tx_id` varchar(64) NOT NULL,
  `value` decimal(65,30) NOT NULL,
  `vout` int(11) NOT NULL,
  `pk_script` varchar(150) NOT NULL,
  PRIMARY KEY (`address`,`tx_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitcoin_payments`
--

LOCK TABLES `bitcoin_payments` WRITE;
/*!40000 ALTER TABLE `bitcoin_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitcoin_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitcoin_transactions`
--

DROP TABLE IF EXISTS `bitcoin_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitcoin_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tx_id` varchar(64) NOT NULL,
  `raw_tx` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tx_id` (`tx_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitcoin_transactions`
--

LOCK TABLES `bitcoin_transactions` WRITE;
/*!40000 ALTER TABLE `bitcoin_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitcoin_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captchas`
--

DROP TABLE IF EXISTS `captchas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captchas` (
  `code` varchar(5) NOT NULL,
  `image` mediumblob,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captchas`
--

LOCK TABLES `captchas` WRITE;
/*!40000 ALTER TABLE `captchas` DISABLE KEYS */;
INSERT INTO `captchas` VALUES ('5f927','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ğ\0\0\0P\0\0\0w\Ù$?\0\0\0gAMA\0\0±üa\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0bKGDñqhh;¼¥\íW\0\0\0tIME\á\Z#&;GI\0\0TLIDATx\Ú\íıw”Õºøÿ¿wUu\î<\ÃÌs”œ‘ HR¨ˆ¨EQ	\"’Q”`:  ‚ ‚‚‚(9\ç40LN=+|ÿ˜9÷\Ü{÷ó[\çõZkV¸Ğ®\İ\Õû©g‹Â±O>\Ùa‡a`2™L&“\é#•÷0™L&“\é¯\ÈÀ&“\Éd2•3\0›L&“\ÉT\Ì\0l2™L&S90°\Éd2™L\åÀÀ&“\Éd2•3\0›L&“\ÉT\Ì\0l2™L&S90°\Éd2™L\åÀÀ&“\Éd2•3\0›L&“\ÉT”ò~¦›ŒŒ@\0QX‘X\0ƒ’zá…„Q‚Dş\î\ÏM&“\Éôÿsl*QH“C1\ß\Z\ãù´¦\Æ^ú\Ö\×8Á\0\Ğ\ÇøADy¿q“\Édús2ğ_T:\â\Í%DôD£!¯¢zY_	¹+\Ë\"­ \Çx$\Å\ç\";5´w\r#€t|„\Ëû\"L&“\é\ÏÇœ‚ş«\n£a€1Œœõ%=\ÊHƒ¢\Â×µóp\í³b#\Ô\Ò/^\ÊÒ±P	*\rs²}\ÕıÑ·\Ùë§…e“ü#ˆˆO7À‚dŠM&“\éÿfà¿š²\ÛM\\$\"Sõ+Æ¯7 ˜™\ng(Hô‡C·e‡Š+Â©P¾ÃŸR/æ‰»¡±š°Ôµ\äÒ£ôƒZ\èÃµ`[ ¬”~q”A´l\È\æüŠ\Éd2ı\ï\Ì.ò¯\ÆG\rô÷Œa¬‚¢\ßBgÕ©pn|A‹€~MO(¼¾¦=W°vUHO.j¿\Ëğu„Cwg?V\Ü.~^´0øxG\Æk\Ç@\ßk¸Œ\ç\ëæ”´\Éd2ı¿0ğ_\Í^2ğB\äN=`œ€¬W=#c\àØ \Üjşğ\ëŠ\Ì\ï>812\ïoş £À÷A\ØE\İ\Â1\Ú\"ğ½«\Æ\èÀ_#²]Ÿ\á\î\Ú,\ão`D\ï³ğ£¢•÷EšL&\Ó\ÍÏœ‚ş‹1\Ş\á0W!ø“ö£€ŒBß—aœ[V\à\0—\Ú\éÁ\È<t$r\r¤8qH¼\rq_\Û+)ñü¹s­õCHp:\ÖY|`Ë—kŠ- .‰A\Ü£ù}™Š¸±q#\É\\6™L&Àÿõ¬4N‘\áG´\Zú\ÃPğnø>µ	\äôNT…\"8O›‘\Ãú\ÆfPŠy\â*\Ä`w[A\å<Cl‰P±‰\ë\ëdp]°l”7”¦\'-°¡=iÌ„ğ\çúFc=h\ì&B0³†M&“©„9ş«‰Ã†¢3or\'H_G~ös\nX\Ç2Àn¬\á\0\èÓŒñ„\ëiôû!<Y\ë¨75Ák \ì\Ğ\æó¡pNÈ¡\î€\Â\Û\Âsµt\n/³!¦©\r\å\rˆ\Ù`»®xA\é!Û©L,”&A™LŒ²=ú¢ô§\ìğ»\ßŒÿö\ç¦?^\Ù\çT–m\á@A.}•¸ñ¹PÑ¹±$¦¢ßŒŸ™€ÿjÍ©ö£JC)r¼cmÉŠ«½µ	\Ä\\±URü\ß)4B=\0\á8½¦q®¯ñ\×?\n§ú\ç\ïõ‡!¥»«µ>x/‡OkK \ïx0Z}\0.·ñJÁ§ÀZU\"5ƒ:Wcr<õc\ãv9\ëCìƒ¶§•Ê ì”–Š\\ 1‰¸Ê»QLÿq\Ê:h{i\ÇlEB\"\è\è\Ü\è°kƒó\ïşù€³¥¯4t ; \\ú÷\ËÁMÙ­ÿ‰•U\âsaAK—®Rpa”\ÒÏµ4‹Ã¸‡/8FOcG@¸KÿŞ‡¢uA¬\å\Z\0õ‰\Ã	„JóMò©™ø/F§!)`\ï\'¼Pù¼gŠ­4\ØgqöƒK¡¢ô\àz\È_¼¨ş—BW\Ôı5Á1òü ûlñPŸ\ÓcŒ‹\\\ÓY\Ç\ÚòcC/«\ã\áò,oZ\è%°Y\ä(ñ=d¬Mt{z€\ÜVš&j@ƒŒ8»óˆ\éc+:ˆ+¥my·Š\éO«,Ğ–ÈŠ¥u&~\"À\Û%{ô³\Æ¶€e\Ô3^m£!ñ,\èi$SÀ˜mfŸq–,uyœv ¯õ\ÄZ¿-XR‘\'fƒøE\ÜO3 ©D©¸K„9§óÿ‹õ>¯jDa\ê‹(\"„\ncg@\ßhŒ\ás0:Œ·A[k\è<jo££a@xƒ6D\á74»ñ%°¸´¢T––ƒ=¨l”Ú‚e“\ä\r@l¦·pÓ¤IÊ“ÚµlY\å‘\é\Ó\Ëû˜ş ñ%7¾ôªøT\\\ë\Ù)ù@e‘8\á\ÖÈ¸y¡(\ÕŞ¥‘<­?W\×h3Á—\é¥\ï‡Ü„\àõ^¸\Ò\Ä[1T\r.4)Z”!m¬wKp¦†Oi_‚m\Ü@²Bò\"g+\ëIH~\×U\ÍúxúZf+\ë@l‡i\\Şbú\Ó(«\Ü\æ.­UC€ùŒC 71`D\ê.\ã}ğ?¯\Ö\Óe(\ÜN×¶@Î¥`Ÿˆ®Ÿò=®—{{	\í\Ë\Â{%\Ø\Z\Ò_,¾7t7\ä|°F.€·F¸­\ÖÂ±úX\ãuv:ˆ ½(„[x\ÅO Vˆ=\Ôj…ÿCÒ”=^”=øx°¢pc„ZXœ\Üx0¹›š$\Üxğç“’oô`GÀxØˆg\"¨İŒ4#\"/h\Ã	ü\ê\Çút(h^«.€\ìDªBú\Å#ÂÀ\åf\Ş@ğ8¿£°Kp7œ]Yi¿z¼+\Ãcµ»A>*mÁVŠ¥É ¼+¹\Å !q7\ÃÌ›9ş«z„úT\0ûBy¸äƒªG£\î³-ƒ–++´÷tƒ‚¾¡\Õ~§\Z­‚³G†\êg!p^õ\èG\àúÃ¾=¡\ÍÀItZ¯Ò‹\Ë`=&&C\Â{Ê‹ò»µ\Ò6@\Î‡P6I\ï€\Ò\\t@\Ä\Æ	\ÜUú~ş;«¥²©7\éFXZ\é$¨ö~,†\rù\ïGN\Æ8~\â<hõÇŒ8Pû\èP¸8¼[=\0¹}‚¿¨} ;-p1üd¯ôo|	¹ó‚ı\Ôg!¿]\è«\È(|/4^k\n®Zcm\nˆŸ‘D5pÜªR/ˆz\Í\ê•ß‡J	\îk67Tÿ,*`_\Õ¢[;\ê@|}{ge38¶+¹\ÈCD.€\æ$\á\á\Ï_—M	7%77jC\âq‚ñ9\ç\È£*ñ_£ùôFOc!\è\nµxôy†n<ª¦?n\ÄC8^\ëb¼\r¾‘µ1\àMŒ¼ …¢­\áù\Ú((ü2´Pmù¿„ŞŠT†¼Œ K	¹\á\àšH\Ì\n©¹P´/ü¼¶|£#h2Èº!ZB\Õ+Q\ÙWCÛ¾\ÉG\å‚\åñ¤Á\îq<\Êy·U€tA\än,Q”“?o\0¶–~!ÿq*¡,ı%TºvcúŸ•¶›¨/^\âğ²\ìQî‚ªx\Ö\ÛŞ†º\×c8¢\á|\çBk`¤_ñ}^\Ç\ÕWõº 6V\ÒX	 ¢OW°W”ûH©P\É\æ®j-€ú_Æ¾ïŠ‚\ê¢oµ[¬\ä®ÀbW€\Åt+ï¦¸)”u\Ôe\éZ]¨Dˆ\Ô&‘’‡\ÆY\nğ¥OÂ¥8?a\àg®Sä—V(ıüY\Ãs\ÙH\ë8¹øAûØˆ0‚Ô—ô<\È\íü9\Ò\Ò/~5”—6ÙƒÀ\å{Š¶§@úDß„pEÈ¼\Ûÿyx\ä_}¡6\ïp-|ñ‘Ú>ª\'\éW€\ï‰\â\Ø\Ù&m§¡Ô›C\Ê—\Ë\ZõN\Ä\îsN†–õ*TT¯C£\îñ’³TzÜa[\Î/”¹òb&‰\Ê\Ö$ÿ¬\ÎSH\0ô\ÅF€\'!²U?«Ÿ„ğDmºñD\é»A½MÓ¸\0\ášú}S\Õu+´X½ø3#o\ë¡ød$]K„¢Ã¹\ê\ÛP094\\Í‚\Ü‚.õ\È\ëÌŒLƒ¼fÁ#\êû?(‘ \à·Pm5\İşLuCq³Hº–\0Á\Æ\ê½D’õ\\\ã3ov±\Ò.¡–`\ë OK!q\ã\ËTˆ\íb{KiC¹*e\0#¸…\Ôòk\Ş?O\0.\Ô$\Z%S©\n_ºfP\Ö!ù\ĞÑ¸qœ—0\Z7Í¢ûM\'	\'V~?2\Zx–:$\ÑJ\Ô#™\ÅL\01‚·¹\Ä2\Úù\ï\Íi\äD®S…P\æIk…\ìW”™\"\ì\Ñò0i\r(©\Ò¡€˜@*\rJ \"‘¦²5°:¥Suƒ©G“iE0\áGÎ¦\é\njk}·~\Ô\åú›4\0\Æó—@\Ü%–p(O‰\É\â\Èõ¤Á\ìù\ÑRl\0—\Ìp‚Sº&Z¶‰\èfWvƒ­\å,\ÙyT\Ç8³Cq\êh¸²\È;-4N>œ÷Œo9œ¸7Ó¿	ÎŸ*\Ü\è\n\×v_¼\ëÁ§#Ÿ@ñö\ÈY-\n\Âw\è^#´zc\ãU\ĞOa&€ö–1Ë¨\0\Æu¾\àxš. \røÒ›ø®†~†Œ\çü\ãÂ¿Bñ¬HOm\'\è9F®ñ\ZXŞzK_B¥ş\î7Å`ûM.¾\àFÿ\'	wó5\ÇÁ[şE=\éƒ}şğp\í{_ƒ\Ğ`(<zN[!´ózKºÕúW\à_¤~©½	\ÅI‘\'ôP\Ô#|M]Ew„\×iAá³¡\êj(*T\ÇCa~øG­1\í\nWR\ß\âHHŸÁ\Õ\Ú\Çz4„\×j#õY¹_¯cœ\0\ík}«Qôqôa9ğ\n¿r¤Oğ\"§ø™o\à\\RÁk\Ê\Ğ`\\\Ü\êPT\Z5\Ç~ì¹²[Š˜d\àÿI\Ù\r[\Zh+\ã\Æ\Æ0\ã.AøHIjDÑ¯\ê?ƒ\È\å	\Ñ¬\İ\ä\â.P¶In\Ñ\ÄFúÒˆ\Û\Ğ\Í@ü_©%²q‚—ø÷¨\Ãõ_ 0:<M­EÃ©\ê\Óé¡·6F€4Mj)N€ô¼qŠ(0²˜ml}«ÑŸ<©\r\×\àš½ø`ø^8¾)wŸß€\äõ­;ÀQš\Ë¨ğŠ³\å(«¤w\ÄuÀ^\Zˆƒÿ¡¸l$w/!\Ğ\ï0ºñ¨\Ï\ëÕ<5\Öd½?ø/¨†ş	7V_…‚\×CM\Ô\ï!ğ‹zV¿8\Ã®e­ôº¸\\½,»e¢6X‡\Ê{ z½m—\â\çp\å´\Ô,3¥¡\Ò# \ßò\r™›wD\\6ÁN1!ˆ\ì\Õ>\Ènx7ò5œ\È\Ë=\è{~½/ó7¯\n‡;\æ\ì/–\áâ½…/%\Èn\èYşij‘	\ÒT±ƒ,p\ÌQ¾’l½Ä–©¤€’)bD:›8\ÍC(RôoÀ_M­¨-‚@Œ:D\"\Ûõº\Æ(jnª¹@½T4!8D6s¸\'X\êÈ“!~’ı %bŞ³	¥6XvKwKu@\ÊÇ™Ä”¤ÿı\Ù)Æ‡\ìüj¡\ê\íp|`\îP_s\Øûpf/\ï3pmRqÿ\Ğ\ß ø¡ö‘¾ZÀX\0¡=\Ú-ú\'x\\{^Ÿ\0şó‘¯ô\'À?[\Í\Õ\æCğ¬\ê\Ô5\Ô7A½Kw\ê—A¯O¤*cˆ±	\È\ãs:€\ÜT‰7@öˆñ=\È-\äõb3hQF\ãnPw\ëóŒXĞ£™ÁP-z#*jœşö«O\ê…\éW78L}R¡\åÛ¾7\ß-!ş\î7F;\Ör\ÔB½³x†÷i—!³™\ßyuƒC\ÕV`­,//C²Ó¹Òš‰E\ÎA–\ÛÀöŒü½´\Ä:Rƒk\Zuÿ0\å)™No°t—Z‹\Ê\àüH\Ù#\ÕwŠ\Å-\ë\İ\Åö²<wZ½ò\0°.‘<\Òu\Í\×ú\ê!?/´M½÷\Ôv\Ú\'öUñ‡¡\'@Ï¨]4\Z$»\ĞƒxŸ¶¢4)i•{=$<\ïZ¢À2F\Ê©@w*Ã©\Õ?»²v\ŞCE ½n\ä1|ñ‘3ZÈª\ço~®V*ö†*ÁµZ¾5\áİ¹\Ë5œ9+DB\à¿K=¨o¦\Ø{\ÊbD=bm­\ä@\Òp\ç\ÖP%ì‰·M\Êo»gÛ¶Are\×3\ÖûÀó«e‚l%I\Ú%$J¦¬#\Ü|K5…„\Ğ@wõx\nj„>V\ÛÀ±Ö¹_]Ø™—f/xö´\Î8Rdƒ+3½ƒm 8©«%€ô\r\'\Å|ˆak/¿©¸:\ÙFAE‡k­u5$w~e-\Ç8\å]©ˆxñ/BÁ’\àe5®ğM\nw…óV\nL†\ìqşÕ‘¸Gë¬Ÿ@Cõ>}\'\\{°xR\èe8\Õ(®ÿ[¨)G¿mŸÕšD-³?\n\Ñ¬Eò\ã u>\æO€\ÙG&^P—é•ŒlÈ¬	Á)¾\æ¯\'3ò’üK \ØIí¦Ÿ½µQl\Ì½-y´\r\Íx\Zô©zubA¿­FkÈ¤H]E´8J7i\èÎ‹–o\Ås`\ï*–v«²e¡<\Z\\Z,òE°v“¿s xD}AC\ŞÜ [ùƒCm#; <B{\ÏH\ËR©®\è\0\îÅ––²şÖ†²¬\ä\âM\à}\î\åty7\î\Í€\Ë6—T*\İ\Îÿ:ûHƒ\È;\Ú,c\äLÎ‹4„³\Å?\ÎÂ‘ó9ƒŠ—\Â\Õy\Å\ÃBƒÀ\Õ\İrI\Ş\rk\Æ%¹¶C)\áš\ëY¨X\×=\Äv\ì^\å€d1¾t\ê\ÓT¢l\núq\á\ïC\\¬=\ß\rõ¢c§9{B\ŞgÁ=joˆ›`›k©²$õó *\×ú™¼ò†Vª¿\Â	O\Ş9ÿ>¸Y(Á÷m¤©ö\r\\l]´!8Œ&d±8Á\Z>,\Ìe\04q%f¹öCRš£§µX\Ê\Äd`(õI\á\Ï[¨£\ì]\ï\'‹bˆŒ\×\Æ%\ÈWB¿©}\áRvQa0M\Ï\è{N\äğ½¾)rŸ\ì\ç\"Àûrm-DV\è\Â8§)`*MóÀm(OƒøköÛ•P5\ß3Õ¾\êw‹;\åA\ã\r	w»úAÍ—£k:vBBG\Çó–ÁREj#nª\âÁNùo\â*2^\ä.B`¹\ÚG\ß\æ¾,„_R3,\Z?¾>«ğ87¾`x Çµ	z\0œ§”Qòh¨ô¾ûU\ë1¨¿7Ns¥B\Ã}ñ\ë\' ú\ÃQŸ\Û%H¬\æ¸\Ãz>y\ä)Uº•iP¨„&jm\á\Ì\'ÿV\Ø==ı=ù58Ì‰+n\n\é\'ŠO†÷ƒº\Õhk¬‘ZK?\Ç|/…¯BFCÿğp\ïW\ï}¯‘m\ÛŒc\ËõNü§ˆo¸‹F\à~ÀRQ‚˜a¶IJ¸wY\Z\É\nhy\Æ:£F¨¯\ë\ÛAü&\ä7ˆ\Ñ|	–Nb¸\ØJ–e©X–\Éò)i48>“·H­Áı³µ‚œ,\Û\ä; º¾µš2¢²–\Ó!n´=Û²bWÛ†)€Ñ*…´x\ïÃ¡ıpty\î_Eğ®ˆx\Õ\ÊY¯=h4\ÇmÊ·\Òm 8\ÖX¾‚„[\ì\Û,¸jZ‘\0±Lt§3ğ8\rË³}\Ë/\0—uPq¥ù`-H\Â\rz’Ñˆ\×ÀŸ¢\Ñ^„\ës}_„‡Àñ\Â\Üe¾‘ğ›‘i÷ƒC…9|\r\áú³¾CGÁı¡\Å*Wœ§Y‘WÀzŸ\ä[ÁYh‰–m\çY¿¡‰•<‚9.Sšğ.KQ=¬\Ã\å¨£Ä¾\ê¼,‡¤Yb+Ô›\ë|\Z”–\Ò\Ñ\Z¢¯\Ú\ÆÈ·CN^`p¤/Ä±‡,?ƒl³©\çw\ÎÖ¢û\Â-\Õõpim‘%¸D*>m†1’x\ĞF÷S ©?q±;\n’\ßr®²®\ëy†Ã%ˆ²\Ê6gK6¯¨õIF5\Ènx;²\r’û¯?ü\Zù™w\r\Ì\Ì~¼8\0Y\Õ\"Y^¡õ7^\éW±…‘ }\'®³ô\ÉÆ³l\í!c²qˆ§¸KÌ€+ùCq.\Ï+\Zœi¾\âûBõ û\ŞÀ½‘5\àû)rV¿\0\ãg¹\ÎA\Ò0\çW–j`™&]•¸‘6R^ß‰’­“‡i|\ry?+G¦Á\Éûó\Zù_†Cd‹ƒpqFQv0ş÷\ÕmúrptSjIm¡ê™¨Wm\ßB\Ûr¢>€v;SFF}õ[\åx—\Ãim\0\Île°4”GK\nÁHMDEò!xŸúŠqâŸ´WV|\à¿ù\\?Y1\Ö\áY\ëH‘ Ş©V7\î\í}›\Ñ|ÉªG»¾Õ‘\ïô1ºS»C_\n\â‚x\'7\nIüI‰b - :\ÃVOùªŸ‰jiŸ\rû\Ç\å\Ú\nƒB­Ô3/y\r”eR\rq\r\ì\ÏÈ£¥9\à\\`©-=\n®\å+y¸—Z\åiı•õ-e\Ä\î¶mU\êB\\\Ğş³r/\ÄÎ¶²|\n1‡m¥D×±•Wƒ»¡%U–!ûd r\ä,š‘\Èf8\İ%¿½¿P\ÃIHBœSÁ¹H©+¯ƒ\è(\ÛŠ<ı­S\å;Á:GzB\0úò)\Şòn\İòÀ\ÖÒµ¾\Ò\Ó¼\Í>£4fBÁ¦P®*Á¥HÑÁ_\áğw9\Ù\Å/\ÃşUY/{#p,#÷œ¯!\\mX|K¸º¨Ë´ğL±S†B\âM¡S½%\Ø!²Bq\êwº¸…)ü\04-Ú”KwQÿÕ•µA’‰e«ô¡È˜õ¶$%\n\ên-r~	Õ²¢v\êiœøAŒ\ÛıòH©x‘\Ç\Õ\ßÀ\ÙMùZ®\r¿\Ô^¼Ê­\Ò×…_\ÃOş+PX3<Z\í—¦=ôƒ\Ö\Ñø\Ä\Ú\ëú\Æ<P;‹Á\Ğ2.\éQ\ÏÇbq¶~‹\ÔHt†Ğ€d\Ê¤ö)İ…ol2\Æğ\ä\ÛCS\Õ\êp¬r\î9Ÿ€o¥mÍ¯{gôñ¦Á•‘^%ø„¶k3t¬=\äcR$v<`Mƒ¸*ö%¬O\Êù\"‘¯õF4\ä‡\Ü\ê1\ÈK\rR;C‘\'lUûÂµ±¾™\áQ\à½¹]û\Z\n{…&¨\ßA`¨:S\Û<HW\Z@³»¤\î 1\ŞQ\Å\Ò„,ş\Æı”Tv*ö-k·Œ^\ÆBÈ¼ÃŸö\Âù\î…\á@6\\¨Y¸0øø\ÆFöjcAl;©ñ\×\í\Ë-k ±%¾’»tj[qOôhUa°g$\İ\ï¨f©\0–_¥\é\Òm \rO“\nô \n\r€\ÇiÁ1°\\•\Ñ\â_´¶‡c²%ÜŸXz\ÊVP~‘Vˆ`hIE%c §\Èi\Åb(i¦h\Ê@qEÄƒô™¨\ÂH ‰üT\Ş7\å?\ánj‘\0\ÖW\åLi-Ti\ê\Ùd\ß\r­Ÿ¬P\Ç\Ó\Üne›ü\ä7\rÍŒlK¬\Ô]<ÎŠ–\êòp§X\Ú\Ê\ï€g°¥³\Ü<OYW)÷€§ƒu¶\Ü\0<£,\Í\å\Ó\à~\Ñú7ù%p³xe\ì\ë\å¤z`M’\ß>V‹\ÅS’µ}Ù ÚŒF¼·DT\í(Dê§l°<\'G‹®\à\éj] ·‚\èe\Ö\ç\äq\à\\©4”ÎdˆM\â)J\â\Ï\Ë\åİ¸D\0.\ë\à\Ëv1/\ç$ \éúF£+ø«¨ôQÁ¿&ü\nœ\Ëo\è\ì\ÏjQüX˜ıFñB8;° q\àU\ÈIƒ\ÚX¯a€\Çm]!O„JqZ¶\"¨u\"¦Š#R&;Z£Á±\Ê\ÒH\Z2CÀnv•w£\ß\Ôn+I‘?.Ö‚ûq\ë`ù\'p¿i\ì—W\éô£	0M<ÁH°U–_°œ„Fùñ…®\ã L‘ú‰v \ÄKªXò)ñ©h§\Ê[\á\ßE\Şp®6®¼\åM=úU£K\Ñu0ª3’½€—…<\n-W\'=\ç\ÙòœY\Öa`½[\Ş!\Ş1\Ô\â\æ\İUúcÉ¡\á·ôOŒ\Õpu~ñ\Ğt\ØgV¢÷Y\Øó\æõuE68×¼ )0Tq§¡A\ÂI‡×’un‹©\á|\ê\ß\Z\×\Í\Ù*µv7³{¦<]\ê¡¶Z%} d\nT¸?œk\\xNu\Ï?\ì¯\×\ZøG `Dh®Z\"ƒõÖ¯AıÎ¨lü\r¬s\ä­\Òppµ\\’Àª<\ê^\Ëy\'M<K\'n<(ÿQ¾#|©o26@\Î\çÁ¥‘û!\ëÅ€/<\nò\ß¥ª÷€~Á¨\Í$°^•U±’¾s>a±C\í¡1C\éP\çL\ì\ç“P\á^\ÇjkX«\Ès\Äx`;\ß3\n\èCu4n¬}o\á2y \r4.}Á·P®5†\Â~¡ój>x_ŒÜ¦e€:]ÿÑˆNó5\Ò\Åw<Qk­qr&\Ä\ì±-’\ß\Ï\ã\Ö8¥6ˆ&‹š\0œ\ç¥ò¾)ÿ	\Ñ%…6¤£\âW\ÆA\Ü{=\å>¸e[ül\×6¨t\É}¿mÆ¨)ú\ï\r8\nÖŠòhIû8¹t\n\ìyJk\é\Øür©X÷H³DP†H\ß	@\î,‰\ã o]\ÅNŠ;¹\Äfús\r´z–±‚µ6z(lš«öƒ\Â\âP®š\0\Úlc†Q\\Ÿ\Ê;\å\Ú÷˜ıe\ÄÚ“,cÀq‹r‹¼\ÄLú\Ğx„÷Ë»i\áÀ>\"\è`Tf)¿@¤½ö£ñ\r\äµŠ´‡K\rŠ:„Ş€£\æô/\Ş\Î^T<?›\ákWn÷\neAqB\äŠJHzZœ‡\äQ®\ÖP·0ö¤c4_“ø¥g ´^V¡‰\çy¨{[l\Øù\rÄ¼mİ®|b”hC7@¡ÿM\Ûy\ßÊ¦z/RD\0DE ğœXö_\î–9t$Tº©\'\â&\Ú[(¡\Ñ\'ñ\é®\ç@©#i¢6(\â±¤>¢:\Ë\áT¼Ÿ‹¡ğÉ°¬‡4\Å\Û5¸\ÄYJ6µ¦7o\Õy“Á\Ğ\ìö\Ä\îÕ²\ÃuÁZleI\Úb\í\ßTw1\Ô[õ\Ûõ<¸ş²\ï©ğL¸¸®°[ğGH[\à­\Zº	Zw½.\ÄV³=£\Ü\nõü±œi\ĞeN\Å\Å1 eµ\nox®Aò!g_\ëU°\Ü#÷C@­¨¥¿B\Ş\î\Ğµ7œ|#¯?¸KSy\r¨öL¼[\à\ê<o\ÇPM(®>£M\Õ—?\×z%Î›	ñ5\ì\Ë,\É¿\Å\î±\ÜµfDv|\Ö3r¶h\Î\ï3\"X»­\æYNÓ‡/C K\í£\'A\à>µ©\î-\Ñø\Ğ\è„¨\Îo 7CÅ¯\àŠ³Œ’C´\Íö•r\ÜE–1r?PIiBP8JvŸù½p‰1ƒ\\Õ¦\Ç\Z\× otP<g)ˆ	l‡\Ó\Óó³ı\àú._0¼B	š0‚ø”Ş´\×\ß,\'\åŸ!õv÷ \ëK\Ú\Æ5\Âö*D¿`[/ÑO˜\Ôczyß“ÿKi½€eô \Ø2\äõ\ÒjH8\\–.\ç²×±Œ.Y:4^ñ)u9b¨¨$V\ÔJ,\ç.ˆ\\1¤g8P(#Ä£\Ô\'8\Çc4£$oúQ@P\á%\0úp\îbnQ›iGÀ?B}Z;6\ê§út0..¥º4\â\Ö\ÙS-3 ®È«L{3\åMi3ğœXO% ‡\'Ê»i\á_€\Å?üV\\’«=c¤1¼“\ÂO«k }‡\ï®ğv8¹%¯‡¿\é–Ó°x/u\ç>\ï»\çWfß‚\ìOÂ™~Q»f¬\Ç#Š[º*\á\în³C£‘ñ\Ç]…\Ğúh…¯=5 \é‰«İ‹ ú‰¨†öN]Á–ªL\åi‘)vƒø„´ªbAú»÷[¶×¶¬@÷\Í=Áù\Ç)k—´’t\ß_ÿQj\Êiµ(„«-N	@ı\ã±kœ© ê²—\Æ U[9r;±A|	§\Ú\ä_ò‡ \ÏÜ¯ö‡´û‹·„R@¬\È<\\´\0˜Egú€~\Ä(\Æ	-~HJpO…Ô€«§m\Z\Ø6\ËG\ÅR /Õ‰\ç¦I/¥K\r\ÂÛ´\Şúsü@Û­Ÿ‚P+Í£\×ñ:pB\Âû–\İPS\Üg\'hµ¶\Â\Ïh° ~µ\ë3p-VšH\ïƒô \è)†‚şq\Ú\Ø\0j¸öZ³ fšm£r¼›Ã‹U\rÒ»ø§@\Æ1\ßG¡“ì­­%|\'#‹´\à\ìö‚ÖMPakV-\ï7Pñ÷[\n\Ä\ßi¯f©\0	\ËX‡‹\0\ïI\Ğ\ZfaI>¿q‹±\Ò\ØR\'±\\\Üru1H\Ü–qb¶H\é„ø’`™!y\ÅE°\Ç\Ê÷Iß‚í´¼V,eªdˆ@\áö–†#•\ÌÀ/•\äQG6hÛMûUpA¤	œ¨™wÀ_ö,¸¾¸hM\Ë]\áË†\ìq‘« õ4ò\á`ÿ\\Y*¥C\Õ\Ó\Îş448WÁUjj\ÑN\Ç9ğø,‹”5ÀÑ‡©ÀDZ–÷=ùO)\ë\'«”¤Š“<B+Pò¤U¢”|B¬Š\Ù*4ÀÉ·\äg±²ˆ\"ˆ¢\ßcY†Ì -¨Z\Ú\ÓDJ_‹J\ë6”¦#\Z\Ïò=\ç@}Q¿\ÛğAp\ÚJ¿\ÇTM?§m\0¶¢r\Ø}ò%¹-D·\îRlı‹õ”’\nV‡t¿x¸—#¨À\åİ°%şù\0\\¶vó&H}­¡ñ4¯¯U½¹\Â_=\Ò\ÎJùpbg\Ş\ë¾mplh\î\×>?œıµ 8\éc}“\Ã\ë¡ø\Ç\È&­7ˆ<\Ì\ß v²­º\Òjş]Á±\0Z\ä$I\î…Ğºfr—¨¡\á÷q†\Ó)[\\\ë=à¸ª,’»ƒt·\è\Ëó`L¤\×@?hL\ã}01•o€³\Z~:£Dgu\ÄKô±¼\äIÖ¥¥\ä\âK; \Ëhm\×VYºP*nl \Å	?s!zm†2ê¶\í\ãL\ÑM¬€<_\Ú&\Şy øN\äÀñAyoû–A^\Û`±ú¤uôN\r\0£‹Q¡h<\èSB£\Zˆå¸˜\nÒ¤±\Â©½\İZO€etF\Ô\Ê*F•÷§Ô‹ªÄ%Nj%\İ®–\ËòTp¿l	\Ë\é`*ÿ(m†\à­¾¬¿È§¥\éı¥urbÚ»+ÁeQ²¤­ H\Å)\à\rRX\Ò\Ïb¹\Èùš´KÔƒD‡£“¥%$4sl·u\Îj\ÈÏ‚ğò”\èL\ä‚QŒL\æ³Šú‡ûªƒ\á\Üú\ÂmÁzp:6¿…8Ôª}·}!Ä¼k;¯8@>(Ÿ\Å@Oªû\ïo6qÕˆ\ëıòi0\ÄÔµ\ÕQ¼\Ò\Ğu\Ù\ÚªnZdŸ\r¾‘fZ.D/´}§œƒšjô\ÇyH\Z\ïhl\İ™\Ê@i0ˆ¼hÊ—\0|R²fª\r2¦AV—@ƒğ\ß\àøœ\ÜT_3øùzú“E;`¯š\Ñ\Ê;.wğ>R!\Ô[«¡¯GE\å\é\'¨¨º\Ï\ÙöB‹§“ª¸_ƒ¹I\É\î6PÍˆ:aköï”µRˆu¥#»”r½ÿuŒø\íO)*\Ëb1J‡076Fi©Ô’-”\Ş\ÒBIÿ\×@§˜\ZWW\ÙÁ\ÚR} ø¨;ô±xAm¤Çƒ6\Ôø\Ö\è´Cñ€\í”|E|	®Ó–/%8gX¾’{‚rYRÄ³ †’L<ğxy7h‰>\0¯\ä4™º³¤JV{ÿ\Ü\È8s¬ ?]\Í\Éõ¯ƒ£Ÿ\çóY\à¬T ùku‹«†›AÑ½\á$u)\è-h\ÇYp6QzH\ÏAŠ\İõ¦µ9\Ôÿ!ö#g\"4\'\Íó|	M_L\ÌwZ?G\å\Ğ ¾ƒ\ãV\Å\0\Û\ni§4Œ\î\ì#\Â\Óõ©\ÆzT3ôö\à\ï¡~«_‚ÀW\êH\í7\éZ±Q´\Æ^£(YB\'À]hµÈ›Àó%M~œ÷+©H—¥.\âiAJ*m)üy\Ódş\Õ\Ê\n”–•\ZŠBfCô{¶»\äP\çh\ÌGH.ñ%g@/ÆŠ]À\í|A,\ë‘û«¯\ä­\nÆ¨c!moñŒ\Ğ(0sœ@\Z#\îVC\"‹|\çK}<T\è\â<d]–§¤3B¤(¿@\\“h\ì ?-½,\ÎC…c\ÎÖP9\Ã3\İö¤$»²^‡@C5S³CñU‹@Æ›ş\Ó\áf9\ÇŒt…”Á\ÎL›¢Z\'\ËÏ‚8)§+¿HçŒ¯9ƒ\êWúğÎ|¦yÁ\×+òºvXf\ÊOH)\ÒI\é~0RŒ·øBÛ´L½d\ÌòÏ‚³µ\Æ¾‡‹\éE‚\ë¡R÷h\Û\Ï`³W¶¬¡ŠW¸“{8ş]JgR¬J\ïŠw u kœõh±)\é;\Ïp·µt‘G€ZY¿Ã°Bô\ÛIe?\Ô*ˆ®\ï@\ç¢w\Ù_\ç!eŒü(ğš\è\Ë<0~\à\Z‡!8D}_÷@zU\ß\áp*©˜S½8~î—¾´¨%\ì{?k‹÷6¸T«\è\Å \àS#Ñš\r”=R}¨¸Ùµ\ÙvZôOj\ä¹\ê¦\Üı14X\çu\í‚Øº¶F–\0\ÈıEıJ\Òûşã”…\Í\È?Œ\\ÿ\ÕJK©\ZÃ¾\Æ\"œS·ë¯‚\Ï¹E\ë\r£j¡>ô–F;\ã$\àb+ß€\åm),ªƒ­®–‚m•tN¬\0\é+ñ¶@IA§ù\åİˆ7ü\Ó\Ø8LÅ \×+\ZY~‹oqh\nüZ3\ãk\ïgğıc\×Z„ó¿œ\n\ŞEÂ‡\Ôm >f<j¬K\é\Ñ÷Ù£-\ßBõ:Q\ÉöhlM\Ğ]•¡\Å\ëIx&B\ÃQq¿¸.C¥\Z\î\ÖÁµÃ¢\Ë×4¾ \0ÅŸERµfP0\'\ÔT­Y\ßî‹¼\rY?ø„;ANzğ\Ñ\Èd(l\Zú@mşW\Ôkú{ M2v\ÕÁ*K+¤©;Û¬\Ü)]]\r­\í jO¢ıq¨ :;Y\ÏCô@\ëHy\Èu¥Á\â3hK5n”¾ü«+û:\Æb\Ãò	q»\Ø\n\Ñ\ëmå¡ö\ä˜z\Õ \í\'˜´a\0\íÁx\n8\àè˜œ7|±\r¼iı¼öP‰uE‡Áù€R ­\Ï}\ÖS\Ê,pTUNÊ™ó¶MV$?>\ÖRòE³•\Ãõ—¤ù|\Î0H\é\ãšb­\'$Tp¿Wšx‹CÀ·-b×¾…‚~¡jU8º?§ƒ\ï0\ÄÎ·Vöƒ±“\Û\r\Ôz?\æg‡b»\Ú\ê)“\Ä\0±\n#\á‹\Ú~8–û°o\0œx/÷)ÿÈ\ÍS+@•G<5\ì¯@ô\ÖW\ä¨ª5\Ğ/Ã¥@Q¥`øú«Q\Ú ¸ú‚÷\×\Ğp\å)\ï¤\Ğ\ÈKuS“ ö˜-Sy\r\äª\"(ñ{¾ø¿MtI¡\n©‹‹· \ÂK\Îú\Ö<h‘™\ÔHl€\Ú1\ç3Æ¬#\Zœë”‡¥W j¨Í©\Ì\Ïh\Ë(y/XU\éy1ŒfFgv@@W\íúv¸\Ò\Ò\Û0¸öoÈŠ.>»ú§\×+|dÛŠkÁÕ¼\â¡|§\Õ\Ò/€\ãª|ZjU\æyvÛ@óG“vxş·L½U\0Í\'Vq‚\ä\ê®\ÖL°\èr¾¸\r\è\Ë\00\ÌÿY9%XoË­Ì‡\à³\êTı2~S—\ê{ 8D; W£—J7o–\ÌÀQb(m\ÅLq\ä)\Ò\áo\Ñğğ\İMTı\â_ğV<¥\Å\Æ{Q‘8œRı\'\È\Í~\é\n-}†­P\Ø/\ÜF­RZ\Óu&(\Å{\\˜GmC”ß Ş\Ø\çĞ®sò‹Q\ÙĞ¦YòE\Ï0¨S\Û\Ùy\â\×\ÛG)\ÇÀRWŠ‘\Zƒz]ŸlÔ€\ÜÁ‘.pá¢¶Áup:/?\à¿\r.^,\Ül\×;úZ‡gAÎ”\à„HCğ\î\××„\à]\Úh\í¨†~¿!²O:(‡˜t[+e¤\Ş\æ\nZ@ø\èoí“ \á7q‹][ ş\ê¸YÎ­ú…k“m8z(»¤º ­›y’µªÿ\ê_¿²\ë/\Í/•wˆ^b;D¬™\ÊóP{wtºóƒ\"b@›©/4º@\ä¸>\Ì8\r\'\Î}\Ë7‡T«^Ï¨\ÙúYğ‹¼«]ßˆ\È]Z/Pe=\ÑX	<iL5\Î\0\Å±¿¼/\Ä1ˆ–£\Ú2”Ğ°A\Ü\çğ\r¨ºÁ¿(ò¾–û\çgıP<.d\Æ—€v«q\Úh¹#ƒgÔ±P÷Ö˜ùIP¡–SX·ò•dõ¡ MÈ§v„c#rı¾6p\î\ÂÕ,ˆÍ²=©t‚\Æ\É	»İ• \âP÷Û­p¹§·AğqP\Ôv:œš’Ÿ\å\ï×õ½º.\r,º\'˜×Ÿõ­¯‚*¹5\ÛwJY¢\èUº™\é\ß\ÅYš\ŞW¼\Å=\à)°¼!®–\Şr30b·Œ\ï\Æ%Sü\Ò@1C\ÜbG\é|+\î¦\ZQ\Æ]ü‹j¢ş#\\¾Ï»!ø\ì}6\ã\ë\"	¾ÿ\æj‹‚\ß\àPZv«\â\È\Ø\ìÏ‰t„\È3úL}¸X¶\É/Az\Ñ;\ÆB\ë\Åò\Ğş\ÙWÔ·pË¾„G]H\És\æÛ\İ+¯”Ú€Ábnbn†Sfÿ\ä@ıU\ã>–@h»f\Õ_…\àm¿¾Âªö–ş°’\ç9DI	ˆ‘¢1—D€±L¥\n%Sæ‚\å}i\ïŸÀb\rH»C¾CÊ‚Š²«¯m\rÔ˜=Â±*Æ»ô·¼\Ä\àK* ~«\Ñ\Z¯\ÑATk\é;\éVHx\Ñ\Ñ\ËRj$E\ç\Ûß„\Z¯E¯t›ıSK1Hn\á\åG(ü)¼@\×\n‹×†úÁñe¹uüm\à\àÁ\ì©Å—\àø»yk|÷\ÂÕ·¼Bm \à‡P\Ú›\ÔqúO 1Fwƒ\Ñ\Äø…\Ú`¬ä”‘\Ò`±P´\åŒX+|p²½\åYiM\ÌÉ³¾\0gª\ç´„ŒBÿÅ¨\ë\ĞjB…	PCú\Æ1\ÜÓ­\Ë\å½ a>\ä\Æñ]f .Ñ\ÊÄ‚¼H8XªÖ¹òl¨]/\Æ\íˆ5W\Ï2‚v«1\ÔX\î!–\éR{ğ\Î\rO\ĞzA¥I\î\ê¶}Ğ¸Zü+®¼\Öõ µ¬‹\å£\ây\àñ“¨,¥Ÿ”÷E-K\n\ËXJ™¢6¤\Ös\Å\Û\î‡Vg*œõ\ì…\È½½±D]‘ 2\àÈ™œHñFH[\æ} ´ò£ƒC\ÔG\àø©\Ü_}98\Óq\É\Ò,;¥®\âN\Ó^\Ò/@ø{­1b\âK*6\î0Øµ\ZZ-©\ãyR\'»,¶»\àD³¼¾\' wJ 0r®7ô\Ïo†¢ôpœ¶Òšx+†|pe«÷\Ö\àV¨7 ö1G=°©òl\ëªøø÷ME—ı7KÏ“ˆ\×\èò:\Ñ\Åz\0–#‘L\"Bæ£‚1\Ş\Ø\Å6\Ô&\ë	p-±ø\ÅPø\í³L—÷\ìt\\½T\Ğö?—µ©ø\È\ì\ç¿\nF£-g f¯­½R\ê\Ş;\È9\r\ÚnK~-*\Úß2?*\ê}·\Ìù+$Î´_´Ä\í{9[\êb¤ø^@r\éZ¨R:ö-+ôS6.›¦UŸº-Y”®†š›?ÿ«`i6\Æ]l4ö„qÁ(m·¾Øˆ€¾Û¸\Îp …B†K*(\êw\Z]y´Q\Æ\Ç\Æ:\Ğ_7òi,1V¸YÂ\å}q7üó#\àjDa¹“4V‚\äÁ®7­\ç Q\Õx\\*¤mñ\Ö\r}9\ë)‘÷\àòb\ï¬à­ \î\Òs/h\Çô)P0;TY‚‚5¡|\Õş	\êm%„Ÿ\×7\ë¹l¬6ÕÀ\Ù[>¸`_¬\å\ŞøÕ—Q\Å\ÛN¼–\×ÄŸTø¯Ğ¾\Õ\ï9^\Ü\'~\ëRù¨X\îYòùÀ\É\0šCø6mˆ¾‚35—ş„\ê\ê½ôıü8ø¤ş.|zZ	9\ÅÁ\Ì\Èk{{°Kd8ø>Œh\ZD>I\ínŒ‚:_\Åp<\0Q‡¬”A %	oKO£ù«+ë¶›”<˜H…\â</\ç}\Ëxy\Ôy)\Ææ°€şºQ\Ñ(€\ä[\\…\Ö3xZ}Pÿ*\îs+¶KP\ãB\Ô\'ö¡\Zpg\Ú>wEKªt\ä\çD\r€\å4õü?]¯\0\âRÀ2G~EŒ†J\İİ­m*´\ÍIvD\0ûWrmi$,¶O±<§O\ÄúûC\æ!ÿ\áfp}ˆ/;¼²\'²\"!pd(Ë¥\\ˆaiY5^ŒÎ¶Ï†\æcww„\æW’„\çA¨:\Ü\Ó\ßö\08“-ƒ\åû!ğ:Z«5\êFÿ\ì\è\Ç\Ç\ä}\í;g\Û¤\Ò\á\Êm\ŞYÁ«p\áB|\ZÒ§ù\ág v½-\Ûr¬¿É™¢Ğ”?2=\é¿d+\Ü8n´,`}Qr­\Zo´2ÂUÑ¿?²}œ3­x.ü´-}i\áR8T!û\Ã\âñù¤¿(ü5\æÌ†\ØG\íÓ•¾Pz\ìWÎ™pë¨Šc¢ \ÃÈ”­Q³ n¥\Ø\Î\Õk·\rW¬ \èR\'‘t¤\"¸N&8Oğ¹ql\àk.‘\ÆYòK\ÓùJJì¡)•€WE[ªTr\Z©¥\ÜT\ÂVzN\ïRnõ@~V¸\Ås wm\Å.ª‹Å¼TÀ\ÃU\à\'\Ò)5 ·1\"¾ …©®¦¿ \Ï=\Å8jx€³øEay_\Ü\rÿ|\0.}\Â[\è\Ï-\à`©&{ Ö¹\èFƒ\ĞÔø+\r®\ŞZ|<T\nª‡†ª\Ï@®=¸/\Ò\nÛ‡\ŞV\ïs[\n¶¾$\Éq\Ør&9œ–t\Ğ\Î\ëıyrö—EZÃ\×\í€[^Wp\0Î¼P05 CQÿğ\ê\Z°”‹¤õPi‘;l‹‡\Ôó\î\Æ\ÖÍX\Ù\ÑÁ\Ú½•€TÔ‡õaF\nª\á\éª™l¤	d\Î÷Ÿ·„ü¸\àXõ „ºjõ \äx®H}9§¦\ïG@a5A\Ş\">ñ`\Û$U‘:CÍ¡1\İ\ÄvpP>“?+¦s\à,ßƒŸo\Zejiqz\ÑJÌ¢/De\Ê(¨\Û\î¬•\ßñÔµU=Ù¸…\à9a=#\×gJD~,¤¢ˆ&b&_=‰#nº6.\r\Äb,Í¨Ö—\å\Í\Ò¨\\\ß\ã²\r\0G\å¢t*lt&X\ÛÃ™Y÷9WÂµ\Ô\âGB*xSÂ»µ\Å`d\á0\"\àjfyM\n±/\Ø\æ*‹ \Ù\çZnµA¥wÜ¿\Ø€{ºe¼¬€¶\ÉHe*ø¾ŒLĞ±’Î¢>XÊ­\ÅPp|£ô”Ÿ\0C2¾\à1\Èy$ø@$®,ğö\nn…«\îâ¥¡P#%ªcX’\Èi ¾\à\Îò­[J-	ÁF?c\ÇÀ\ß^u\ë«\àBf\ÑÓ5°\ï›\Ì¼~8”–½¯¸d\Äû?Ç\æ\Ò\nDe\Ø\Æ)\r¡\Öå˜­n‘š}:©©û¢Ÿ‚º\Æ^wN†¨l«\"?\Ò±I<jm}”14\Õ\Ød\Üjo}\"Q .\Ñ\éÅ n3\âŒBP\ë\ë\Ğ\ë˜¢3\è\rV›¼Všö«J´tl\äı\Ò\Z\ß•YÉ©ş›,¿ıWº\ËZúE\ìb\Øc”Ÿ%Ÿ*Õ¥\Ú`‹•/JŸ\0i\Â@ \Öø€Ÿ!4EÛ£÷ÿ\ê\ÈkZ?ğ·\ÔõK\ãm\ãK04r\Ù\âò¾Àÿº\åh\n2H›\ÅNFAüf\ÇJhøH\ÜV\×2H¿\ä›^Y\ç¯‡\ë@`ƒºQ|s\"ñZc\Èrû»†Ÿ…£Srô\íG{\å\é1Hk\è­š\Ù/†DvÁ¾7²¾ğÎS•ó\ïñ_\àYu”~Ä³µ³\Ü\r\Õr¢üv\Z¾—\çœu\çÄq†\ÔW]\ë<p„”\ËR5P\êKŒB((\ÕSmp¥†71ôœ¨™\ç_	\'\å\rğ-‡«³Š+‡Z€ÿ\Ë\È}\ä†¢Tœ¼”·\Ô£Öò£÷œ}\å-ˆŠ²Õ’óÀ:İ•#\ë9]´zR\åßº†ögU:C µ™¼	Q£¬”±\à9c™!÷ª\àa!\ÈwM¼\Â-\çY\àÁ\Òóte\âş]Ui\Z[Y\0³Ÿó¤#2Ë•i\ÑÓ¬µ•Ç¡ªµ\Üùcƒ9‘\'ÁoQg\ëgÁa|I-0Šø‚tğUŸ\Òr!ó	¿\îGoÍ¹\ßwÎº\n4†¸C¶LË« \ì‘|Ì‚Œş\'#¹pú·ü\Zşÿmğ\rµ\è©\Ê%½¤4ŠÁ÷V¤‚\ßm‘&\ÚYˆ\Ô\Ñ\Óõ}ÀvãŠ¼@<U\ŞMù÷Œ¦|\Â~(,MU{ÀÅ·Ÿn‡\Ó\İò‹ı³\àz\ß\í\á\é\ê­\åƒ\í¹­˜\r\É?8§[ß\Æû\ãG¹†\æ÷\'\írW‚jÛ¢2\í‡Á2A\Z&zBñ«‘\éZ+\ÔúDğ_T?ÒŸß™H­×Œü¨„\â\Ç#«µ7Á·>2Zk~¯ºFŸ	\áš\Ú}\Ès\ÅV±\â\×\Û\ÛXA•%z¶§ RĞl{\Z¢ª\Û*\É=@¾\"»€\ê%3‹YJ‰±‹ƒb:8s•;%?¸*[\É-Áş³rH\Z\"\Ì:>=¬ÿxõ’¾\n¿/\Õ>…¢a—:\"\Íô£ÆÀ÷¤QP\ŞwÃ¿~?Xi>¦m¯¼Wú*\îrË¶\ËĞ¸uü|W_¸úLq\Ó\Ğ~\ÈM¤«k!-¿¸Mp~Òš\ë^H›\ã\Úú\ã2\ïÀÉŸó®øWƒwI¸¾v®	_8\Ô‚\Ùjwı{H\İ\é\nYƒFEñ\×w\Ğ2½\ÂFnÉw»b¡Zn\Ôgö÷‘ı\ËŸ¿‰Ó 3^2jC`ƒ\ZÒ¾„¬&ş…‘8¨¶&ª¾½\ÄdZs•nğ\ë‘Ì­E\ë\á\â»E`ğ§«³ô9P0#ô¨šg–\ço\n|•Î¸\'Ÿ‚ÊŸz\Òl!v–íº²,EÒ§\Ê[ \"b]1ó‰ÿQ\Ù\ZYi\å%ù%!±\Ä{\"ƒkg\íÑ¹Ğ‰ÿS¯–•}ö\r‰\ÃòZÍ§\àf}B>\nN«¥¥œ©]\ßY·¾\ÛH6VBd“\Ş\Âø®4õ\Ş\Z\Ú\Zd~H…]¤\×,´ÁÕ»‹\ß%\ÜQ\\ zm“\Ò”Û¤½¢lyÔº6Ê»\"\Ô	2Nú\ç…`œ0¦ß€³†r»´<­÷\ÉƒSU‘Ÿ\é‘+r€|a£\à-\ïTK•\ÍtL\çW.¯^¤…v;\ä\Ö´„Ü±Áxu„\×ö\é\r€>Ô¦\0\ì\Ë;¤Z\Ò\Îu‡U\ÊiA¶U\Ë\ZVjCş\ç¡,u(\\]S\\ªy\ï_Pß€üøP\ç\È|\È7‚«\ÔéŸrª\n\î\nT;@\Ñ\Å0\Ú\ÛPœş@[ş¯U—ö„›jOoƒ\\Q\ê)¾ƒ\ä¡\Î9\Ö$hòyBW;h=.ùÍ¨IP»QLGğü\Íú•ü0ˆ\ã<L«òn\är[º+~.Ÿ1\ì•>rp\Æ[K_ƒ#VR¤\Ãb¿\ÚD#Ç¸şª‘Z?\ÈwS\"ƒ!¿M¨«ú„\ÇkŒ÷€|\ãS\ê‹\é\å}‰ğ\ïÀ¥£\ØZ2%ı–µ¶ü8\Ô!ö^\çİ™P\"d®õ\Õ\r¯#œ¯¦CÎ²\à\ìH](z!\\[]\r¡§\nsõ÷A\Z ÖŠG@«©¿j\Ô\ã†ñ0¤¶v]·v‚VR…½QI\Ğye¥Y\Ñ;¡\Ù\ìD\Í-Cògwk\0\\û-Ÿ\Ê_€\ÒVúEtñ\rÕ˜Ô¤2\ZxjZF\ËS º‚Õ¥\Ü\Ñ9¶&\Êr°¦\É\ÑR„úN=\Züy\êU}¤\İ\á:‡¾\ÙH‚¬‰G\"»\àÒ•¢úÁc6\ØûJ\èÔš-9ê€§¢µ	E Ÿ¢1\×zş/ŸWøg´ÿ¯Jó¦\Å6\î¦	\È;…\ÄJ\İ\Â\"d0~\áˆø\Âµ-Z:dYürx>œšš?\É?L\ÉY\ë›\é[}w„>\Í00,;¥D\ÑD\r±›G!ò‘ö†±\0\Â\Çõnú7”lZ±A\âG\Èbƒ:\İb\îuş\0\rF\Ä\İ\ïœ_v\Ù&€ı¬ò¡T	hJcR	\å\İ`¥\ä\ÒÙ¶$<WšØx	œ\âmud‚ˆ\åejƒ\Ü]$Š¥ ¶ò\ÏBq\ãp¬v\Ît*h\îÿ|\ã\"Íµ.\Ñ\İÿF¤\Zd5ô_O†\Ü×‚-\"\ÉP\nEiƒ\â”\È\Úuğ\r‹|¨=x­–~B¨ô†\×0ªƒú\ŞÛ¨\Ò*Ñ§ n¼}˜ò$\äG‡<‘t°”_’ÀmY%\ÛÁaS^¶[Àò³t]\íK\×\Üÿj\í\Ò%»+b(mÁ\Z\'­]Á9@+\0\Ç\ÃòW\Ò>PÆŠhq\"ñ˜‘b5Iÿ	\n”pœú¤‡Ú«\n„hgõ`¼È—q^”ˆ\Êq\Ù\êß—U©\ä.o’:Šo \ávÇ¯–4˜gqö†kŠ—†öAÖ°@zdø©ƒô(ş<’­%ƒ¿“ú‹ş=p?*?Ndˆ\Úo\í$¯‡\Z£=†\Ğú\×\ä=/C»’GF¡¢\Óı¥mXœR¾xˆ§5·\ç¨K\0\â%D\É\ÈK€\è%\æ\Ò\ìo+‡¤K\\\Û9\Ñ\Z‚Fjü\ç\Èz\Çÿnø=¸6\Æ÷Cx\äÚƒ\ÈT(Zn«m\0\ß×‘\Ş\Ú]sW`¤Z²\çÖ…¿ß•\ÈPmhCôm†òYyŒ``\Óÿ¬lwl\ÙkYM\îó\0:S‰X°¸\äjRwˆ\ímÛ¦ÌŠ£\İl\ïò…”%†A\Ñ\Ìp¾úD.\êuS\È\á#p\Æ+3\Ù–ñ\ÒX\Ë0ˆ\ífŸ t‡š;¢/;†AÓ¬„!\î3\Ğ\\N:\ç¶@\åş\î‘6	¬\ÏIm\Åxy“4 Iy7\Ô%vr/MÁ3Àú\Ü¢ûÛ®*\Ë J·>!O)]\á\Z¨¿|!]o¡?\ÍüQ\áIp@É®R|NL\È\Ï÷×‡|gp„ú\ä\Ô\rô‡\Â6¡\êjø?S\ßĞ“!\Ô[ûM\0T»n1Ğ–\èO\Z\Z\è\ÏĞˆÀtFs¤O\Ø\Ì²¤(±\äb\ê\ÓŠ††«k\Ë\á\âª\Â5Á8õp~#T9\çYe{’òœ,\ÉõÕ©Œ\é=±\áüõ\ê”\î\"OĞˆdP\ÚKoˆ#\à˜¬¤H€³ºe´<liò\"±	‚»µ<\á+ú¯úbğ…¿\Ñ.AQ\Õğ@uøªm´É 20~)ZxE¨Qš6ZNş}¸lô2œ†$ƒ\ã¬ü¹\ÔªLñô·¿	MN\\\ã~®\ß\í{2„<5¨©›!¼¤ø\Ù\à.õ\Ó*\Z;€ù\ä\ZH‡\Åœ€\è\ïmS”¥Pcet¢ı^¨=7ú;‡€\ng†õ:X\î—rE/\àRiñuõ©\ÔRV2-ˆÀ\ã%[NJ-E7ˆ\ÂVl™U\æ{^°¿û¸³Îƒ3\Ë,5\å(ğ\Î£\Õ­‹ñ†\Ñ‡Ô±\ÚSPü~$N«\Ú]z\Zè«ŒoŒùÀUŠEAù}Ğ¦?\'Qº)Çº[ş\\zª¼\ä>j\r\Æ\á”IQQ4\Ó)Yo\Ì\Úş\Ê\á;!·Vpe$B£´ÏŒ~ \æ\Ñ\ì\ç•õ\Ò+\à\ê¦T•\ÖB|;GC\ËE¨*{ú\ÛÓ \Æø¨†ö7 9\Õ°Àõe\\\ä\æ\Ò!±\ØN;ª•wküŠ‡h\ÑOY\ç+Aj‚\ë7\ëh¨\ØÃ½\Ï6N]\Ìú‡C¾/tZ­ÁE\êCz¤môN\İ<0\'’Rñ-] Ğ§$\ĞG©§ô\ê M15bv\ç7?·ŠM ø¤\å\"\ì;\åx\é:(·J\Ä`\ë#o•\Şû¥—ô8·(£¤\'Á±EY!«–IgcKSi*(J~Q\Õ\ËúJQO\ê±\à~\Ú\Ò\ÍRºğ‰J°³¼ûT¶4Uv¾_2\Z<!\ËNy#\Ä.¶\ÍV\Î@To\Û-\Ê\ëP\\[\Í\Ö½—\î5\ŞH­ª¯†ü˜\à\ç\êl(\\\Ê\ÔF@h³v«È’´XL1‘–T)¿\Ëü÷\×)*ªx–\Î%[£\å8¨½4z—#¯&v§@\æ“ş\ÃóÁûPDQeÈ¹/06rŒgX\Ìğ¼k}A©•v\ßm›\Õ|Q\ß\Ù 1\Ë9\Ùò\Øbe\ÔV²i\çÿ¹@ZÙŠl\Ù\æ\0Q‹D`	Y2VL\ã4\ÈË¥\nb({¥[…ô\æ\â@DK0Fó;€¯\É&‹ñ®ñ#ğ‘\è¸•\êüú\ÇÀ¦?¹¾\Ô ¬y©x	’{¸~¶Bt%[´2ªU‹Â¾Š¾\ï\Ö&AÑ¼ğ\í\ê\ãy][a\Ìi˜dÁ1YşI’Àq]ùQz\Üm-¯\É!ğ<`ıY\î®~–\Û\å/A\é n\ëD+\à[:¢\0ô\Òj¾71¾¤4¬Ã¦dHU¡J¢G²?õ¾‰m\ä¼\ç\Z´\n¬ƒ\Ğ&\ÍxŠ-‘Íš\Ş7#«4?x§G\ÚjUA4\ä-²@ä–”üT\ŞûE\Z¸ß°<+7„¨:\Ö\Ê\Êˆd‹W\Ü\İ\ÏvDùÜ·[.\ÈpVµ¼(\Í\×0ewÀº]¶§\Ø\ÒSv‚«‰å²¼l™ò<ñ3(‡¥k\"\Ñ]¬•D¨°\Ëù£µ/H[D]‘\Ü\ÏaZ\0n\Ôòn\ãrU–E\Ãx\Ñ\rbûÛ§)[ Yv.²¦A…\Ë\Î6\Ö\Ï ÷½À©\Èrğ\Ï\Ö÷kÀ{,<W»\×\ãüc\Ã~\ÈX\ä\×\Ãª×ú›=œ·*Û¤S@Š˜üŸ€\Ë4&7XŞ–²EuHzÉ¹\Í:\ZÍ÷¹º@\ÆSşüp\'\ÈYø*rÔ¶ú:#”¯¥\ã\Â\Õ{E\rs\äB+©\ÂUOe¨¿!ög,\Ä³ÿh\Ùb\ãxˆ\å,ü~\ì\Ø\ïaXû»Z\Å\à)\r¸e\éAcù‰óY¢7vCŞ´Ğ³\êI¸\æñ%†O@\ÖL\Ïğ\"ğ¿«\î\Ò{I§!X.I©¸¯Z4yD=mm¨ü\Î7•nr1È½Dq;P+$”\ßmú“²—>ÀÎ¥#5Á\ÒJª < L¶ncÁSÛ²\\\ÉN\çc ¨\Æ,\ã\èó>ü\ÒuQ`Y\'šˆh›Ko‹\ß@´\â>ú\0\çˆ\'Æ“%§\İğ\é\0Q¥§Ò¨7g\àı]%<XA—†ŠİºÜµ\Ìú04’ »t¸²\Æû[°2º\ÃW\Ô\Î\ÜS´H\ï\Ú]\Æ	\ã~\ŞG˜\Öùii\"¸?´¼(Ÿ„\Äf1 u•«µT<\ív\ÚA\êpW’\íAHü\Ì!,•!\Ún{@.91]>NM¹[\Ş§\â”ú€#Uy@Š\ÛhY‘\Z‚e’”/\Ş\01‡uy¦°‰\ïÁ¦¬–†‚³PùT^\â{ñª<Š\å\İ\È\åOX\Ëm°¿iy*½\â¾fBj¦k²õm¸øRa$\Øüg\ÕıA(~9ò¾š\×\æ\ß¶\Â\ÕÛ‹?\İ\ï†W\ëBBsG[\Ë\ç †b\çvÀöŸ]\êÀe‰ôıJ\è¹\Ê9©5T‰÷¤\Ú\ÆB³Ÿ“\Ü\ç¡ğZø.õ~ˆfÛ®|®\Z–[\äï¡‘#>\Õu41\éE·\ê8c.;×€\ç¬u¾<\rô3¼jôªQ\ØATcª\è	\Ò2±‰\'†\Ä\ã~%ƒB0^\å7®€1\Éx€ 0[¬§A\Ö¦\á\épxdV\Üö/\Ëj\à‡óc+Ç÷zx€úˆ±b»ÀS\ÛzJ>©\r\\\ßXGBÅ¯Kw‹9jk­tùš\è\"¶\0\Õ\ÙÀğ?ş6ıÉ•=@–\Ã÷\\£\0Ä±’€\Ì\Ëb5õAi\'RDXº°D\Ä\0Õ‰fp…\"‚`|\Ër_¨Ii¼\Ã@Å’óºù’?\çqœ¥3]\â3\î¤D\í·=¡¬º«b\':\Ãp}µoRø6\ÈO½®öªq\'\Ğöè‹tp}l\é!÷‡ø\æö\Ú\ÊtHy\Å\åµvƒªs¢Ø·C5—\çSû\×Pi¤»\Ğv?uX†¨q¶\ÎÊ»\à\\¥t¦ƒ\é„ô.(]¤\Âòy©‚\ÔDŠY \İ\Í;\Ü\ì¡?At¤\".J6=lDM2\é	\Â\è$\Ó\Â\Ü3b“\è\Ç-\à	[F\É\n$mr¶Lä‡œ)\Ö÷Á\Õ\ÍrPúò¢C/s‚ªú¡¡@ö…Àû\á=p}Oµ€üuÁG\ÕDˆt÷Ğ¯ƒm—œ\'m¢¤R_L9\\W\á\Ø\'Ÿ\ì°\Ãø\ã¾tesû($‘€~\ÄøÒ‡ø²ÃŸÂ™\Zù\ËıC\æoş@¤+x®”l®¨şrÔ‹ö\ŞP©·{Ÿ\í{p·¬—¾€\È]z\È8Yrü¡\æ…ğú:\ãS°¦\Ê+\ÄLp*\Ê}òdP“\Å)PŸ0\Æ\Z!4_Û«\×\ïúğgZ1d¬õO	G\à´/¿’ÿø\í¾\Ìö\Ş z\"[-\Ã\å ÷½\Ğ=\ào¡ş¤½®e«¼j7‹Ir´„İ«İ·T\Ş4¼\Z?Çµ\ß+{¥úÀ\ÃÔ¥½&\Ó­t¯‡ñ4\ßsBs\Õ=z=8m/¨¿%fVñfÀ‰\Öyy¾5 76\Ú0\æ\Û\Ç[NB\ÊÛ®e\ÖH\ã\Âz\'¤(®CÖ¦¸\Ó²\Ô\0ÏV¯ò$\Ø\Ë\ÅnWŠwEHB\\/‚ˆ¸\Ä\ß\èB\àÒ‚\Ze‡X&B\ÉQˆ\ßøo<ş\Òó‹¡Q²O+\ïÆ½	\äDm£ş®\ÑN}–¯º\Ã\æı—\æ¥ÁÆ½>\ÌI‡“Kògû%·Ğ¢»!!\äXa)„S\ÇG×„~}j\Üÿ\Üz õ|ô>ˆµw²l\Ï\Òé¿¬?ş\\ˆ²®j\É\âºò‚„¨I±O,¯‚kˆv\Ë¾¦7:\íW¹@|Î‰JD\ŞôBÁ\r¹¯Õ‰p\å9\ï¯Á±pygQB\èMğ½­N\Ông¡\ÒGŠ‚\ØÓ¶$\ËNp\ä)“¤VIĞ«\×Ák÷Vß…Õ¿%\Ò.eµF\àLÓ‚Oü÷\Âùk…ë‚A\Öş\áw \ÔQ¯‡À]\×rF~ª}5\É\ŞZ½QaœG‡f\×n;T:\ç–m\'ÁºK¾$­†R•…˜\×dúw*+tò!·Sl\È6iT[\åYo;Ö‡¤L±\ZjWˆY\íxD*‘±\íl©\ÊCW\Ã\ŞL	n\Ãr·\â{–2JøÁ’#EI·€\ÔMdò\Zğ,u8	lg	\Z%is\Ï\0:\İ°–\É7s™<nL\á—}ÿ\Å\ßıü=ƒÿ:aöÿUi^°¸&ˆ‰\Ó\ÇvE9	Uk{\Ú\ÖC\İob¿s¾j¬ñ1üŸD|ú½\ÑvFY	\ÎÎ–ñ\Ò\\\Ğn1\â¹Bn­q\ÉQzCy\ÍNşñ#\àTZ\Û\Õh\ËZ€ñ°±•“\ÜØ½\\ƒ\å\ìÿb5_û®\Å\n\ßÇ¿\É\í\å»mÌ©\\ì³s:\ÂP¼*¼Fó‚c½òƒT¢\Ú\ŞR¾\ç\Ó\Ê\é=\Ğ:¹ŠDÓAf\Ä\ï\ß/úN„›@n\ç\à\Õ\È\Ã®\Ò?\ã\0YClª- ¨Pcpô9ûthu…˜¨\æĞ®(eyT¸\å\Ãø;\\¨\àt,›À¶A¾*­-=˜û¯–\Çg2•‡²\ïYaT\ĞFfB¸šö‚>\"ûõ\ïo€T%¬vùCi\ZX§KC\Ä`\n\Ä	&S’¡ƒ±†\ÓdÉ¦(*]\×ş\á\ày\ã÷CLÿF\Æ#l\çÿ\ZŞ¢…\áBµ¢Á\àHFNlñûpy|\Ñ\ÃÁj¢EıÁmùEş’O:ûYÒ¡^a\\\çe¨ùEô(Ç±3 \"YL*}„úC•\0.›’NÄHÆ‰øš‹\äA¨«–d€´Ï½÷wÂ¯«3ó¼û\à‡×¾*\n‡?Ê\é\ë\×gøŸ\çCøšö°ş\"\Èq¯ø¬\å‘b(Xo“¿–\æ‚h\Ë,ú‚š£w44T­úv\Ç\ècô\×A¬¦§¨š\ÖõòmP¡§3\Öú#\Ôó‘\ãehr!ñv÷\Ğ\ì‘Ä\î\ÖP«MÌ§\Äï°§*+ÁZMşDz\Ä5†Ñr[\Ü7™ş\Ò\Êq,v\à(9ø€oJI¸Šˆ$\âzP•Xn€ø³­…ÿU#¨óôWŒºP|6²S\Ó!oL0¤\0\ï¢\ÈJ-¸\Ïøš“`ï¤¼%9ÀiS¦€g‡u†\\œ”\×\ä÷ÁºD%†ıKö&ı\Ñ\Êÿh\â²=?\á¿{]_rºˆ6İ¸f\Ü\rEjø	m	\\\â;>\ri½½…\êCö]O\ä2øÜ‘\î\ÚC u\Ö\Û\ÇÁø‰_±€\è­\î\æ<H©\",N€\'³¬Aù\épm´Ì’WA\ê*›\Ïú\n$\\´×µ|•\Òİ¯\ÛÒ¡†?úc4h÷…óÔŠ‹\ÉuT…\Ô*®B\ëS\àşÀò€|\äw¥7\ÅB\ï3œö€\Í,9i2•›²ğY@¨SZ;¼ô˜P±°ô\Û9¨´\à‰¿t3šf†Ş›Z\éq•\Ê\Ò3\â D=k½GY®¥–ƒò\0Ğ»\ZOó6ˆ>œ£\rHõE^)Sl“A¬?a±’™Œ¦dSp9\Ö\Ü.ÿğÿfgÉ†PPó\ë]\árç¢¡\Ç\áÀ‡Ù«Šı)Ys½õ\à\ì{]\Z\ä\æŠô†Àµ@ÿ\Ô\Õú\\£\è&\Æ\ë \'‰\ë\âUpx-}¥ nŠ\í-\Ë=Œó1k!Tœ\éN·€Jİ—mû¡rW\Ïj[G¨\Ü\Åó‰ıVHö:YsÁShù@n	–G¤4‘\0¢¶x‰^”Owpc·÷\Í×¢&“\ÉôŸ¡lf1\ê÷tRKi¥°’·l3›úKe\ç0‡ÿ¡ò\\9¹yp&~\" kF\rf€\ïr¤©\Ö	2ûø›„‡Â•N\Å\ÕC+\àÊ§EW‚/Aö³\ÔH&ø‰„ôªùÜ¨®\ç\Ñ\Æh\Ç|Š\Ç\Ä^p_µÔ–‹ ¾“\ã\åGH\î\èœb5 õkWe\ÛÃ\ã|\Ó2¢\ÖI\Ê&°\ÏR\ÖK•@yM¼&.‚¨%^¤7%»ò\"”|\Ğ%OÎºxM&“\éT6\ËXvş¶ø‡yÇ¿\ß\Ôvnr+ÿ)\èÿMR\éy—\Å¦‚\Ëy\ØwGõµ/…\n[œ_Y\ÔMŒù\Í\éo\Í\È:\ÕÁ—\ÕQz6h\íj¤€\ŞŞ¨a\Ì©¹\Ø$Î‚c¾òµT\Ü\Ë,õ\åö\àzÊ²U\Î\çr%Iz\0¬§\åÍ¢H\Ë\ÅY‘\0bı¨$2ZÀÂ„¸1\Ò5™L&Sù¸Qh\é&­ÿon\Şğ\ï\ï°ôµ\ì	\çbia¹$\rŒ\Æ\Ël\İn\Ô1f‚Ñ™N¼\r\Æ\Æ.ÎƒøM¤ˆ\æ¼Ì \\b¼\è\Â\Âº€¸\ÎpÚX*ºS\èCu\âùı\à÷ÿ¯\Éd2™LÿB7\0şo\ï¸ôµ,0–\í1.*M\\\Ï+\İtQ6BMÀˆÿ»€\nÿıô\ÍL\'0™L&\Ó\çæ‚ş\ßüã”ƒVZ\'\Æ^š>Šò?–nó•–ò3™L&“\é&`f¨šL&“\ÉT\Ì\0l2™L&S90°\Éd2™L\åÀÀ&“\Éd2•3\0›L&“\ÉT\Ì\0l2™L&S90°\Éd2™L\åÀÀ&“\Éd2•3\0›L&“\ÉT\Ì\0l2™L&S90°\Éd2™L\åÀÀ&“\Éd2•3\0›L&“\ÉT\Ì\0l2™L&S90°\Éd2™L\åÀÀ&“\Éd2•3\0›L&“\ÉT\Ì\0l2™L&S9øÿ\0<\ËN9tœ\Ø\0\0\0%tEXtdate:create\02017-11-26T00:35:37-08:00\r†|h\0\0\0%tEXtdate:modify\02017-11-26T00:35:37-08:00|\Û\Ä\Ô\0\0\0\0IEND®B`‚'),('b457b','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ğ\0\0\0P\0\0\0w\Ù$?\0\0\0gAMA\0\0±üa\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0bKGDğğ†`\áÚª\Ş\'\0\0\0tIME\â\n!2o\ê€\0\0[IDATx\Ú\í\İg€Õ¶\èñÿ®\ê\Ü\Óir€r\ÎHV@Á\"ˆ  ‚¨`&(f@ATˆ\" &PTE@Q‘’s†™ar÷tUõ>\Ìp<\ç\Ş÷\î;\Ñ\Ñkı>\Ø±kWM­\Ú{¯½¶ğzg˜n;£i\èt:N§û\ÍH5ıt:N§û3\Ò°N§\Ó\ét5@À:N§\Ó\Õ\0=\0\ët:NWô\0¬\Ó\ét:]\r\Ğ°N§\Ó\ét5@À:N§\Ó\Õ\0=\0\ët:NWô\0¬\Ó\ét:]\r\Ğ°N§\Ó\ét5@À:N§\Ó\Õ\0CM¿Nˆÿö‘öWÿı\Ûï‹¿ùœ¿ù9\Ğ\Ğş/¿\'ªOª~5 U^õª¢¢‰¿zUkºQtºÿ\İô\0¬\Ó\Õ4\rGMA\å×€id F\Õ\×\ÃZœ%Â¯Õ„ŒX„\Ã_}®VdŸ!£°™3U^	\ä\á!	\èN}²€¢6i€™ªÿ¿N§û·Ó‡ uºš&†Ü­-\ãG`_²\ØR \ÅpÚ‹†À>­€r\ĞsÏƒ\ÚL‹\Ó´vš\ÆU mf Ó€—´\r\ìQ—œ 2qbM\å!\ŞeŒªi/Aô£D‰’¡¥ñ\í‰K!º.TRAù\\k¢-j\Û8(\Õ=bN÷o§÷€uºšô¶ƒ£İ8­Ô‚JW¤k|ø?‰åºIû\Ç\äÇ¥\å`\\/ÿ$%@\Ş\"J\Ä,¦KM\Ä\ë™\Ä`\Ğ:r+@Ù¯>©}\r‰\Ö\Ê\0\Õ\r‘œ„Ci\á[\â\ß$†AxY|—\Ò\Ä\â$\ïAòM¶µ\æV~>\éfkp¾e\édz\0\Ä\ÍZŒU€[X1\×tc\étÿ»üñ°Vı<¢j(. E‰óë“º2$LcõPœN÷{¯\ZRÖ¶3ˆg¡\â»ğ\ÔX¼S¼\Ë\Û\r\í/\è£3\â7‚¹«¡\Ü¬ªq€\ác0É‡¤ú ÷”#A”r›¸\Ô\ÕZw­\Ä)-\Ô DnM,SNB¨c\ìºø)ğÏ‹\Ş7@(?>+±’ö™~4ƒ\æ3·y$0mÉ™+ƒ¤»\Ì\É\Æ{Aˆ¨H\0n\Ğ°N÷\ïõ\Ç	ÀÕV‹ñ\0oBü°RW-ƒ\Ø|Å¬\Ü\ê,­-\ãÀøô¾T¦†\ë¥g@~Pq\àUn¤+\à6,ü÷$\î·tH+\Â‰\Ë\Õ\\õ)(Ö‡ß†_<ùuJ\ÂO\ÍN>qa<”¾\Z~Ìš!_‚í´±—a˜¦È—\Èï€¡“¤Š\"ÀÀ&úb\Ôn\ÖvA\ì®\ÄeDH4S\Ân)“ \Ü3¾!\Ñ\â©\ÊN\Õ9¯ºŸ°÷[3S\ÃAh¨¦\áú´\Ñ\ÚGL·\Ôtc\étÿ;ışp”*hc\Ée8”®	¬‰…³¼÷ŒP0½23ø(ˆŸ%¢à¬°<aü2Mm[!õ£¤f¸o³\Ì6%@š†O„€l\á\ÂV\Ó§ûÓš\Åö@\Ä¿W\ÙÅ‡ü\ã\ÃÀ©PyCÿr8Ö³Tñµ’‘f\á“ \Î2GŒ\éC\éQ\á\é€\è\Ï^3™&n*‰\ÍC]\ísĞ†h¹\n”“\Ú/Z}P?P¿Ôœ ^¢\Ò\n@\î(×\ëUkK“\0\åRu„¶¤¢PX@ø\ÄsŒ²Xƒ±¦\ëwDûo‰\êÏª\Æ\æ.&\ÇUh!b@!\"üe\ÄfŒ@*IX\0‡¨úÜ€¤\Ôıùü~ğÅ¡\æ!\Úb\ÖA\àù¨\'~+yªd­76_uºm\Ñ68øCQJE9ˆúŒv¨õ¬ûû#\ĞöT\Î\Ş\Ô\Ã\ĞjNö\ì\äoÀñ y®1R¸Ih@6\èX÷›«¾Ak\'É‹pGW\Äo…\â>s\á&Pô‘¿Yøi¨4D\ì±÷ R;>G\ÙÚ«¬\ä\n—ó\ÙTM­¼\0\äs†º€Ÿ(1@\åN¦\É\Øh<\ËL\ê€8#bHD7ql²¡À°<¥\Ö7\Ìğô°½aö‚\í¨\écCk‰Sb2°[˜\é\rüQ6ÿ\ëò­‹.Ì‹Ë­.f™_üz¬:\İG˜pJBÀY¼€B|„€#”\â¾\å0\ç@«\Í4–‚\ÚRKÑ®Õ«Óšƒvó#Hs\Ä9ñ>HˆÛ„\n\ÒG¬ağ¤¸’v\èY\ç2¿\ß\0|J+\Ç‰\Ô%\Ú3P8¤rG¨1\ì\\u~si¬k~tZ¾G¾)¹ÁkSB-}	\Í+3½\É!s£#l=\nMd\à^	¬\Ö\Ö\îE¥eMœ\îO\ë”V†”Z\ê\Ó\ÚAğM„c\í xu`E¸J;µHDœñ×”] ¿/MÁp§´Tj†‰r¦ô,h\É\Ú\Ú{ H\êM\Ú\Ğ\î\ÒjkÃ\çD\Ñ\äy\â!aC¹¿X¦{\ä§\äI`\Í2ºC\Æ\Çak+h<%=\ê¾\rr[¹»%­…¤WM#Œ…¼\ÃÀ\Èô?\Ät\\½\ÙJ\Õ2¬‹9!š PJ\È_}ÿ0\ÅT€Ö›·ø\n\ÈÕ¦ğ>h»É§˜Ám¨cµ\\Fªh‡´f yµa\Ús }\ÍML\å˜\ÚS[‰:\êõ!ˆ÷W¨OAt{BU²!loRÆ€\ÒL[§	°\İ`¼Ç.›u¨©Ø»›l†ó Ÿ¢\\4šˆt\Ü5İ˜º\ß\Ê\ï/\0W?‰jk\éÃ“\àu†‰¾‡?\ã}\0ö=WXTvN\ßRq§\Zøïˆ¶\'Cò\0\ëS\æ\Å\à,´¼mR ıÑ¤a\Ö2p7´¾b~\n¤\ÒSbp„7Hª\éƒ\Ôıi}\ËQ\ÎA<_i¦T‚÷õğ\ÉX+(9hI€·\"ü~ô>H\ìP\ç¨mÁ®˜jo‚´÷’FZŞ†\äÆ¶[\Íù \rŸŠW jK\ìTºCÂ¤nÓ®qˆxL\ß\æ\ËóÁl\n\0\Ç#\æ/]ÁuĞº\Û4rb® }4¿,£¯\Ç	u¾M¾Ñ±l)¦w\r¹ÀKô\Ç	Àôšn²ÿ\Ñ\Å\ìg\Ú^Î€vQ¼\ê­Z¦v3¨\ã\Ô-\ê>m›V´R\î\äePo\Ğ\\\Ú\0ˆ¢tR\ëB,\'Q¡\êZB\ë\êFM\Ò@ôÇ„Ky\Âr¼‹2\Z­\Ô\ïÔ¦¸ 6Tƒ\à“1c¢\Æ%\îƒğñC‰\å:k’X	\Ş\Ë\Ã]c\Ğ\Ú2T»r\îñIi\Ğô½Œo=\ë!÷5\ÏØ¤÷@¾K.\í& \à?\ß_\0ş@\Û\Å1ˆ~–®¸\à\ìCŞ¡0\ìw\Ú\Ë\Ë\àH—\âf¾N\à¶Ç‚ñ¨´Rš\n\ÙW¸^°¿\nLŸ\ãz\êuJ}\Åù#¸FZf\Z7ƒœ#.Ÿ\0_‹$Z\è=º\ß\ĞÅ‚/ğ{ ºMyA]\å\íC}\"‹¡\äX0n•}\"]cq\Ğ>aŸBò§¶i\æG \å\ÇYÓ’Ğ¼SfrrsHºŞ´\Ìğ9ÄW‚\ê/ ôS+5\"S,CS\Ìğ¶\Ûk\Æ\Û\rG!©Â¼\Ä0\r\ÌO™\ÆA\Ê=¶fæ¡^T\Ïú-$g\Ù\ï¶|¦£ò\ãòÀµä±»¦\í\ï°Y;M$WT[¿<z0~;øF*b×d\Ä_	¡ıñ©‰#\ê[‘	±•±\ê]-HœP\Z@0)\Ö>şD2\ãK”CHSVû@ôöD-uŒ\å%B¤<¦\ì\ØAÅ¦®€\Ğ±hü{¼]›X{b‘2\"RÜ•˜ş´\è¦xC0_k¸Iş:­\Îu¤:¶[—A\í\Ç=«\íÀ\Ï\\v\Ôtc\ê~k¿Ÿ\0\ì\Õ\ÂDA§=¥Ù ô`Z$=pá‡Škaß–Â¹\å] ÿ‚¯(\Ø”E*jgHû.©…õh84Mv•A³2’<Cö\çûö\Ó`r\Z–Kl `d\ìt6K÷GV=$ª\İ\ÎGl€È‘ø#\Ê1(óûD\×C\Ùú\à¨‚\Æ\Ø;‰Àx‹tt\Ò÷\'…¬ ùõ™\"ù$tŸX¯u\æ/\Z²ï²˜AıFk\ÊPk\É\Ú8›\ÄzZ€l–<RŒ¤	R2˜v\Z–Koƒ\éKù„ô&˜7\ÈwÈ³ÀøŠ!KºwJ9\Òf£Ha\ĞBT%	ı\Ş\×\ÜÀ»¬\ÊXô\ëø8öc\É\Õ>3YS\Ü\Ş„üö¾-¡\' ²M\ä\Ë\Ø]ø0V?^Ñ­ñ\Êóİ¥¼¤NƒĞ±ØˆÄ¥y*\Ñ;ñ:$:(û´ÚX®~¥H\İ\Äre\0Ä(\íÔ­¸C-Pƒ\ØG‰»\ÕlˆnI8”¸B¢.E\Òh[ ±[9ª‡”zö\Ã\æw¡\Ñ\İi]>H\ÌVWj\İAzX´\0a\Òp\Õtc\ê~k5€/özò:« \Ø$V™8\'{–u­œû®¸P»\\†\ãKWøVAÀ\İL—\Ë#\ä\'!gˆKµ§B“Ÿ\ÒK\ÜP\ïÙ”\n\çYp­²´2ü¶˜ ’€e\"\' ªÃ¯¦\×÷\Ñı†ªÃ˜\ÖC{Mû*;E²c\ïBIrğ\Æp#(=\ì\Ñe‰Ç”I\àx\Ë,LnH;®³º¡\ÎZ\Ïé¤Ÿ \î%)\rœ\Ã õœ\İm\Ñ@^>Ñ‹†\ä\0.,\Â\Ì\'I‹~zˆA–\à}\î\í4ÀN³PÈªş\Ëø}\Ş\ê”*Í¦=Ì»P\Ş5˜U`\×\Â\ÔòŸ`Ã•\'f\Ş§z”ÿ\â÷Ağ¶\èóñº2\Ş0‘ñÛ”Q\êP\çj\çµ)x[¹Z\í±\Ê}\êrPóµ‡µ¥À\ã\\A\Ğ2Y\ÅP¯P?\Õ.­+sY¼\Ìn®\ÎñA`4\ÒH ¡‚\éry´lÃ\×ö€\ëMKSS{°2Y¯ü’¨:_3…\çwp7ş{Ú½\Ê\Å\Z\â³·ÿúUğkMñ8\n\n¿&¹\éşFÍò‹\'roU‰½x_Åª\æ@¡¡ò£\Ğa8\Ğ\é\ÂôŠ1p óB´\âZ(\Z\î	jm¦6R¶7·‡F—¥]\å\Ú\Í\æe¸Ü¯Cv}gm\ÛF°|dH•§‚&Š	À\ít \nœ¢\\«J\í,øµ°‡N÷ŸP]‹Yuh+\é\åş;\ÚŠW\ZGŞ€²ó¡y‘\Ç@{T›\Ä(°\ÛMe†; ùk‘ù\0¸†X65\0\é1V!öQ\âqeHa©Ÿğü’xS@’D.;@¼\"ú;°³Z1hG(\Æ\Ç\ßd!T\Ó\róOòk\â ö\Ğ\Ğú@\Å\èğ¨\ÎdUt\r,‡ƒŠvTt…ó7x\í/ ¾TI\Öz€ö³¶S›b±h\Ç@`h\Ú\n­\ß\0µ\Å@º4›b!Hc…W±G´a^0,•ö‚\ä\r\ÙZ¢7\Ä©_©ƒ@i¥fiû@\Ì\Çx\ÜÛ¬%\æ[ \î‡)œ…P73\åm\'¼\İ\Ö\Â¡‰Ù¢Wõ1½[ÓúQı #R±cZ“M\nĞ\Ú\"\ÈÁQU\é ET\0¸ U\0\'(£´@õ÷õ@ü7j.\0_L¶ZG__$r{l U\Ò\ÄW\n{#óË–Â©emü³!\Ô:¶!‘¶M·\ÎA\Ş#O@\Óı»_„Zó\Ü-“\îc+ùK©DV&nP\\ µ‘Š\n¯½)©–h)€X(‹w@\Ä\ÄRQŸTœ ¡œ\0ún0º¯\Ø\ÅqˆŞœh¥t‡²¡¡‘nP6 ˜™Ìˆ÷‚p‹\ã3ò8\é¨Ûµ\Í	e÷…–EŸƒ\ã]J\Ê|Áôa¥|	X\Z\Z¦\Êe`\Çd1\ÜIO›OM`[l\ZjX\æ<ù.¹5“\äf#@õc\æıú®\ŞL\"TO©·B\ä­ø ¥/Dlñ6Š4IK\Ö>³\"“KW\ÃÓ¢¤y¢§˜&—üµ\ÔŒK\ä\r’\âq@úA|/²À<Ç°E\î–LC[y\È/J]Dw\nfõ;\í:ğ)\á–\Ñ ô¥\àC‘\Úú>\Ş;\Ñ¬;G¡^FJØ±\Z\ÚÕª\åM\Í[e\Ìô\ì\Ï>\Ûmf+ˆ	\Ì\àv\0\×t“ş_UV?\è”óóA\í¡N\Öò!>X¡<‰\á\Ê=j}H\\§zµi yx@{Œ·\ÊQ©Ì‹\äõò20¾&#5Æˆ\Î4\ã¿.\nû\Óú\íğ\Åf_Z•l!\îW¶\Â\Ù`En \ì\Ë+Z6-Z\ë}\ÊF†ŞŒ\Î\0¤‚\ëÀe±7¹!c˜C±\ŞIcM³\ë¡<%4=º*c‘i±µ \æ‹<ñ˜\×È»¤\r`}\Î\Ø\Øğ\Ø-\æú†‡À1\İ,_…¤ú¦ı\Æ3`º\×0B	B^\Ş\0,\È\È@´z—\Z}ÀZ÷Ï¨bÑšó\Ë ‰Šw„òe¡#\ÑEPşd\èöhb¯)¨sAû”½<\r‘”\Ä\ç\Ê8{ƒ÷x \äI§_,\ê\0\î/W\Ü\0\ÒK¢\'«Á\\a\ì%§»·\åIS}\È\Z\å¼\Î>\ê\å¦,p4‚Z¹‡%Á\İ\Ìr\Â4	\äg¤€\\-šP›_wSú£\Ù\É9JA\É\ÖFk\å`\ì Ï”\êB\ê›v«\å4™“şˆ\ç2ˆôL¾>q,\ç£\r*˜,r¶t+X1¾)\ß¶iš!\Æ\ä\ær0¾.5–\ÊÀ2Ô¸]ö—L³\r \ï”r¥!|E,-QÎ¼\à\ã\ß\0³/ô©8Áp\×X?°\Ô3<gğB\í\ã\îcI­¡ı’ZyiÇ ƒ¡vJZ#\È;¼.i1\ØV\Ç\É\ÙÀ\Ót\ã|M7\æÿ`=GÉ‡x–’©€·exfô~¸P\â\ß~J†\Ş?~-º1Ş‡ª\Õ\çşH\Òr«r;xKJ@æ›<[?0t’\n\ÅV µ¨\êIÿ\Éıöøœ\æ%\ÊI­–ö”l‡³‹®¬8\r{^,Vş\0œ\ï<	Qb€\ÒŒû\åi¢>>’öKk ø@\ì\Ä$8\è)j\\ñ»©\ä\ß\ëù4Q¦.óXLÆ¡²\r’š˜\Ï¯‡”»m\İ-W@Î—®±öP\ï@\Ê×ùıµó#{›,#«@.ïŠ–Àµ\Õ7ª?\æm\ê·w±•’ª*şˆX4’°‰\ê!¨\"„A«\n B‚ÿû\æ\æƒZŒhŸhohC\à\åh\Çx¼\Â¢£¡rY¤Nl*$Tcj\ĞFk9Z/ğ7ˆ<Oc½K¼¾õŸ\â{<ag°H\í.¦j\İ\Ò\Ò\Ç`Ÿm¾Ï¸²*œKlM¡\åş,gòV\èÎ—>š=—\ÙË³R\nmÏ˜›\ä%,Ê€daûC\Öx¶a\Â\0\ÒrQ!>…\ÔUöÃ–C\ĞrOö\×\É #ß¹\ÊZ¤³¢‰˜¶z\Æ\î†ûÀ\Ü\Å0T\æB\ÃN\ér°>l\ìo\Ø\æ9†\Ír;04—^Ÿ‚1,#7ó»´\"\Åñ—”®p\"«¬m\å÷Pd<\Z\î\Ñã‰»Ô¦€‹Iœ„ô&I\Ã-ù\ĞfA\Î\Í)S¡£#wQÚ³Ğ¨aZC\×fpš]¦6 ]/5\å #~\×>g?§!v!1J\rùm|3‚Ma\çgç·–6…ùvUƒ’q—\ÂkÀp»tVº\ZMI¿Íµº~Z\'œQ’6™n4¾\î}ÖL€]À@şô›\ß.\0_\\(?“õüşYQk<\Çg–\åT.ƒİü§\Ê48voI¦\Ï¾\'#Å±& ~ª­ÖŠ@[©g!ø@\ìõ\ÄH8±µôn_œ9Q\Ş\È?¢\îDBiQ·ò¢:	\Ä¥\'¿—;He¤1I\îdË‹\æP{˜\'\×ş,´ôg‰\ä\Ã\Ğ6”³,µ4z7-\İU’Kl˜€at@:\nô\Í\ÉC\Äÿ?‘\êR|\ãµ/\Ù\êL^ehC´÷Xbª¸– J™\ËHbWó—M3´”RÉ¯\Éyt‘ª\Ü\íˆ6œ tslY¢Tv‹x\â\ãÁo\îˆ[@yM½Z\Û\rj#­”\Ç!´\"\Ş+~\"?%š$8\Æcb¨Ÿ\ÑD›\ÚZ­1Ğ‡h†{¥©N+kV\Ù\n\nã•…¡O ötb›r+˜VÊ‹¤L°œÍŠ$a\æÏŒa`)\Z½ø\ã]×—QL0Z¤’	\Ò\ïLÊ¶\n°õ153¼ñr¥«\Z\Ãw\Òû\â˜o1,€<J²ˆ3 O\ï		Vy²T\n†\Ò@\É\ÒRQŒ¨EKƒ\Ä õ\Zõg8i+\ÛXy3\\\èS¹;\Ô	?T\Ú\Æâ¦ƒ\áM`Yb< O†\Æ\r\Òm\îr\è¼3ï®Œ•\Ğü\Å\Ìó\É\ïCJ-ûK[Î‰\'ø	È®NZú½_\ç+·\í\â&¦C¥1rC<\'o,\ëPù:l¿óÜº’¥P\èôyƒû@#Y¥ğ>ş4š\n)¥¶—,\×@­q®œ¤:\à˜c\îl\Üòi\évq\'<8jú k\Î>\0_\âúA;ÁˆH\ìUò\à|¶·,\Ğöt\Íÿ¾\ì[\Ø\ï/´–×‚¢É¾á“xHyMmskA™¦\Ô\ï¼ğ\Ñ\ÏÀ7#òy¬h6­ƒöĞ‚\ÇX\Úg¼…	\Ô[´÷µLPŸÑ¢\Ú0ë‹¶b\'˜\Üò\ZY‚\Óó*®ñ¿\ç»yŸ\0\ßuá“±^ v\Õ^\ÑĞ¢A\æ\ì\ä—Àf­0\Í©” 8¤‰ªœ\îo)\Õ7’gµuü±F\Ê\Zu)„N\Å^O!\Ü7¾\'1´\×\è\Ë°¼i\ä\Í`›¢†¥`ºC+½\Òi1@ø\\\áù_Q0\åb®C{´\× p[lCü8TÊ‘i±¸?\ZŠ¿\êp-¦UeÏªÑ\Å\âa0\åÒ`¼Qj-}ü,4œ¿K\ÉS£Ÿ¢ø\Ômï­ŒT3¡\âD\è\Êhm8\ÒBù\Ù;¬Œ‹d¤7q,·f@\Æ	g\Â6	\ì²iºaH~¢\"8…SM7\Ö? ©\ÈÀri¥I“\Ìf\ãw`ob¶\î\âEáœ°ƒ˜,0\Äp:n\"J6p=ki¢‡¨\Ï<\Ğöjœ€øgª]eG‚G#a\ï\åı`\Ëeg\Î7€\Ã\çz[Cl±²NM\ç¥,÷Œ†K.«ıcZCh;\"\çÎ”_ ³¯óI[:˜ú\È\×Hı€I¢©€Šø]Ş‹®¥)µÁX.Ÿ“\ÒÁ^fJ1\\–)†–²\Ô-\ê5šü\ÑhÿxSĞ†h)x\à\Ü\n\ï3ÁVp\âš\Òg+“ \É\Øt{,dd:–Xc\à˜k\Î5\0^BĞ…_K€ş\Éü\çp‰$\ê[Ú«šJo\nv‰x\à@÷*Á/‡ò*\í§–\ß\î?á¡±Å‰<\ĞNqS€ç¹N \î2kÁr\Ğ8Y€#l`2ƒcy›ñu0·5\ËK!\ŞOù^m\0•\ç\"b¼\áH£\ØPÏŠ}Ÿ¡h|@¢)D\Z%®SvC¨S\ìı\Ä ÏŠ‡Àuµõv\Óº\Ô^f\r¶¯L\ßrÀ²\Ê`‘›·kú´ı\åWO-<©\Öğ­\ì	8•V6Ä¿	Î¯¸\Üÿ„¿MU¶€\çnkks>\Ô}\'y¦\Ã9\Ã\İ\ã\ìÏ€ûf‹\ß\ÔØ†Äüñ“….n;xƒök öXbšúD$\Ö(·B¤]¢£’L X\Ö¶\ÊCJ\Ğ>Ë²²\Îş¶WÁ³ÁºÑ¼¤¡\âA^€Àğ\Øsñ¡xuÀ™\r¥¦Àû‘0T>\Z)Œ`$6\'şœ­¨\È,†S\Ç\Ëô¯„¢ûüûC» V¾\ë{G0\í“on@FM7\Ö?ÀZ]3y¡¸™ \×)œ\ê‘\"9$\àuhA ¸jÊƒ0_¢\0«®+\í5ª¦öh>\ÊA}]ûH3CÅ–\ĞÈ¨/º¬b/l5Ÿ9Zü-8as\Åjf\Äv%\ê@V¾c­­\Ú\ÌË‰¦¬öók÷K»\êlN\ìH›b\'q)ù€\Ä\İ¨±†+iD-0ö–\ëH½ ıˆ\ã9«j÷ôœJ’!«¯s°M‚ó?ûnÔ@\Óh‹ø1(¯\Z5\Ã\é^\ãı\Ã\á¬\×[(†zõSf:?ûR\Ó\Ã\Ç • E\ØÿS!ÿ¢ÿ\\\0¾¸\ì¾eø3£{\ãQ8¶§ô\ß5°óòó±\Ò\Ùp¨k\Ñ|o>TXÂ›¢³@Y­M\Ñ&ƒ4Z¼$òÀ¶\È8\\\ŞiiI¬WC\îOÛ¤¡\ÎÃ‡n\È<\ä\ìe},kŒG\r	ˆ|\ÏU>†_U>\ÚG”<\ç]§š—_\ëÿJ÷7G T·jsÁ_+\Ú8v\Î\á=Áñ–¥É•\ÏBS%cfğÈº\×y\Ş\Ú,•†lyz\0ş¯.>µşÀ	\n!ñºr‹šE~ÿ¡aWòùÊ’ñ°ıø¹%\Ï@ùšP½\èHÉ±³œ„N»s¿Ho\r]®¨cJŸö\é3\Ü\å`\\\'•ò¢>Yüñ†H/ª~\×\â1Q\ÇvË·\Æu[\äŞ—tš\Ú3Æº§Añ[y‘F\àhl\êgğA\İwSš8OB³\äÌ—=Å©:Ê­N‰K\ÅyğZ\â/Áñ\î%G|K`O‚@y{84°ø\îŠgÀ—Y\Û\nA967±|“\"\ï\Ç\Ì\àŸYŸ‰J:L\Û\ä}R1¼\0|ñºóW-o\ÑöP@\0Ú©ÿò³ş‡\'T½_ø4¾e\'‹e\'\ÂprKY†ÿ\Ø2öLZñ@ø\åTş¹\Ò;¡\Ø\Ø\Ş\0\îí–­¦ş\ĞbR\Ö\'‡ \ÃÃµ\ïMóB£¢4\É\ÕQsmcC=D!\à\æ?d€I«*\È\"·b–(‚\äR\ë5f\'\Ô=ŸüŠ³Ô™Ÿ\\\ÇQŸ(½Ô·‚\èÕ‰%\ì\Ûÿ\0òGz?„“÷”5¯¼šøÓ§¸\Ë \å»Á\ì\ÛRcoCğ\0Ğ‚?İœğ.\0¿£m\åD\ÒO){à¬¡\â¾@]ø¥\áùW\Ënƒ½;\î+».4ñ¿\Úñ\æ\Ê=ª\0ùI\É\'\î\×J\Ë6S1\ä½\è\é\îÈ‚½³6x^ƒÖ«³)[ \áe©ı]\È\Ø\ì0Y_\ãx9Mj‘\Üø\0¥?\r4ï‡­»\Î<T|9È‹Å§…\ßBpv¬Yb s¢o\Å\'€¶Y;Å³,ˆ\íMÄ¡´O\ĞIòÁi‘q¾)şŠ\Ò\Üõ­\ëÉ®¾Ÿ\êû£ş\ê\â\Ğ\Ñvp\âe°\Ú\nŠ,ş\á­pø\î\â„÷\Ø\á?wKI(½?X;r$	óg\Æı S\'ª.pZ\Ş0¦@\ZIY¿„\ÔA¶\å\'Š\Ä4 ¹\È\ÄS\ÓûOp`Á\Òe¢;…\İÀy¥ıf\è\Ü+\ïPú\"p­ML…P\\7 „£`\Ë67\Ä ouò‡\ZöH=\åÊ†\ävö\\ón›ˆ2q\Z\"+M”~P¯<\Ù\à¼\ä\"i½äŠ/Ã­¢\ÏA0]™(VÑ‚b\Ğ\ÚjOi{ASxˆŞ Uğ7\0\Ï\×tÕ‹…\"\ÓÖ±b\Ï(E\êv\È\ß\ïó{Á/\æSúlÿ\è\ìS%\ÏÀ™z¥ ™E+!C½)’s=tx²vûôYĞ¼ óDr*¤¶±w±\é\ÑMœ’…•<ªıGr¤\ê\ÒEs\éO7°|`|\İp9Ô¾Ì½\Úş\ÔŸ²ÁùJum´’Ã‘Mù4ñVb”¼,Œ<§Ÿ.\Çœ{\Â	Œ…\Ü|\ÏOIŸõ\Ã\nÃ‡ ½$<ü\Ü@Q¸„Ú¤ñk\î\ĞV\ÎPü\Ìi­´cU#F\Ù\ì:€ı\ï/\ÊxAó%O»K;%‘‘·`_\Ç\Âôrv>r~p\É\Õp²¨\ÌV\ÙB_Æ®Ly¥4E¤Aò \ëû\æ4M\Ë8\ê=M\r\Ş\Éú®=\İ\ä…\Úı \ç¥õ\×e€6Srb)S ~4Ur>unI\Ö4Z—¦ºZ@»&9©Í¡íŠœÔ”¹P÷Ë”ï³ \éy\Ó8\Ã¶\nE|M\Õ\ê\Í\Ú­û•\ÏÔğª\ßi#A{Yk¯\İ”Uï¦¢û[\Õ¾6‰•l\Ğwñ£\ÊUPüLÀ…ı*{…’¡¬Khvt\"]±[í¡´U\à\È\"8¤µñ>»û<R¶N¼UÚ¯ò\'´Œ\İ\ïô\ä\rVòûOVù©N.“^\'\Å{\âµ?o~Zı-¥\ì€\ëN5\Í\Ì]le­w\\»¤i(÷m\èd\È};=\êM­\å\Ü\r«’Y\ëBÚ¤¤\n\ë\"\ÈÁe´‡FŸ¤OsÍ‚z«Rú9ñ‹\ãskK0ş(¿/!$]\"\Şó\í†l9æ‘†L9†$‹˜LÕ.µ¦©\ì\Õ\n)ƒ„¬n\Ñ\Æ@ùİ¡\"3\à@\áS\År\Øy\îü«¥\ã\áØ–Ò¾>+„Ÿ_—˜™ó­ Õ”\ìş\É}¡%\ç\ë” »»\ë-\Ûl0›\ä}@wQLşøS(RõN[j‘\nr@Z*ZC\Ê<{¾\å4x8u³\Ô[œò•s:¸¯·zL³U\Ë\Ä*F\îˆM³™#Q8Q¯t~eŠú?\rgB´–\ÒL\éñ\Êp-\ßF[\Ä=P>3´62\Êú\çG„€/\Ú\'\Ş\âQ¥½\Zn\Ôò-ˆ\Ùô]@§½h\0¢\É8øu[\Ç\ßù¸Ù¿¯®Z/«½NG\î\ï]á±28T»xp\Å;°ıÂ¹›KÀ¡‰Ey#\à\Í{ciÀGUsd®–¦&\Ğxvº\Ïı\\vO½›2wC\×Fu§d>\rN¤>\ï\Ê\Ï\ÛC\æ7\ÉÛ¤»A\ÜÁ&^1I4\à *]/¾•4\ãlğ\ä\Û|\æ\í\àz\Ğòi˜\Z¾?¢\âC†]´‰œ\É ò\Ä:°¸Œ.\Ël£OşL\ß\Z6\Ë÷\0#¸ªŠ5z\Éô¿v±\ÂÓ•\ÚH­T\Ş9\Û%\î,„ò&¡g£_C¼•R¦lºP—¶ Üª½©Å¡\Ğ[yC(	öõ(–×‚\Ü\Ï\r:\Â~‹\Å¶\Ó\Z\Ã`\Ü#J\åüñ\Öş\ÈI\n!ş¥:_\í\r‘ñK”\É««ôP–€¥µ1W\Îg_\Ë\Ó^0:\äı\Ò9gJßˆº \ïoˆÀ½\âf\" \Òq°\Ä\n¦‰Àšb|L¶\ëM\'\äA`‘\r“\ä \İ.‰t\Èü†\Ñ¶›\Í?‚;Çšk\Z\r†fò\0\éS ø\Ë0\ÖtSı&ª¢–\Ì\ã¼£\×\Ä\íp|mir\å\ØY\çüş\Ò\Åpğ\Åó*\ÒÁ[;<%ú8f™c\Æbh\Ü+\í]÷{\ĞjMö)û ~³”şN\r’l¦†\Æ/A,Á\Ä€ôÿU-\êªJ\ÒÍµuL\Û\ã†»\Û\Ó \éqhpC\ê*gS8RRõîƒ²÷Cõ£c!¶]™¥ªp\á¿?ì‚“Ÿ—•U\î‚Se\åoû§€u–q­ÁŠE¦eÃ…û*?\r…Šg\Ã_E¿…D7\å¸z3X¾766d‚\ãs]\ãp}nii*÷e¶›L?€;Ó²\Ë|+\Ø\ë™†÷ÁpP#a\å5\ÆYÂ\ß\İTÖ¿€/>\á]©\Í\ã+\ry8}]ùLÿ\ØUx\î‡\Ò\×a\ïeÊ†Á…ü‡Cõ ñ ú™\Ú’–›“ŒÃ AV\ê\r®:\Ğ-¥î’Œá²©õe=MNß®^\ÖN¦=\â+1,ZSˆ‘\n\Úª\Êê¬\ÚoUİ ¥j—ƒòœú£v”\Å\ÚX\íhû´Q\Ú\à­=×ƒHò§Ê™\Òyp±Ø_ƒó\ËIÓ‡`me\ì%\ïñ×³x·jú¤ı®\Ìg3‡ º/±A)‡¢ r\èK(*Ÿ	]e¿„\\\Ñc ŒWo\Õ\îó%ª–£\í†À›±uññpªv¹ğo‚½\ÇÆ•M€¼=\îû“V@J\Ğ~Á2’»\Ø^1_\"Œ®\éƒş\Ìf{!¼0nUÂ™µ\åoû_‚‚•YAÄ·(Ó´g v÷JûP\È9\ç\êj— ¹\Ø\Ö\Ş\Ü˜\ÏM4\ÜJ´\ãUË´´Ÿª\æ,cJ\"_m\áñ™\ÊˆLHŒWN\0.\Ñ\n µ—½³ed¬NšcuB\êk¶¦–% \Í7\Ğ#Wò\ç™{Û®¥3”€\Ú.|\ã?\Zû-lZ\î‚ıù…›\Ë%(´TV\á*i¤4rmo“ú@\Ëo²r“wC\ãÜ´O\\ƒ\ç]\Ûjó= \ï–\Ì\â& ‘\èR½©\Â\ï\êFÿ/»8<†\Î4C©ä–¾†ôlG\'\ëHhtS\Ú<\×88|g\ê\Î=p\îC\ïmP|W\àşp1x\ïw‰n‚S7—\ïô†_Ê¯U:|\r\Ã\á\Ø ğí‰¬‰\r†“_••V¶…\âÅE\á+ \ŞYùJ]–ú†;\å\ÇÀ‘b¹\Êt9¤´·}fşjuwoHº\ZS8GA\İkR\Æ:úCšÛ¾\Õ:¬a\ãC;NR\Æv HÁAU şœ¡>\0_üƒ]£\æÄ)§\Õr(x¤rmhü2\ãüª\Ò\ë`{\ïs3J¾‡SÊû[A8¿B™\n\æ\"\Ãaùe¨U\æZ—ô\"´û©–œ::÷\ÈÛñ44^‘ş¬k¸%\ë#¦ƒ ]-ö\n;%œØ€puù‹“\ßO^\ãKôvŠ_e£BF.²W‚m\"\Ë!²9±D9\n\ê÷LÑ\Ó¹³\Ü<¬¯š[Af™c‹m!¤\ì¶õ´\Ìs\Ã\ëò`\à6:Ğ¤¦O\×\ï\È\Å\ì\Şb\Æğ2TŠ\Ü?ùÙ•=B\ï\ÂùS\Şw_€/\Z¾:š\ê\Z­¹v¤˜0±HÇ´š¤IPşapwôq8ôS\Ñ\Ëo@ıpÊ»\Î-Pk«û^ûp­±|hº\rı¤Ó¢/\ĞU\ä‘Á\ï\î‰ö¿\Ò6qš\"ˆ/R²\Ô(\ØUymhl»\êln\ÉP°Ü—ü\Z\ê/L\r»\êC\Ç÷sç¦½\n-\ÏgE“‹Á²\î7\ÂN‚=^- İ£½¾~‘±CPöiğŠÈ¥P‘\Zªum‰©\Èx\r\ä½\î\é\ìA^\Ó\äÁú\àh\Ë4­±Xh\\[\Ómô›\îU÷‡\Êw¢Kb\ÏÀ\ÉYe*‹a\ï\ã…\Û\ËÀ©\í\åÊ³ô\ÇZ%¾€ô‰IQ\ë^hxI\Ú(—šÜœar×†\ìrWKû}`,’MR¸SL¢)¿›ûLz\Õ2L\éU¾\æ°74¥GA]G\Ê(g;h¸4õ¸\ë\n8v¤\ä_(¿;41z\"ùñ+• ­ov°7\ìvö­’o\à\èÒ’F¾ |zpOô}\È±òÖ •G\"ucµ!¾Hi¦\Öq?{\È\ÃF¹­´œ«-\rL\Ï@­®~ö\Ğøl\Úb÷}Ğ¼y\æ@\Ïfhú`¦Ã³\ê>—œ\éH‡”\á¶M\æT05L_Q\Ä4Fğ\ë²\Ò\Z:gÿ|\0>ª\ãe…–ª-‡’k‚\í\"\ëa\ß\ÒBK\ÙO°\íòs/—À\Ñ%w{_ÿò\È[ñ. =@[\íp\r¶¼hò@\ã_\Ò\ßt½\r—L¬M3\Ó7¸KÁ}Ú²\ß<\n¤„U<¤ş²\Ë\ÈsL+Á‰·\ÕU\Ú\"(.œ<g\İ\å\Ç÷Áùl\ï–ÀZ\ë¢d€¨\àNá‡¤µ¦ş†µ[\æy:i\äN6:ö@š/I²\Ì\0\ÃH\éœ4øT¤²øOÌ›ÿ}]õ\àë“¨«¬‚’‡/‡§Á™™\åkü½¡`}e\Ğ8Y\â3@lšø\ì3\'—‚(\Ó\Å`HôS}\ê³y$¾K‰\Â\ÙÜŠp¨MQvÅ›\Ğ`Q\êIgjÿ\ân‘\ä\çDK\Øt9H¥„\Ø¤	{õ¶y¿K¢\'õ\É\Ã]’A¼\â²øÊº#‘!°ûhA§²÷\á\äOe\ëı™]”8¤|–¨a¸a-4›˜\év/{Ğ”i¼F{\ZBtv\âˆ2\nİ•\rBG¡`¼\ïò\Ğ(M‰\ÏM,‡ºÎ”ŸAh±.ó”§7\Ôı$9\Õ!u¾q¸\áy\à~.cxM·\Îo¨¢j»S­©v\ÖŠ\Æú¯\nï€£+K¾ñ­…#gŠ»{³¡|R\È\İ\r²OZ+.‡ô3r\ëhğPj†s:\ä=\ç)N:\Î–ŸŒ÷‚\ìe# hş¿:ğ^$Wy€\ËhF¯ô¤@fS\Ç[Ö¯¡iRF\'7(½¾\ÒùY¾‚\à(6~ˆÌ…ò¡¡\ÃÑ!\Ò\'^¬d€\ä–rD.„n‹­KL‚ğCñ®‰® fj^ºa¶øB<!†\è\ç\ÊIµB/\Ç\îHt\ï\ÜğOÑ‡ \ĞT¹=\ÔN¶.\ßV\Ù\0N6/OTö¶\å99©Ë¡\Å™;’s!GvÏ²\'ƒıN\Ó9C;â”¨tuşò@ÿ\Ç<\0‡ª\×Í½A\'\î‡\Ê^‘á±\áh d¿w6lŸt¶cÉ•°\ÏSğAy(ñ>,€\Ä\éª}5-«Œ\×\ÉYSË•f?ÍšeLôX¡áœ´q®lH\Şlkc\î²]:&.\Z‰+p\Úÿ£YZ\Õ2„{p3|şH(ú3¿¤$\ì{-ºº\âœ\ë\ä]|¢O&ö*q0e°K¥½\Şõˆ½4ÿ\"3\ìi\rSRW»¾‚\äú¶\Ù\æ\é ºó9€z\è\å/Ù£š\Ä\æCe‹¨·ÁS…)°\0?\\ZRù*\\ø©²4´bƒ\Õ\ÇÁ”n˜*½\0Y.§\Ïf\0i±tL¬‡\Ğ±Ş‰\ãp.\ÅûD\à=ğ=¹+&\ÃñJ/©œ\rGf}s¡Á”T\Í5¬\ãùò(0÷4ø\ä\ÓÀ( 	¿\ß¿ñô X\ç\Z\ï7\Ü\Ù\Âõ³\íC\ÈúÁy¥\í ˜òjù38ñu\Ùö\Ê<0X\åÒ—`\Şn\Ø$[A\ëIgm7Ô¶¹›$¥‚´N\Ä\ÄR8¿\Î÷T\àmØ¹\éü•¥OÂ‰gÊ’+\ë‚\ë>‹Õ´:\æ\×Ş’ş\\²¿öş´lÈ™\åú\Ù~\ä}\âE\Ñ˜ü\')(sqŠ\ì^>e#D\ïKÜ¬N€ük}[B*œZ¶µòC8\×\Ú{yğ9ˆŞ›X®Ì„\äm,\×AnS÷$	\ê®L\ïC\ê9û³–i`l--•Ó<‘\Æ€?T“\İÅğ|¶ğ)\Ø/550>\0õ×¤\Ş\èA£~\é\Â5\Õ*\á»\Ê+B·E@87Q\Âó\ã?)A¸™„Ô´Ëµ‡A\î+yE¸Ş³˜ŒaH\îfkh\Î[,gŒO€6Hû5P9)zelx†\ë\Å^€\Â\ÜJW\È%Gƒ/E^…|³/%8\Z\nú~µŠ¡\ÑË¡ı \Úo§ıõ\ÒSrp^iYjZ² @\Ü\ntu\È\ä7»Ÿüıø\â…\ÜK{“Uz!\Ö:QN\Å\Ëûú7\Â6\Û\Ù%K`§ñüû%S\à|–¯8ø*D$¦*7°‡“\à\Ü`Yjzò\Ö{nt¼\r“Òº¹FC\ÆfG\ëH0l8+¿\Ì=ˆÿ\Ç{¼˜ôe\áŞÀW\Ñ5ñ‡\áDrYWÿ°\ÇY°¼\ìj8|Oñ.o\0*Z‡—F/\ÑE°B\êf;–\04)M\ï\èvBó¹™a\ÏT¨\Õ\Âı½=¬I†Wı€“\Â\ÆÀŸ%I\åÿ\ç\í8…W•÷\Õ{sÃ­\áø\ÒÑ¾\á”Z~°²;ø¾Lıb‡\ØÄ\à\\nq™6Aı“©Ÿ¸&\é}ùi\é(~303¬À…\Ùş¤ğhˆ-K4R&C¯rZh:œ°•…*58İ°\â[;\Èy\Í5\Õ~=˜Z^’[ƒ\ãÀ\éwy†.u\É\ã\n¹\ä„Lƒc‚\í[hdNKw?G\Æ_\å».¬ñ\ç‡Ş€ãŸ–~\î{X¯\ÑFByr¨u¤rq¿”ôHª¨%®…s}\ÂşF…½\ÊGBğ¥Ø—ñzĞ¬A\ÆC#\Ğu|\İiS Q~úz÷=T`;Ÿˆ3\Üˆ?IÀkqP—hELo,\Ò6ºòoğ\Õ	´„óo­\àeP¹\"\Ò*v¨Ojû¹\Ü\ÉÖˆi*Ôš\å>cj\Ïu\ç\Ú{C˜/5uiŒ\Ø\Ä\ËÀ›U5©ÿt.\î|3\íh\0\Æg\ä\Òq\È\Ş\ì¼\Úv#´˜‘ù³gœú±\ìJÿ\ÍPxKe¯`C¸°\Ô/‡€r…ú˜V\04ªZ\Ç-•‹\á\âVp–[›\î†F—¤\Õq]	\Í\Çd†’\ÏC\ík\Ü7\Ø\ÍÀdF‘\ÅO\Z…MpfDùİŸ\àT»òõş\İPtµw\è8®œú\nÂ‡\ã÷+/B°_¬w|/„›Ç›&úB\â3µ»º\Z¦§.r5÷\r\ÖgL\Ö\ãaª’¶~ƒÔ¿ÿ\ÒùF;\Ìyˆ%)÷ªoCÁ\0\ßMÁI°\ë\ÛóKKa{\Ù\Ùû‹?ƒ“GÊ¼ş \Ô.–•ğ‚ö&x\0\Ä>a`8?3Wš†Bö/®n¶\'!»›sm8®6\ßj|DW>g\"`\á*d\àâ¬—\\ız±\äa\íV@dY|¤²\Î®ø&°\r¶\ßz¶gñÓ°­\ãÙ´\â&p\æûòşs\ë¦<¡\Î\×!‹\Åô4Ü›úš\Ë	\í\Ëj\å§N€&G\Ó¹Mü¥mƒ9	\Ä4Ñ‰·+\Æ\ê÷ñ\çV]\ãY[L&€÷ùğ‚\èF8ùT\ém•«\á`Ó¢^9p~”÷P°\"\İâ›”·Áj5v—_…\Úı\Ü7\Ù@³%+İ·‚=nöGÃ¡¹E+‡c™¥ù¾; ôD Tù¼W…;F?€³]¼£\Ï\ÂÙ‰Ù¯¡ùW™OE‚\ãó&\ã \"\Ô©¿\Ë\0l­ºA‹+ùŠi\à\èd\éjº\n\ZJ+t=\nm\×\Z–:J›„³\àĞ¾\â:\Şpdi\É\å¾k xJ\àx$’\ÇØ–›Ş‘®Nğ\ÍO\05[\ÛEwhT–\ær… \Ëku,- EY\æƒÉ¯‚\'\Ï\Ú\Ët\ÄhlXÿT#F´§i ‚’‡ƒ\"\Ó!ÿs_‡P2ú+†\ÚC\â.u¼\Ú\ä3\âIQµf\Í\ØR\Ë\ìû,»Àó¬m\Ù\æÉ†dù(p—Ñ¼¦\îw\àbvôh\ísÀv\Äh1¼õÆ¥ôw„¦\ïf¼\åÇ·•~\î\Û\n\Ş\ëÂ“b*\×\Çú&®FóÀp4Z|)\Â\Ş\Ã2ZŞ•eK¾\Zzš\ë\Ên¾NŸ\é\ÊÑ’\Åb(=TgW¬\\û\Ç_\ØT±\rö\r.¸¾\ì8ò~I\ßBğ­L‹ù`ÿ®+*ºB¢‘\ÚX3@¼¥\ÚA \Ö“Ï¤7r?\î®\ÖS.ˆU$øœ_—3ı‡ü\İŠZO±*¡W¢­á »\èÓŠ°U=sWñ*8t (\Û;¼÷‡¿%GûJl¬\Ê\Úı\èM˜\Ö\Êq©1X—\Z¯4ü\ÖLc{Ã`ğJ\×K7Ò’\×~İŸ+F U\Ï9ª%\Ú!šA\äºÄˆ\Äp&^1;P¶\ÜxfN\Ñ,\Øøõ\É\É^†\ÃÍŠ÷xs¡rJtuü}°\Ä\r/\È\×B^/Ï™¤Û¡í•µ^N=­\Ù\İSAv+\×+öoÀ¼Å\'ŸÆ‹v\Ü\nüÙ†–ş«‹C1+´}œ‚\è\ì\ÄJ\ånÈŸ\äû2\è…CÛ‹\Úz\ï„\ã\ËJVUZÁ7&òI\ìS2\Å\Õ\â0$O²\çX&C\ã\Ö\é6÷|hn\Íô%\0\Çró£*ŸŒLŒ@\êûV\Ëi(¿:\Ô;Z‰Yj;u0ÿ\ä/_\r…*E \ì¶\à\Öh-\È~À9\×\Ş\äs\Ü.‚@}ÀYÓõ?¸‚†\ä€\é.\Ù,µ\Ú\İ\íc \ã;¹\åi!±\\©\Ş\r\Ö3\Æ†§\áT½ò[ü} ò‰\Èã±¡\àoµ\Æ\Ì`fX\'7\0\Ù6Ù¼\ê}˜r›óY¸¬w½™İ \İµD\êb\Èh\ìP­\r@j%\î§·°R«¦¡Tïº¥¾§~ªÙ¡\â\å\Ğ\ÑNPöLp[\Ä\Ş\ã\á£m@í¯¹¸¬\ÅÆ™\Ò\ëTn\Î2\î§Ù²Ë´,1\Ãs†§@úX\äP!Rª¯·\ß\ãc\ßo\ç\âı¡H\Ãò9i¶h\nY;+l\ç¡\ÙşŒ¸\'N÷(Ÿ\è\ß…½+G„‚p\Ş\ä[4Bü¥³\Ú=¥_¤Àqµ9dlÙ§œw\Øï‚º\É)cOA\İ\Ö\ÉóœC@š\'¶ò\Ô\Ú\æe¿ò&\ç:®‡:½“‹½ v+\Ùş9xF\Úvõ‚½G\n\Ş-û\nŠúF…\ÏÀ;.Œ©¸	\Ôı\ÚVm2\È&\é*ñ=÷\É3¥+ ÑµiO¸\ZC\Ònó\ãm\Ä2\Ì\Õ\Û\Óş›ıı8K{š%\à\İV£»áŒ½\â\çÀd8=½¼§?*>{££@k§õ\åa;\Å\">Vhg8\r|Yµx$òQ¢XI‚\ÊÓ‘Æ±>\à\Û™;\áñZ‰G@^!55.~\Ö:\Ó\Ô4­\\\ë\n‰le–\ê\ß[%§¥ò{ıSa\Ç\Ès\Å%q\ØX|\ê\Î\Â,\Ø{¬\à|ù((‹‡fEgi“\ZA\îeG“.@û6µÏ¤}\n“soI\ê?’\Ò\Î\éG=S1\Äs„yªu|¦\Âu1«ühUr›ú¢6]“ tXP‰$\àPß¢\á\ŞÅ°{AÁef8û¨wYÀ‘ùñ\Å\ÊBp¶µ¬3B\İk“§;FC\ë\é\ÙS¾‡Æ–ôÉ®`#G¤†pòö²9¶!µ‡ı¤¥œ¹¿|d\à\rO_“h¾¤\Èg±”|\Zh¾Jö?±•JE€iµ\ÜYZôB\"›_o\ßÿ\Å5]\Æ\ãbOaa)8\ÆXrL QY\Ú5®/Á\è%I@\ê›\İr__f¨\Ü\n\å=ƒwGj:…V\ÚX°\ï1½l\nı’\Â\Ö[¡ÁşÔ \ë^h².c‰»1\Ôn\éz\Ü>Lı\äµ\Ò \à5\Ñ\èOx/\Ú\ÈI.@|¥º@½\"»+•\'!\Ü0~¯²	\âÍ”\Ñ\êq`2=µ­`ibxQ\ÎÇ¥fa¬T³\ÃX¦\×\å)\Ä q/q ƒ>2ö7L\Õ%=·Š\0–\ãHC¨ó~ò2G;hv$\ã*	/-uUÁ;=|w\ìgğ½¹/ºÔ“Ú«ÚxO¹T­\Êv5Um\0\êl­)-@\Z\'¶±¤y\ÒC\Â–b”§ù±¤\Öû!)\Ët\Ñ®-L}Á±ÁR\Ç\Ø¬•†‘°\ã†sW”\ìüæ¾’\àp8Ô¾\èr\ï06”K¥\Ù`;dL1|¶y†·¡Î„”G­Á:\Óğƒ¼xX\\Aş\ís\Ãˆ©\Ş\×Uòˆq\0\ìMóŒ!­O\Ò`\Ëf\Èlº\Ä\Ö‚mb\'\âB$’¤!ñ†rN½\Â?\'J”e\àKô‰}\'–”¹+{\Ã\Ş\n\æ–?ÆŸå«¥‡ mƒ}–e8Ğ•‘\âJ7H$\'€Šs¡»£\à|g¯\ZôÀş\ã´ò\à—}ù›Êº\ÂÑ¦%\r½\'Áwcxf\ìk0{ä·¥·!\ï“ä™\å\Ğyi^ \ãv\èşu½Y6hşI\æR\Ï\Õ\àYm\ëlNyŸ”!nšˆ¦¸kújş(Õªzu´2z@`aly¢ª\æk\ç\Êb\ØÓ£@-[GsKnõ€\Êg\"ób\rAª-µK!\ë\ç\Õ\Öbh‘œ9*¹4“Y?ùd\Ís³}ñ•\Ë\Ô|H¹Ö¾\Öò#$?hı\Æ\Ü¬u+\å¥Î»	ˆf&\ŞVöBù\ÌĞœh%T\\®\rC\è‹\ØGJ\'H\Zm\Ú`|\Z\Ä\ê3\08M9\Ğ\ÎPŸ¿\ä\n`ù\Ï%ı\İ.\âùZ˜À=Øšb¾\Z·L›-; m·ıi\Ë\Ç\Ğ\ìƒ\Ìv¡Pùb¤$\Ö´#dr#XWöÊƒ§›\í3³RŞ³²´\0\ç+–\Ó10\ä™À‹b\n?{\ívqb\ï*ß¨»!±TM¨WAb†z—\Ú¤{«+â¥’\ÄU .9¥\'Àv\Ä4\İğ)Ø†›œ†\æ`\Z`òd­\é\Â4`Wõš\İß²T=˜HO‰Ì‡´Â¤Y/4:”^\Ç\ÕZ¼Qö\ç,t¬lôBø‰ø‚\ÄÛ ´S\ÏjÁ\ß!úyüf¨n\ÛşqQ-\æ…Ä¥ªM{LGD‰¸h-\Ü$ƒxÁ»`\ßj\Zf(:\î\äMOÀ|™\ájù04—Ş‘‚r—:A=±\Ê\"5	ŠWû\ï\Ûà°¡øf\ï	p00-\0÷k\ÖoL[Àş±¹®\ád÷sVÚŸ\Ã)©L,\êW|ü›\çÿ\î\0,\âbc ¹·}•e´š”<\Äs¢³¡V\ÂıqR¨x/tSô\r(|´²U¨ŠŸ¬\r_\çnòF­¡ò©È“±W\á\È\á\âm\Ş\î =¤Å¸\ÎMõ\Î	œ†´{“¾±0\Ü/m–:BhBÜ”¨€\ÒM#oÂ¹;¼‰À›p\ê¡òyşEp\á³Ê¹¡…ú)~<QœS-L&¨78%Ï¡@Ç•¹×¥w„K\ëÕ½\'K…V]²—$?é¤—­§À´Y\î$\rŠ&Ô®:Ôš¾†°•\Ãı<±7qòñ~¬{\ê\æ\×+-„}\n,_…\ÆÊœP”{´—µ¤n²;-½¡\ÉÂŒ·<ƒ¡m\ÓZ‡SB½G’?rL…¤#&»q=„·\ÄO&ú‚s‡\åˆi\r8Xë˜®s[\ÃA¹ˆg\Åp\ZC\â^UR‚ÿ¶h,^\0¾Ñ‘\ÔøöŠM‹\ß\0±ı\ÊS	ˆÑ¬\ä]\àMÑ‡ ·#„¤\Ş\ârQÌ¨úúzN\ç\ï\æ®\ÄKµ ƒ\íœ\év\ÃK`	\Z—\Ù_„Œ\çm@1¨µÔ«A›HS\\ =/f‹3`h$õ“\Ş\0yº4Nô\0\áùğó\Z\Çø‡.øï²—\ÊA9¦ö\Ô\ÖA\â}¥¿:\Zwª«\Ôz \çºƒöûi	Eİ¨\Ş\âmn=@:*‹\Ş`zH>*y€[@^M\ÔÀ¢;-ÁZ\Û\à7t‡\Ü\í\î…IiĞ¼^\æ¡\äAp²E¹ğ7‡òxhpôr(,\Ü	•©_l2¯\\Êb‡ÿ\Òğf¬Œ^o\ÉW\Û^7	x\Ûø5\'¨£\È%\rL?\È\'¤!³\Ø\á²6‚\Ö=²óS.ÀhR|<øNEZÅ­:[\ß×‡šD?„E,\å\Ë!%lw™S!µ\Ü~»%\nI™¦\ŞÆ±\à)¶\İm~D•‡ùu³¡\Ñ\ß€òCÀ5\ßr»i?4\é“>\ßm´£I\ïYƒ\Æ\Ñô°»øÎ†\Õ\èA8º¡d©\ï]\Ø}[ş\çeEPùe\äx(\é8¾.,õ/ÁI±‡)p\ê`Ù®\Êd4§¿ù¨”#ı±óŠA\éş¯\"–ø—\à+Œlˆ‡ğ£ñI‰W@\Ş&]#¼Y\×1\Ş\Ö\ZYÓ®qõ;r/I\ï\×\ç‘>š\ÏX\ë±C\ê3v³yfK\×I€Á\Õ´?\Èşœ¿­sX¾h$%>~U\âôn„½M—¿§×—÷÷gB¨ \îMó•òıòs¹\Ïñ–u\äı\è¹.©¤\'%uµ´e¶¶Dû¼ŸG\ÖÄ¾‚ø¥D}\Z”ñ\ê4õ5û‹÷EK_Æ‰(0\ëD\'H¼¨ŒÓŒ\à?\ï\rÂ•/„®„Sw—óŸ\à\ØO‰€\á|C’:™^4\ÌO}\ÛLs>8\î5\ßnz\Z¤J\"\ì\å÷´ŸsÕŸoFU¶¥¨‡‰©`,R…™R±x°2O’yhô|H(cƒA»¸\Í^\0…85?\Ôş{Ó–Ú¤€lO‰. eS›% ]®M`;\ÄQ^U»=µ\í|\r\ÑÖ‰O”,\ßŸœ˜-şºò*h´\Æ\Úg€o9Î¯= ıqıÿ®z\ÄIL{x<Cl{\Ì\Ù\ĞÀ•6\ßù54Ÿœ±\Åó>œŸ\í\İ\\\0ş)s<\Â\Ç\ã\ß+\Ë\á\Ì\reş\á\äKeiş\Ğ\àÊ´\Ë\\Ïƒ£Â’c\ìÆ¥\İ\Ò	~­ˆxQ‡\ê@3\Ü/O‡\Ì\ÎÃ¶S\Ğòµ¬E\ÉM xN@?¥½‚\ë\Ã\Ùp¸iÑŞ« °M¥!$Á\Şò‚N\åBNkºı:\ÈX\çm{’v˜M\Æv`\ê+Ÿ–Š€Ëªk}ÿ‹şş!\èNUf¬+g‰OÀ˜-;6°o1½l8	\éo\Û[\è\ÊuJ%dov™\í°n4¾k\Ø_\ì\Óø+°¯s\á>m”\ÇB¢¥P~\"t!ºÊ„Dt	HƒE_¼ }/ˆ@g†’<\Ë~ú€¡t›ô1¸:X¶™¾\Ìbg‰\íhò}z÷mp\ÉKµ§}\íW\Ôz:u!\Ô\í‘ò¤s$¸÷Xw˜yªX#vSõÄ”\ÕóƒºÿBë§½\Ë\ZğoöˆmƒóWøö÷Áùµ\ŞÇƒKÀG\ä\É\Ø\r M\Ö\îgˆqb¯€ö^Uvzù¡«£_Ã¡]E\ï/P°«r[\è0^^–¬ İ \Ğv\Â\éSuıip\ác¿#œ\Ñ\âD\å80‚¥\Úw 4\Ğ\ÖhN¨(}\Z}\Ü{\á©ò\Û!ú`\â5\å°}lº\İP\Ìó\r]d\'4¼4õ”k´H\Í:\îY¶\í¦N†\Õ \ÕG%?¿“\0\\\İ\Ğ\ÕW_ z[½“U¯P•¼ø7eşz~û\â\ïùkú\0~\ç†ÓF`jo/õ\ÓZù;ùJ0µ‘\Ò4M°r´Ÿª–I\Æ_T.U³ÀŸ\İ\ß\rş÷¢GbŸ@dW\"¦¼ö_\ÌFc¤úTt­\éƒû¸Kt¥9X\ë\Z‚†ó£«•}4:«­\çI8Õ±|€1”4ô\n·‚¢\ë£Â§\àü\ï\ê\à8PQ4¡\"\r\ê\ÖM©pl‚ŒË“&Z$ÿh[d®Rg¼\"\0\ä	~\rüqfs\Ø~6®‘‡Ü“w’C\ë3\Ùy)G\à|}ß™\àP\Ò\'p<R\nŞ­¼Î¤V¼\áo\nûÂ…•\å\ï@^¶\ç1G3H¿%\é°e5¤•%=`BEc*U›Uüa\0®\î\êk{«÷\İ4RD\È-¥\é\"\ìoš·?û„3Àôœ<Bn\"D€g@L2À5Ğ²\Ê\Ô\Ï)ı¶òf(¹:ğxø\Ş»˜ñµJ²\Úx¹*û\Ù8XöJ\r!\évs¡1Ÿ9ºXó \Î\é\ä„h\Ü m°k>4S2o÷ÔƒF\İ\Ó,\î93\Íù¸\í<\Øöšº>\é^ñŠˆ­E)€‚xÿo”\êmÚ¾\âv´\Õ\Ú5\Ü±u\Êj}ˆ-P+k!~‰2S\İ\Ì\ã%Ö€ò¬š¬Í‚\â^Má¡°\ë\îócK7Á\é\åù/\Ó9y£ü:&\ÉÅ§ \Zó\àKï‰•Ca¶¿Q\èÌ‰\îO<\0Zm\ÉÀq¬˜ bpø™è•°ÿ\æ_WŒ‡S¿”oò±TD\ÄH`h.†ğwñ‰]qc¤u\Z\äŒqY\ì/‚ñYéŒ´\è\0¤\×t#ÿşºG«_¯ÿ¸\îT­Ã+Í’sŠe…ñ#p•XŸ3k\Ğt¹A¯\ZI¹Aí©™´¾\àÏ‹ˆ\ß•C\"\ã\âS!°<Z\ï)C\ìƒ,3€/q5}p\0I\Õ\Ëğf‰\ã,\×\"K\Ó\×\Ğ\àª\Ô®»¡Ùº\ÌM6pö\ãŠ\ç?Aùˆ°\í\r\'\Â?G\Û\Â\á9ES+n€\Ú+\Ü/\ÚOB\ÎR\×\nû°<h<-_öoL›cA\ÜF‚\Ùü:\Å\äV\Ì µ @œ\ç\İL¥P¿e\ê8g\Z´8šùhò|8;³bb \ÊÇ‡\æD¿\0ß»‘ñ±ñpôš’V¾\íp\äù\â$o=¨»!e™\ã}ğÌ°­0cªT\"U\0-E\Éÿ|óüóy¾k\ï\â<¥\0,\Ò\Öƒ«¾m\È\ÔÈ°	\ZŒKMs}¶$\ÓÃ›3\Ù\Õ\ßş2ûº¤—\ï^8Ó½\â»ÀóP|i (\Ü‚Y\Ññõ \ê‹\Å\âa°ûLi†1ú¥½“\Åy7{\Òm¡Á†Ô\Î÷¡n«”]!³Â±Ü¶œs,“M™`\ê%\ï•*@¬\Ó\É\í]&\0bğ\íÁşÓ¢U\ë}1T•œ3\È[À\\l8\"—€©³\áay\nh\Ùt\Ç\\\É÷l…\Ø\å5J\n\\™åŸ…¶E¯y™4X9GºE\Úr_1T\Ü	tÂŠ·ªo¨/Büqe¤º\â~%¬-‰Gt¥Y:\Zû\"\Ñ\Â3\ãK/\ÒA´) &\âƒp]‡\Ã6*>\r‹\Z!üt<x´\Ñ\ÚIúnÂŒ¯\é\Æ\Õı\æœ\Õû1›¤:b7¤>ncÉ\ì Kµ‡º)É‡ 5\Ödm4È¯Kª4\0lSŒ\×\Z\Ê\0+H@ôeœzh.m‘V\"!ú	/ù;\Ñı %uÀ¼Ì°Sş²v;>°…¡\Å\ÂÌ¸\ç{8uy\ÙÁJ\n\î®\Z\\\ç^òZ‚/\Ãùû|‚1\Ø}Cşóe…Y\ÛQdó3by\ÓTò\æy\Î&]–-†eòOÀbqWPµúAš‰<`2\ÊOKFHó\Ø[\î„Æ¾ôi®+\àHƒ\âoÀ\é\ìò¿+œ[\íuNC\áş\ÊÃ¡pôÙ’T_}hr0£¶\Û¹w{´$/$7·.4\0Cşùfù÷/´¹\Ø_ †\Ğ\ì¦JC¨S™|‡\ã¤²?n}\Z¥5s·€¢n\á“PvC09\à+±\Û\â\Ó@t›E2\Ø\Æ7\r_ƒ;\Ùz\Èü¤\æ\'ÍµŒ€4ƒı2K¸n¶|lúL7\ÚKıq\\*|À<\Æh×‚VBJ ¦÷ş.Õ­$†\ÒV\ÔójCo9\r\ÜÅ–MwAzy\Ò0ë»l±E\ÍÁodGüD+—(\rA©×¶€r¿\Ò]\ÛòM\ê}b#Hù\â	\íp¥hHh+µ«µ\ÇA\í­\r\æ	` i\ïr#kû¸”À«ü\Ä~\Ğæ²ˆu`ôJH	°/6y\rgÁ1\Ù2\Ó4\r²/qöµ\rô[“\ZX\ßû0\Ó\ã\n{Hû\Äh N<5İ¸º\ß\\õ¤4‡b¤³l™Í®\Éy\æAôp\"¨Ì†z{Sj;g¡¯tJL‚\ä=¶v–W¡\Ö$÷µö\Î`h¨%¯–U\ß\áª|`À¤à¿ƒ³:\éğq\í4óÀ~\Æ\Ü\Ø\àƒ¿¤¾\ê\Z-veİ›\Ü\Î¬¸3Peİ‚õ\"«!pKt\\¼\Ş^2\İ[\\},KM÷ƒ#\Û\Ü\Ãø,ó¥C\â:\È9éª°óı†\Ï\äÀkb —R4\à[\î¦XO˜\ZöC\Î\×T{\n\äş\ì)L\êi§“–Y\î€ó½¼+ƒMÀ\ß)\Ú-^\'–÷®œ§\ìe÷øGA“ı\é«İŸûK\Üt-H	¡Š\0ÿtRÖ¿?\0_sşê¹¬\á\Â¦\Éò%rH>kûT\ÖÀ5\È\ÒÆ¸j}\îng\n¢W\'R”fØ©\îÓ’AL`W€ü™tR<FU\Ş,}\Æ\äs’†ç¤¦\ÒP³9Á{ ­«\ê‘\à[mğF¶ûG]\\\Ï÷•Ãµ`YexJ>\n¹?y\îH:\íV\Ö\n¤v\0s\È\à–\çB™3ø^¤øı\Ñnñ+I<¯¼\Ú÷\Ìc5ˆwD/\ÖjG8j?\Â\Ü\ÚBõ\íH¼ª™Õ¯ 4+61¡Be\İH4¾‚/\Är\â3 ñ‚z½6\Ì?~’¿Œ©„5\êE’\ßq \ï\Ç\äoVÈ¹\Ãy›½4Ÿš\Õ\ÖódôuÌ°\ŞÆ¸\\ 9SUOZ÷\'cUC ·ñ-/³¯%`ZÍ¾\Ê\à>iK\í\ÏYV¿o´<\Ş\ä\ŞÒ\â˜jÉ³¥7ÁsŸ-d–ÀS\Ë*™\0q§˜,†\0€7kú\àş€ÚŠZ¤‚ñZ\éii5¤t©õ4;–qGÀ\éDùvÿõp\î\'¯\Â\ÙÂŠkePòs ù\nö\nö•¥¹Ü./C¦TW\Ü\Ú|Vq²»¸\Æ\Úç‚¥\Èp·¼DŠ˜\Ï@K‘I2öJ=¥\çÀ=\Ù:ß¼\n2.uô³n€”ö\r–M`Æ˜!!üPlE¢3–Tö}goö–R\à\ÂW~G\èR¨wwÊ“\Î\'ÁtX”Š¡@c‘^½\r\å?Dx½3L·\Ñşóaªú\é@¸«†\éI‘<Î•´1ƒ\ë\è\\KSjó—¤\Ör”|\Ğ²#À\ÛUû\ÏòûµÓ ¢/¬şy=\àşk.¶\ß\Ú\Ï€\èÑ„I©\åB‡£Ÿ@\á‹ş;CÍ¡è¸¿nø¨\È-ˆv„À\êhó¸b•\Ê\"õP\Ñ\Îi\í@}P«§\İ\Ê\ÍjH›‰duz/¨yZP\ëgüueœ{Ä—œ‡/):\é\Õ\àŒµ¢³¿„nˆ-H\ä€s¬\Å`\Ú­|\Ùs’…K¿¬\Û>h30\çl\êı9\Æ![\ÇBj¡=\Å\"À}Áz—y\Øgš.¦ˆ«iÏ¯…9t.\ÕSf<®­f;$>U\ßR{A\"_½J\Û\0Z†\æÓº\Ûx@\Ü¢MU®ˆ\ÔH´\ÇA^*Y\ÄdWˆ\'E*0Vt£úô?\ë\âf\ÍL(ø\Ş\ç†Ÿ>yiÁ)X\ÙóÀ\rgÀ¶\çÏ®*Î‚òkB\r\"§ÁxŸl[C­÷BûuĞ±I\íW\Ònƒ-\ê7È¾Ú•\×Ú”š\n9Ù®{>Xo3v’\é©«8LÕ¾e\'ø/\Å\ÏÀ\Æ:§¾¸PŸg\î›}ú¬\ß{lQ¾\ne›ƒ7D®\Ë*\ãµr\\¾´Á³9c`@eKsYpu~“ûkO\ç2ó\ÛÆ§yb0—ı\ã\Íğ\Û`\İK™\"\n\Ú\Ût\áPV¨\Õe[¯¤ª\ç ~™²]]±cJ}µ”ûTY{Ô¨vZk\r\ÊLu‘&A\â#õuõ\nˆuS¶©ŸAb‡ò±\Ú´[ù T“¨„]{ó\ÓKö\Âwı´†­=\Î\Î*N@\åÍ‘»bÏ€[¶š„\îMê¿–¥B\ßKš\Ê}.=X\ïºLxúY=\æ9`\"“¾\Ù-}%.1„\ïxHù}o[¨û«\ÎU®ª9an¥ƒh\\Mcjñ—œ¢?©}NIõ2¯õ\Ó\n@\Û\Ìi.ğ—]Átÿ¤‹\Ù\ÃËµ=œ„\È\ê\Äh\å\Ø?¦ğûòÉ°&ùÈ¬óÃš‡w8w\ß_zºr„›\Ç3Áb1N–»BN+\İ~\ÚLÉ‰§N.ò\îL_	í¬µ¤\æA^-O?\Ç4p¹­·›œ =Á~1¦\Ø\àx\Øx÷©c¬ğEt¿\ítX\×õh\ßü\rPvg0;’òF)S<\ë\ä\æ¤ÿº¶\\T\ç\n\èsO³@\Ş È²9Km}\Ä\Z¦ÿ\ã\Íğg.¶¨ûŸ¤f’\àu0\Ü\"ı \Ã©B\n\0sŒ*—E¢6i vÑ’\0Vam¡V¢­uœ6‘ \Õ\ÓBZOP0@¼\Â6®€ÀUÑŠøµp\áFz¨	$E-Aœ¼K{A)\Õ:ª«€\Õ\äjµÀ0Hz@\ê¶\İÆ‘†GÀb24“»\0÷0–\é€G<P±\ë7J\İ\Åq\ÍK˜\0?jûª^_\Â]Tr1\ÌNA£H\Ôôü/qq$\êZÑ”\Ú`¾OÉ« g°+a\ïM›İÀ‰\î¥#*o†’eÁ\Ï#·BdG\"Sy\"S\ã\Ï*\n\ä\ïñv‚ø)\å%õ}¨<¹=6Šm«\Ã_CóX\æK\É{!÷÷I\n\Øg˜{\ÖA°q,œxN[\ËoñgBñÁÀŒpˆl¯QÆƒ6“q\\\n\Ú4\í9\î„\à±¾ñWÀ_+*\Å„`$–ŸŒÑ¾¢\à©z\0\ÖıûÙª–ƒ\Ñ@¤\âZ` \Ä\Åt‰ ’_\rVb§¸#\È@7’%\'ğI¬\í1-¬m\ÓDùu¹3˜†R\é ˜\"òı\ÒV0¼%\åK\ã<œŒõJ-•› ~’¤¾ñıŠW\Ù‰Õˆ\Ö˜G!üZh#z¶»\î\ïö\ëÔ„ş¸ö[ª\ŞlGL‡x\Üım\İ\Ì/Aı\İ)?:—Bóõ™›<­¡\à—\Ê\Â`g½{0ƒP\ëx£\Ä\nHd¨N\ík(\ŞX^\á®ñû”mP¼\Ğ\ß3|;\íVò–\ï1\Èõ¹\rI*¸\ÂÖ†&D‡$(·Ã¡]EÃ¼‡\àôk\å¯û-~6\Ñ9ñ\"\Ğ\Ó@›\ÎB€Rª>¬Å«i{@ıE{J\ë	Ú©ªÒ·ÿ\ìR`=\0\ëşgoL—\'U¿j\Åÿ\ßß¬\Zº»XPNhGş\ê»S\Ø\ÈÀ]µ\Î\×xN¾J¾,¹†ˆ|\r˜3\r\ßI_tX\\/®iŠPù\ZT“V¨\Õ%W»K;‰újš:´\ï\Ù\"Vı>u:\İ\ÇM´¡>˜\äƒò&\È\n;w\Ûl\Ğòµ\ìa\ÉÁwg¤Ol	X\Z›\Ö@\Ù+ÁW\"\ãA9 ^¦­DšºO\İ	‘Áñ–J]8›ov0òWù&\0ûhs{\ãkd6}a8\êHm;õÀ»!\ì.\n_\Ø-eµ\ÚDû(a\rµ\Ä;<\ÖŒc\ÓÁúq¸Á–¯\rª\ár‰^´\åŸN\È\Ó°®f´%›T»J[\Ä°^jxM¶B\Òórc]H²›³LõÀñ \å\Äs4À2ş\ÎG-\ÃL\rÀ–n\ìhğ\Ñ#\åKK@\È\é\Õô\étº˜SX0‚ô6[ø\\_X\\¦}\Ğ$;-\á\Î\ÃD©©Tu\Æ\'§8\Z@Y÷`f¤1Ä·+!\Õ±f\Êyu”MLƒ\ã½Kó*—À©ùe\'+‡BÁ\ßwÁ«@\ë¥Yi\ÚeœÔ¾5¬\àrP\Çj]µË€	|Á~\àg\î§X\ró!ıÒ¤‘\Öñ®c®µ	8[¾3\Ş\n\â°€‰ÿ\Ìa\ëXW3Ú’C*\ÎKM¥‡À\Ù\Ìr\Æ\Ô\ê.In\ì˜\r\í\ï¬5\"u*„\æ\Æ\'$\Â\àüÔ¼Àô4´”³\Z\'/\ÚW¹3’ú\Õj<`ø¨C\n0µ¦M§\Óı“†Tõ„MÙ†şò\È\æ¼Ç¶’4\Ï5…\'Ròœf\Å\ãS\Ç >H¹KÍ…¸O¹G½Ê‹BF\×Á±ü\Ò9¾\áÀ\ãfVÔ‡\ã­JGú~’~ö‘\Ö\à{&òI¬77\Äú\Æ\ÏCüK%S=\Ò5\â)±\rl3M\Ï€º«’;8\î„\æ3+< ®3y´£\Ø=¦\ãCÀ\Ã\Ü\È\\@Àº?”\ê¬d)O‹³\â·/´T@«³?K¹\ÒV$õ°º@Œf)MÀ>\Ñ|«12û8X€Œ‰¶l071Ì’ü@#\Úp¼¦J§\ÓıKª{Â¢‡e\n˜ß÷K·i”m®ùKp÷±1\Í\05]»n úµZK\Ğ>Õ²´G!’›˜¯´€¼&\Ée« Áø\ÔvNœ¸¼\ì}=8_\ì=˜…*¯%œ\áqq{b,\ÈC¤¾\Â\nn¯\å¤ù.h²1c‘{tJ\Îó¦Ï‚\ÜSp’\rŒ›\ä)\è\"\êT—¶ı§£\éËt5#Bœh\Ú\Ó,\Ø\ã‰Û”\Û!úV\âŒbÅ¬\r\Õv\áki¡”¦\ÛeUjò—’Kz\n$‹¨#ö€tR\ØøhT½^ßF§û\ß\ãbvºü_*M•iA\"À*\0>\"Ä€ù= ¦i\åZWwUfAÅ¶ğ½\Ñ4(z×¯†\çÁ…/ü\Ö\Ğ{\à\Û;_µ¼I™\0R’TŸ½\àJ²\Üjr@\ŞD\×\Ñrİ‹“L\à™o\ÛnN\Ã©¹xh)²ÿ•Z\Ğz\0\ÖÕŒ‹\É]Çµ*)|\ËN\Ğæ±‰ƒ€	ˆÇ¨Jr\Î%4rñX„`«*ö®^N÷­ª0\Ó ±”n\Ú\Ã\Ú9ˆ¡\Ø\Õù<Q¡¸!1I™¬¶\0e§\ÚUû\Z¨G\n06•OJ)`™g\Ü*?–u†\ë\å,¢®\Ø´­\Ş\ÔGük»!\éXW³´¿¼j³\Í\ŞEÿ¯õ™:N÷ÿS½‹•ZUùluy7ù”o³…Ã ½Á\Ï¨ş\rÄ½Õµ\ègĞ‡@»ªšY–ùo¢`N§\Óı9ıõfŸ/>øÿG\éIX:N§ûsõQ\rŒ±\ée\Äu:N§«z\0\Ö\ét:®\èX§\Ó\étº\Z `N§\Ó\éj€€u:N§«z\0\Ö\ét:®\èX§\Ó\étº\Z `N§\Ó\éj€€u:N§«z\0\Ö\ét:®\èX§\Ó\étº\Z `N§\Ó\éj€€u:N§«z\0\Ö\ét:®\èX§\Ó\étº\Zğ\0¢òpõ1#Àh\0\0\0%tEXtdate:create\02018-01-10T10:33:49-08:00~›{\0\0\0%tEXtdate:modify\02018-01-10T10:33:49-08:00\Æ6\Ç\0\0\0\0IEND®B`‚'),('e9e73','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ğ\0\0\0P\0\0\0w\Ù$?\0\0\0gAMA\0\0±üa\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0bKGD\ì\ìtõwwŒ¬\Ç\0\0\0tIME\â\n!3\éh\Ú\0\0YôIDATx\Ú\í\İwxU\Õ\Ö\èÿ\ï\\{\í\Ş\Ò;„\ŞA¢HS@ET¬XE°\"X@AÅ‚)b¥	ˆH/\Ò{\'¤÷\ì]Wùı‘\äx\î¹÷ı\İ÷¾G=\ëó<>ÁH\Ì^3;k¬9\çcŠ¢¢±•\ã\Ç\ë:ƒÁ`0ş4Ò¥~ƒÁ`0ü\'2°Á`0—€€\rƒÁ`¸Œ\0l0\Ã%``ƒÁ`0.#\0ƒÁp	\Ø`0†KÀÀƒÁ`0\\F\06ƒ\á0°Á`0—€€\rƒÁ`¸Œ\0l0\Ã%``ƒÁ`0.ùR¿\0\ÃeÂ„@˜1fLH€†T%\nDQQ/õ‹5†¿>cüŸFFB\ÜX±1Ø°Ÿ°_AÛ¡\ç\é@=¤?¡=Z}±ş9Pw˜	H`EFÄ¥¾ ƒÁ`øk2ğß‚†l&‹ \ë½\ÂK\Õû”şPş|ø\ÎP+\È;\åOô‚-*z•WB\Ö+\åc*\êCNg_oŸ	Š\nª\İ\èı&:\Ôd=N³°Š•ü6C6N–6†ÿc	ú\ï¦&\0^¤‚\n\Ğ1H¿\"1jœ*\ïığÓ‘P\Ø>P¿²>\ä\Ïõõ·‡‚\ã¾\Â?†e`i<6·‘c ®³=h¿\âO9:\Ú@\ÊO®ˆk\Ä-±\Å\Ú\ËÀşy¨|˜\nÅ“\Ò3À\Ú\Ñ°a\Ât©\Å`0.?F\0ş»¨	¼\È\'´aú\n}&E¿ˆƒ‚úö•a8_\Z,\'‚\ÅcŠ·Â™õeƒK7C\î×¾¾Á\×%òI\äU6ñÀv\ÌtN®„\Ø\ÑöUö‹ü‰s˜s.\Ô·9\î4š÷Kü\Èü\Ğ;\Ú\Ûb¿³ÿh_–Ó—&\r„—W\ÅT ;K=HƒÁpù0ğ_^$µ›r@û^?£\ß\ÖH0|²[U”TD\à\Ğ\'…7d\Âş_òû\å7€£³Šœ…s!{IÅ‹WCYZ\è|(\n\á&\êY5\Ä\Ì\Ä¦/¤‰R\Ø\å‡\å\à}\Ù\Ú\Ìv\Ë+Z[\ÔN• %L…+oM’zšU$*IOB\ÚO®\ï\İa°_4÷“Ÿñß‹\Õ@v\ì—z\Ğ\Ãß‚ø\ÇÇªÜ”š•š\\—š¯©N\"\Õÿ\å\ëk’Pt4~K>­¹¿şAL\ã\Æ]ól\ç\ÎS¦\\\êq4ü?ªyS\ì&—\\P[\êk\ï‚ÿDdS$Î•”µ(;{n\Î]›\Ó\Z¶>}ñƒ¬(üš“{}n8)}º4ŠÜ&\n^£\Ô%ªõT×€ªé²®€ò´ö’6‚å²Ê®u	½E?\Öd(¼6`\nôòö¡1¡A\ÏÖŸ¦™G˜\ça\ËqK\0\Ìé¦­\Ò@™\Ü$ö¶\ê$.ƒÁ`øŸª LX\ËiN7³˜E \çqı\Ğ\İz¶€~ŠRŠ@ÿ‰œ}=\ç8z!A*¹\âfúƒø–Tñ‰/‚7Àˆ[\à_U•T‚ş \íõ\ÖLˆ~¤¤A\ÖòŠŸ+®‚_¯\Ëœ›[\Úe]s!.*¸¦`*¼YY\äÿ\ÂO©{Õ ÿ$-–.‚«\Üò¦\Ùş\æ÷\åŸÁv³œ&·úñ)„–(š’\å\Û\Ãó\Â+Á?\"2+òœ9UZT\Ò*~où \âõ°Î‚`w\Å½”¨6H[õ]±c\â\ç\0Kóm ¾\ã°8xª³±\rƒ\á_\Õ\Ì`««6DŒ°aıiıGÖ€\ÚO_¢}Ñ™j\'­ŸQF—@ğPt©r/„\Üj\'¥	0C\ß\Î6\ébo~KY\Òl¶‰µ`\ém\Úb\Ê÷C\ÖL\Ë\r`g:!—‚y¹\é.i0ˆøL,,\Õå™¿S06ğ_Z\Õü{\Ø	\Ñ\Ñ\êF\íu\Ş\èG?*\\VXv>3.;ŒÏŸ‘¿rCşİ¾/AÙ¯ù´\Ó\à\îdyÃºR&º\\w@\í<f\ïlH\à\ê\ä*‡˜ó¶#¶M \r\Ò\Û\ê^(ù4X\ÜgÎ•½X\Ú.„\Ê—?Eş@z òm•\ÊB¿®\å¦@\ä%õ9õ3PJµZ\Ğ\Ş\ÕOê½¡ş-q¾¸oÀ\İ\ÚR\Ï\Ò\ÄvÎ‹~›Y\Ôƒ¡&ğTO4ñˆ>”&\êGz{}£)(\éZ\Z¼ò?ö\ß\âÿr¯ô§úŸ†\ÒiA)\Øü–h8’\êm¥ö-\è³õñô-\ÕzWŸ”\ÚKmÁ\İ\Ó\âµ\\i\Ã\İ^w_¨=\Ş\ãó\Æ@\êww¸}\Õ\Z	‡\í÷\ØJû\ë`ñOú\çµş?x\íş’	U\ía\è\é\Ì\Ğß‚\Ğ\åEed*¦V\Ü‡GF\nFÀQøxa\'\Èû±²·\ß›ú¶ª‚;\Çr‹u2\Ô{8\Ö;\n\ÚLH9ú´|\'yrR2¾÷\Ì÷”‚g´µ­7hõlı”œ	,…\ã_?P<\rö¹ò\æ€\å?’/A\ÎyŸ©b”<\ìl¯-8•ÿ=\èõIÑ¯\Öó§Aø…U,ú7Æ¶®s–1–A \Z0S\ÌL\Õ{7\Ã²ÿª¾ş\ïxOû?\Å|\Ê ­\Ö|7FÚ…\í\Û\Õ7\Ô€ó]\Ë÷•=g\Ê^-\ÙwVtôy g…¯”%‡\Ş\nı\0×¢=#{Aİ¤5\Ô€–¬\ç\è1 ¡LOy³8%\å€ó\'Ë»–iñª\ç]\Ï(hñ@RF\ÒPh—œº/m4ú>şùø!\à½Óšd\ë\äğ$Oñ¿\ï1ÿ?º|p\ÍE90cQ[T­É·$™d \'N „‚òOk\ZD\ÔÔ¿¢„\à¨^D!\è%	ò\Û&û_Mõƒ…\ŞSŸ\Çg\àÿ$r$|²úWl)—\àô›¥Ÿ•z!¯»‚/B\Ï)7*\ãÀº\Ş\ä1eBjw÷g®\\h\İ<¥]\Ê!\è\Ò2ó½Ì· ¹#±[\âVˆi¿\à˜\rÖ«\äÙ¦] ôûQÑ³\Ñ\Ç \í\Ï`OÄu\Èö¥ m\Ã\è\0\ÑYZ¦:²GV,¯X	¥§BO„ƒ#\å…\Î©§J£Áüt\Ât=\ÈoIƒ¤/¡şc±§c%°\'\Ë;\ÌÛg\éBW \\ıóü+şŒ—Sõ\ÒV\Õ\éMØ«\îºZ}V×±\×\ÜG~/ÿš$d®~À´!c\áV,€«\ê>÷¯(%Dôr=D\èŸ^Ÿø÷nø—­š{\İøœO!ü’º[ùŠF^|\n\Ç\'kÅ©°o@œ›G¥¢\ÍEƒ\àÂ¦ò:å“¡\èóÀ\æ€*Z…Ã¡\Û \\¤LU7ƒ2O¿]›\Ú>ı&ı¨3µı\ÚN`.³ù¤^â¸¸\ÌQ\Ó>SNµ*y¾øQ\ÈIõ\åøú>J]¿™û™}\à˜¿Ä¼	\Ì¤|Ó‡@kRHùŸ_ö\å€«!DG<Ğ‹ú\Ôö’Gh\ëõûô -Ñ\ëA›¨w\Ó;;\É!HÄ8B!E Nñ¨x¤—E]\Ñ$]\ä		\Äq#}•œ\â$\èõ|òõ/Ã¨( \äQ}T\\ş \â€<«ÿ ÿ\äNôoôÍƒ\ÊV‘¢@ ‡õ\ÏÁQl>nöA\í:\Ş\r1^h±,é›¤•\Ğ,œğaB9¤.sµp\Ë\ÓSˆ\ëx†W«¿g03½*½¶)ò\ÛrG°\Ì1=lzü-#1‘P¬¶\ëCi¿\à¾`ğOˆŒ<¥\rBsB\ã\áHF\áü\Âs`•LM÷=\Ó|^vƒ¹¼jö^\ï\í\0–‡¤¯L+€™ô¢7ÿö¦Á\0Te¿jÀOœ\ã$\è\ÏT\ß7¾&•T£DU\İzo\ê\Ó\08JEÀ±ªz¡ ’\ß\ì¥ÿb\ÅMüK®¥º¾\æ\ë²ñQÁ?’†t—>•õ ¿\Êf}ğ;\Ù\Ô%°\á\\b9wˆ;ñt¦`ı›\Õ×¯\â4\'!RªJj9\ä­õ›ı¿Àş\Úù\çón‡-Î¬¤¬_aO\İ\Üi9›\àüá²¹e?€oF\ä\ÖH+Phkû@Z%š\n\r\ä\'¥y’\är©Bú$·¨qš¢Å\Ğš\Êí¨¶Bë”¥\Ê,ˆ<«^T‚rZ›Pğ3\Ä[\ím\í ½³{¿\ç3H}\Ö5\Í- n‚}±ıp\'xò~Ù—>\0×¼a7rs e\êñzPÒ´d\Í\n\á\ÊTõY¨ü,º8bÿ®Hb\ä8„\ê(q\ÊE\Ğzšn¦±ŸıÀfüd|Z*–¦k”e¦\ågpw·L·~\Éü¦y˜7½&½\ÒS¢£(¾\à ûA\Ï\×ıø¹|g\Èyø©Í¯kz©JFT‚Š\áo\Â*\ëD\ZDL 4\Ğ\ã4p\r¨\ææ¦·L_CBûrûYH¹Á\Õ\Ğ€ø\ÇP\ÇL05µ•c&³@C€\0ÿx‚2\Ó\Å[`+”—\Ê\Z¤½\àš\ã>6Ä¿–0\rN*i_’	gn(‹/-† Y9¬¼Jœ\Ö\\«\Å\ÙÁw\Ã\à\ĞKcf‚\Ëmy\Ğ\Òœa³\Ëò+Xo7½%‚¤I\Î4\ç`°l05®§õ1fÂ†ÿ™\\üøA«­\Ç\énP\Ó6i\ß@t’¶U]L`[À\ÔY|%\Íy¹t\\º\Ò\ÑYt)F\È\Â	\âÑ—gøm†ü\r\Ç8\nœ „\âú|u™‹¾O\Ï#Yµ”ª-\Ò\ëA{Iß®¯¥L\Ó5?DVû© \ÚR©2h}t¯\îy¸\Ô\\º\Zl½\ä÷\å/Áªš\Ú\ÉG@\Z\"ZŠV@âˆ»Ôƒû;¨^‘\Ô\nõ°îƒ’ÁÁ^Á8üL\á\á\Âw\à\çûÏ—ŸÏ…\ík/\Ê\Ú\r:—.¯\á¾J=\Õ\æM\ïJ«!f\İ\í\è\n1\Ë\í]m@l[g\ÛHğ¼`Í¶¶\ËW¦ò0œˆ¾mysı}ü6È›\ä\Ïñ}¾÷\"##£A{LÿQ_\å/„·„\ç\Â\Ùû\Ë6–¶³Ï•u+ıš\ÍI|,q.\Ä\äÚ¾·õ)\"\Â\âß¸7ıy¸\æi±:\ëU\ÍiA\Õ\r¶(=´&Zmğ\ß\éù\n\ZUv¨ŒB\æ+ö=¹Wûm¾;¡hD K@‡Ê¶‘–Q7Dµw\ÔW@ó\ëª\îğoƒ}³ùóhˆ;a›o?©\ëİµ]oBZ—\â\î©w¹O¸\ÏCŒ\ÃV`kÖ¶¦\å@tôı ^@>\à«Ns¿\\À9\Ê(\í”^®ı¶ \r\ÖW\éß‚\ŞBŸo@›¬Ó»\ïs„C Üª•j\ÙÀı¢h\Òi›Á¼\Êt\Ğt\Ä:¾c€f˜hğOß¯æº•\ê’\é\Ï\Í`(÷0]ñVû8»’–8®v\ïUÖŸm¯A~š_õ¿\Ê6¦2”Ïµ\Ú~\È?Sùš¿ö\Í_÷68Ú›»šUpµŒ1Ï€\Öı¥%)­ q¥s\Ó¦bñ²ôU<\ì—\Ñ\ÏÁpy«\É%˜U5£.RŠö‚‚É•TÎ…Âó\Ç!ºPıL¶]òqy,8‡Y¦Y>\0G\Ä<\Î\\\nöıòù>°¸L‰¦—Iû¤ \Í÷ŠA`j/’¥\Ú ,b2/€\ŞYŸ\ËG .\Ò\ĞŞ‡\èPõ}\í„G«·+õ!5G]PñSø\éğ\0(\Û*\nÿ”HJ\äe\ĞN\èv½z9Z8tH_\ë‰zvBrk\çsÎ§@:+®3\â\ï€\ßg7» ô®r*ú\\\èR>¼¬öö\Î›\Û~mœ\È\ÙYm*¶UŒ…pOõu\Ø?7ÿ Ÿ„4»\ÒS\ZM)¾\'4˜w:n¤u\Õuµ\ï{ÖŸm«ÁzX~Ø´*Š\Ã\îp.=W4­h\ìn’\Ó!§3œ<Zr¬x$T¼¾6\Ü´D}†ş\Z	Lü\n…?W\n\\%O\ç\'@½H\ìóú£\0<+^úŸ_ş€«g¸\"I8p‚¾@?\Äˆ^¥\Î\×~\à{Ê½\Ñ^P\Ô6pK\à\Z¸PQ\î*\ß\Ç\Ï\ï*ºN~_<µ¸\\œ\ï{®\â$”jÁDlŠÚ”P®ÒŠ\Ô: .Ğ\èû@H\Ü#Zƒ-,?#‚gõ€µ$»œùN\Ô~\Ù;Å»šİ8/1\Z\'\Ç÷Kxj­ñöó\Ö÷{›EÓ·\â˜t\Ä¢-ª— \\úä®š¥¬\îÔ¡.Ø›È…r\ØF\Ê1rc°¶—\Ê?o±ú \ßF%¥|3:8z;”u\nıúJ¯\n.MƒpOe”R¬!SSC·‘+Šø­`=Zıı”\ê%¼™lg+hô,=	\Ø\Ë\nÎ‚¾	›¾¤+Ä§lıWšò#pwõ\Ì\à\ÅCô~­£\Örğ•ù°\ç\Ö\Üh\Î\"pşjÎ²4{+ùSó\í`}G>\'wƒ˜é¶©¶—A8yM¼T!‚ˆ\rÿÿ\ÎSF¨ıô¥\Úÿ©ÿs¿öm\Ë:\Ï\ï(ˆ)¸\É\Ñ÷£›ÁqÌ¼\Ù|¼Ã­M­‚{¼eu\'¸·[{Yjƒ³…ùe\Ë<°¿b.4¶;MÏ™úyi•\éZŠoE*h\è&½D.ªO©…|P©¾¾áµ‘9PöD¨G(J\î‡CÑ­rø´\È\ê\ÈNp\\cv™;C«\İ\É_$w\ïMÖ¯¬WA\ÒlG¼s4 £\àºÔƒû;¨^a\Ô÷We7Oö.†Y%7·„ƒ÷|”ÿ:d?V1\İw-„z*Ã”v`\ë&\ÈM öw\Ş/½ah -!}\\µ?cfFChœŸ–ğ$L·?hoöùaó!”ISÀÿh¤w¤$Q\×\Ï\ì½#ºJ&#|¯„Ç…ë€¾TŸ ?\áCj?u2„nW?W\êC8 F\Õ\ç€9dp50ò\ß†?.\0\×\Ìx«\Ëfj–`\Â\í•\Æj6V^¬g¶—~_jƒcsŠ<E\ïÂ‰\ÅÎ¢/\àtQ©(\0\'ù\Ò*\êB\ÙğPÿP=ˆW;¨-@\r\ê\ßé·ƒºH›ª]	ú:ğ p‚\Õ<¦¹¢‰h	¦d\éUiØ§Ë½\Í\İ!®­\İk+€ƒ‹·¯„+\nRš¤œ‡v¶\Ôai\Ğğş¸±ñ‹ Á\å°;ºu·<\Ò4¤\á^\\ˆ/\Õum<xÁ´T–†‚gu¯õ\rˆ›f_g¯¯\Ù:\×ú˜ò…$2A[®¿¯OƒğIe¹:rføl>/œ\îV\ê/y\Z/,_\ZŸuˆ‘b‡€³¥±ù~v‹‹\"h@,q Ğ¿d!¨\èµ¡¢n¸y8y\ßùŸ÷wƒü—+¯­l¾´ğH&¨;µ2m.p‚…\Ì±š\ãœñ­,\î€ğ\İ\Ê/Ê·pÁS*‡Od\ç^\Ù:ÄºÜ‹,}-C\Óz‰\ÛKò+\æ—@Ug\Z<ÿ\'ªd%=‹§ô\Ñœ ´†3k\Ëf•y`G³\ìz\Ù7Â¶\áYogù!M‹\ê`yBni\ê¹\æ\æ8Ş“Ïšm\à\È27\Ï‡\Í\\i®ö\ÍG\Ì~°zL3M_\ÜFºQ\ZÒ›\â±´\\=¨—Ad°\Ú^m¡e¦²*¯~\İşM‘/\"\çÀ	?¾|\í#3\Ã\é/¾ƒ‹\ã>Œ[\nM>J<\n\æc¦u¦Á\ÔM\Z z_±\ã—z\Õ\åE\ê\Ú\Çúl\Èm\æÌŸ§>)i[2\nNO*=Zú6ø^ŒX\ÃkA\ÏÕŸ\Ö+ v¸-`\ë\ÍL‰‹’®….‹jÌ¬m\Ãi\Ë\Ò\ÎAÊ·\Î7]f°¼eJ5=b‰8\Î`\ĞO\é‡\0\Ó\Ìı\Í	x(\ê†Œm‹6\à•­\Û\î‘-F	\èF\ê€E2¹MµÀúœ©‡©%˜ß’zKc_Ó¸úZVıÏ‡á»……«÷BRxS‚¯D*È©\ë\ËõU\Âş9ù“ò\Ú\Âî´œü\ì!pğ‚‚‚5p±Ÿ¯]\Å0(=t:¼Ô–ºO;\Ö\'M\Óˆ»ÛmOûy¡¹LK_K]AŒC\áAP\ë}µ« \ÔP‰*¨ø1<0<ü[øV(Oÿ\Z	E¿c!\ï”ÿW¿\n\ÖT>X€«ü\é/ò¡e¤>É›!}‰ûOp”˜\ß1÷\0\É&f X=³û³q]b‰S–ô˜x\Z¼\ÅÖ¶©\êv¥¹½R×•\ïº\\G-\Ç-\ÅP®„‹\Â ¶\Ñ\çj\ïA\îş©¾UpÀ’49\Ä\êHq\ì\0EÑ›\ëeP«©gˆ§98\ÍZ¾\éGqRœe†v\\=\0¾É‘{\"\Ë\àlj\Ù/e£\à\à]\ãóß„“\×ÿT|7”V†\Ş6m¢¡¯i·¸OŒw#\Ë{–µ`=\'7‡€\Ö]\Ë\Ğ{C\åS\Ñİ‘¯\át\Ç\Òó%\ãÁ\Û$g“\íFˆ\Ù`\ëf»<oXŸ²î€Œo=½°\İ#’÷Óš63a\Ãÿ\êdUÕƒºB»W\Å]‚\Ë\Ó\á´Zºª\ä4ÕŠ¼…=\àÌ…²&¥Cd:\\RHt\çÁT,>÷ƒ©Xº^š¦abX\nò-R=©%\ÈY\Ò\\i\"˜Æ‰«¤® fŠO¹	hJ=@¯\Í\ëLmvV_\0\êI}‰ö\0(+´«µAI\Õ\â5(7kùZ\Ëı\Ø!\å;\×N\×!Hl\â\ã8\0\ïz¾ô|qG\ì?\ÛÏ€´^÷N\ÜÿHü+;Dù ô\ÕZhõ \ì±Ğ‰\àl(ö\êC\Å[\áC½A{L \×S+‘,%CÂ­ñ\ĞP\ë·š~Ÿ’\äÇœ79\Ë#¦¦I º‰L\ê€\Ô»È¦\0ğU­ ‰t\Ş`HW‹\Ç\Ä\Ç nõ˜4#‘\É 7–Ş’Ş‡¸µö\Úö©?Ã±È±bV\Ù\\6ˆ\Î<%Ò€ôÿù0üqø°\ÂÍ”ê­\í÷¨¸v·\Îi’„_\Î^ğŸoû»ç¿“w²;øø\n!ò*©[Á#—›+!\å)\×\î|¨•\æ\æ]o{>ö¬ƒ¸¥ö\Û\ì`\Ó\å†ò§ \å‰u\"¡\Ê\Ã\Ê\ÕPüxpp°.œP|wq\0Î¦”=YZ…½+;W¶‡²\âĞ¹\ĞQ\î,^ş¸\È\êHO¨ø)œ*ÿ©\Èú\ÈQ¸rhÊ©\ÔùS\ÌØ˜]\à\Şmh}\n¤¡¢™¸H\Äù§2P³‡ş\0ßˆ\àj^`\Ş\0x4\Ï\Ë\Ğ\à•¸o\ã\n\àÄ‰’C\Ånˆ\ÜV:®ô-¤FQ3”ön\nÎ†#)E·.\Ñ]$2*\n†¦ñ	©‰\×@\Ò\Ç\Ç.0}*eK!\Ğ,êˆ¾­*Ÿ®\Ô\á\Ø\ÏE\ï5ƒ½\×\å\í\ÉÍ†3®²®¥\çÁsdn¤\'°’”ı!¹¡\ÜjmğNófAÚ³®\îrmTÓ•p\æDi\Ã\Ò/!Ÿ¢¿3œ˜\\¬½\ëHKˆ¯p\èö`;%/”AÚ£îwA\n‹°\Ğø­1‰ˆ\r\0(§Ô›õ¯´…Pñ]8)¼\Êw…\İ•E¶Fd`!:€\ÔX¼-\Şı¤^¢Ct¨>]\r\"·©\Å\ê`g8ğ¼ÁÖ~˜8ö‡\Ğiù|%¿\İ[·_ş¯ÿQz@´\í ®\Ò~\Ú\î\ÆM‰p\Å\ÈdkŠu\ÇÆ¾\ë\×U–‘–ş vsxhDÒ¥\ä\ßAaU’§>€Oõ\Å`¿Sş\Äü¤\ìuUº\çC\Ã7\ã§\Å\0e»B\ÓBsA ıª÷‡³\âfÆ­„:§cô˜“ÿ´£»£,3L;M:ğ\"\Ïz¡^I%PL\0ô&¼§Ï‚\ĞD¥R\nE\'ƒÃ‚M¡\è»À­WÀ?\'²>²\Ät®$¬¯˜–š~‚´]N÷H?\í~\Â}\Äwµ\ß\é\"YLg;\0¯ó\Öÿ|~ÿ\0\\½¤İ©_¡7ƒ\âZÁU±p(¶\àı‚/\á—7.¬>\İósºæŒƒÜ·ı÷û¾m›§?ñYö¯\í} ~\ï\ØSq+ ùSI\ï%õ†&»\â{%Ô†Z\åŞ‰‰{Ÿ\í9ûR°oo•Ûö,\×\Ò\Ê\\¡\ÂPœWJI\Õ\Ò\ë\ã\ÊP|]@&@ñ\ä@q\à]P·\ê\èC!p»r<zdu¯˜]±\"´µ.?‹¾¦\0¡$e”²T·~£~\ê\Æ\Ú\ãòÁ­Y§X&ˆòš˜˜ÿ¤²€šò‡\ë¨K]0½,­[!u\ë%wOh˜\èI\êGWô¨\èo£_D=p±¼¢q\ÅIˆôT/ª ï‚¿ƒ?‘x\åu·¦\Ó×—´.I†\ÄõÎ»œ¯ƒ–*%•K\"wGº@\áWq•wÃ…u\åoV,œßšŠ(¹\"8)X”u\Ú\rZ°,6½n:\n)û\\\\\\Q˜\Ü4\åKh\Ù5iy\Òb¨ü6\ê‹>	–.\Òv\Ó}x5zOt?w\rÀÁ]á‚•\\\êœ\î\ê	»7;üû„½§½%8Æ˜›˜{‚pò’x°W\Õw\Zş\ÃU¿DA\ÕÅº\Î0Í…´g\Ü\ï¸%h\Ş6ñÖ¤/Á\ÕÁRd=\0şQ‘V\á‹: |­\Æ@Äª¶QUP\î\ÕQ[ƒ²M¥\ßZ[}¶ö¨\é\Ú;úP§\èf\í h;ô<=”…ÚúÍ t\Ò¨@ôYm‹¶ººlò\0ĞšdRARD’!\îm\ÛWö“\ĞlPbN\âõ\Ğ\é\ÉZ\Ô\êW<•òU\Ê8HJu–9Û\\.ù$hLUy\æ\ßE\Zn\Ü ·–fIA\Æ0\Ïİºp\Õg›2ÜˆóE\çmPº\'42\Ø\"Ô»\Ô\ÖP»¹\ço]¨÷~\ìq\ÃÁ9\Í\Ü\ÇR\nb\"\ãE‹~\Ü\ÜBSš™U[v\Ê]\êUz(~1øx°œšSÒ¨ø8«–-.m\r%\ß§5®m¥[!~†#İ‘u\×\Æˆ™	µ6y>ó.Ï·\Örk2ˆ­\Ü/nšıÏ‡\á÷À\Õu¹\Ê\Ó\Úfm9\äş\ä_\â\ß	G/\ìPx.(\Ï/€œşû}{!P\ŞW* \æY[{hpS\Ü\ŞøT\è’Y;Tû\0t˜‘LPg¡7;¦¼WÚ®¶-sª\ÔÏ´\"W©~õs(|1Ğ±²T\Ş©\Ù\Åñ¶|É‘^\áz.U»*£Ï¸†½@:Q\"@±\0Â¨‹ ¹˜¾©;8B\æ7\ÍwA\âX\Ç.\ç·½£“#œu,\Í0\nU¨ü£Àÿ3²?Zu2˜PxNL†˜^6‡­=4NI˜p\ÊÇ†\ãBõ!øŒbS\î\å	\í°6ò\Şô\çù÷@\äÕ«jPXRù$øÑ®‘\ípñ¹Š\Ï+¢\à<glş¤\"NJ…ğ,õ]¥T\ÆE~ŠfB Wô‡\ÈˆôP¯S%G\Å(ñ(¸\ï°>o}’‡;\Ç:WÀ¥\Éw¥,…û2\æe,„–\åI\î\ä…¸=º&z;„§+c•(\Ï\r4…£k‹2‹NB\ŞV¿Ó¿5-\èU§<\í=\Ú\Â\Õ\Ô\íƒ\Ú÷z\×xƒõ\Ó]ò\ànZrÅŸ0\î†\Ë[SHyœô“´\Ï:ß„6uS^H\í	²\ãs\ç(*»V\n({<\Ô>\è‡È·‘ `&E#< ¨\Êwy]}PõBôZuœz«öƒv;¨³õQš£ªÑ:Jƒ*\ä=\áo\ê\ë\ÅùÁ‚\à\nP(KÀü“\é\Ópˆÿ\Õ\Ş\Ûş,4İ–˜h‚.Yµ=™+\àš\é#j}õwÄ¶ˆ®ñ\æ[-}@l\ä.!™˜ˆ¹Ôƒû;jI\É ×‘\ìR\"¤J®;\Ü‚÷¢­ƒ­)4¾3ş\\|/¨ÌˆœŠ¼\Ñw´q\ÚHp\ä˜gš\ÛB\ì&\Û2û¯`\Î7õ”\ÈYuº¢“µ\Ã\êrõR®W<Œ¶Œ†¡ø†\à¦\à\08f-:]”;¯\È^}\ZN7)}´t5\n¢–\è½\à}\Å\Ö\Ü:\ZÎ‹‹{\Zš4HØŸ\Ø2>ğ¬ò\Ü–\ëMcLµ€ö$Q\ë\ß†\ß?\0¿\ÎV¶@ğAect14÷¯õ› ëªŠË·A\á\ÎÀk› œ¡|¥L1I\\)Ú‚÷\Zk‘µ4¸9nY\\	´i—2\"u#4ÿ:1&i+80»-k!ºJ«Po‡\â\ÍÁ7ÁGy‡òl8ÚºH/¼\r¬(|°p$œª,m_r.Ö¯\èV±\ZŠ\ïÇ€ò©\ÔN‚\éJQ(rÀ>Àüùğ±¶FÀ\Ó\Ïv«u$~\äh\á,Wk\Ë=–h/\é=õk!|ZùPy\0”ûµ´¯@Znš&\â@¼\Ïv±\èC\Zò\çµTD3šƒu¶\Ü\Ï\ÔR³\\]\\h32¥cj¨­µGô\'@‘\ÆH›\áĞ§jşËû™?\äÿ;\"÷FG@\à\×\è\Âh¶i’˜%®jÑ†[A\Ï\Ó?\Ôû‚*Z‰‰`ºQ|&<\àT,£-S!\î&{\Ø~¤]\í*rw„¦ó=‰\Í\áJKÊŠ\Ôk õ\×)Ñ”C¶\Ëmv¿\0‘Bu‡Z…Ù¯*8{s™©\ìJ¸¸¶bdÅ¯P’¼-\ØÎ¥•_Wö-\ìÿ6ÿºümP»§÷\ïXğ6°®µ\Ş‰m9û€w\Ä{\Âx_jÿÚ”\ä_\ßg5KñÖƒ\à\å&.\î\ÍDkğ¦[ß±­\ç³\ß22\ŞQ1v,S†GûCå‹‘Á‘\Ù\à\éñ@Ğ¡¼«<\áúJ_\å*S-\ÊiˆšT¡=\0\Ñµ=\Ú.ˆ.Œn„œúşa¾~p¤n\á \Â,ğM÷‡²ú!Kh,X4eÊ­!ñi\ÇjGch6#QJ,†N\rjÿT»:öN_™ñ\Ô\ß·0\Î\î\ÖO¬ß€\Ø\ÆQ1‚ª‡¬\ç[UV(\Şa«\Ø¶òE9l\í\ä\ç\å¯ f¡um hsô\Íz#Ğ–\é\ï\é=@<!®¢3*õ•(d\'ûğ½ùkı\Ëü} ,!ôHh\'ø–G6…Ÿ€²—CY!?\ä-÷\ão\0§g•v+\'\Z,*„‚„Ê–•Ïµ¹ü¼\êO­;\ÚuK]–~4¿.©CR.$\Ü\ê\å¸¤)\â¼Xt#zü\Û[_¿{\0Ö—pX?‘Ÿ\Ôdu¦(7G¯„À…\è“\Ñ \ÓüZ\èƒù„@Ì¤}Àrµ\Ü\Ù\Ô¼A\ëK\Ö~\×\×>\Í>l\'\äó²*®	·{\á\ÂÁò\İeÀñ\Å\ß÷‚C­*(ƒ£\Ç¿-\Ô\álBY°\ì(}4d¦‚ªk´gÁ\Ú_Î”›A\í«=½\ë ş&û+ôŒó)\çH®\çzÔµb§\ØúÛ¼`[#\ï•\ß\Çg\æ}\æ ±Bôƒü\å•óıY ]W‹\ç ö\Z\Ûkö÷À\Ó\Ë\Ú\Ìz?\ÈG¥©hAÒŸ²Wó/{\Âöd9\Æ\ì€Úy¯÷¶\0Ó­\Ò|i¸°Ö±|)N\ç2W8¾©¸°\èE\ÈUı\İ|‹¡|vh~ø9Şª)@\í oÔ†€4™b\rXFË­L!p˜¯5\0\î\\K+\ë<ˆ/r$\Ú@­\ï<½oB½¡±\Ç\ŞM»$,I,€º+cj\Å>I“3œ½ÁZ!\Ï2\É`\İ`ºO~\Òw\×÷‡Œ\'\Üm=Vˆ=n\Ó\ìBI÷\àñ\àD(YT‚;\áDQqR\ÑF8,¾&şC¨{ \Æë€„}\Ñ\Î\Ù š\nhò\'Œ÷¥V½wö\ä¿lgU[ \Òo\ï\ÆÒ‘Nü–-ş\Ç9¨—gƒ™\ßKM\Ë\É[hL0M‘º‰kÁt«\Ô\Ô\Ô¬\İ\äLSp­±¬±<	šd/r|ª®\Ï\Ñf€z\\û\\¯\r\ÊB­¹f%¤™´~=¢İ§ÿ]w¤	\\\Ü^ñc\ÅF(ˆTşRù+‰ˆö„`@™\Z\í\Ò/\ÎCR\Èy\Æ~\0Z¼”´/¹7t~¹\Ö\ÈÚ¯B‡a\é\rÓ›@\İS±c‚{‘eƒ5\Äv\íª~+;ü»©yLÀH3šChE+0™%IH`’¢Ğ¡\êAS\ë¨g\ê2”Œœ~	û´ü~¹»`\Ï{¹\ërgC\Şş«ı©\à\Ûş:¼\Ê?u‚\â\ÕÁ¼ \Êb‚\ËB.¨L‰~™Rh&2 }¶\çO.4-I¸?ñhy*¹a\Ò\'P\ëy\Ïd\ì\Ç\å;\Í\ã€È´\å2>\r)©ªG³ô‚X!~\Ó.±S\Ê9Qš&ı\nÒ\Â\"\Ü ºW5\à \ëù\Âw+_«{ ¤2˜\ìç—”o+ÿ\"?¨©OC^ÿ‹ş\Õp°YÁ\éüO\á\à\ÄsÁE8]¯4½\ä(¹*\Ğ0ø\Z(-´\Íö\æòBH(tq8!ıO\Ä3\r2/z1³¡ö\\\ïfHû\Ñ]\ævC\Ò\ÎzN\äyÒµ’ù\å•\Ëü=!û“Š7}\à\äÅ¹Å…pº_\ÉØ’Öjq÷uÍ€†?Ä¥\Æ÷†&u®HX\Ş\ëX\ÛB>}\Å@ V\Õ\Ä.¹ú\Éÿ¢(\à\èa5·„\Ú\ßz\Şñ†Áı¶\åA\ËdH=\á:\éş\Z¹ºÆŸ‡¬\×\Ê{—gA\á\æÀ³¶\à¿!²:¼\"›\ÕG´¡`ºF\Å\ç\àº\Ûò \åGğn´-·}±w\Ú³u…x\Õ>\Î\ÑRotw­‡ôgÜª\çEH\Ş\àô8\'€ó]\Ë+–\Ş`şX\êeº\rhÀ“Œõôv`\ï\"“{}·ùˆ¹\ìM\Í3\å)ÀtVŠk!ü³²C9y·ù§ûWB\ä»\èûŠƒF‚ö°~D\É/\"\"¸°T÷\Ôı{¨©\Ç~„Uü\0J™¦i~·V¿PfBprH\Ñ@õi“µq`:.Fƒ}|…\\¬µM/\És@.“Ê¥(ğ>}\é\Ïo-ÿ®jª0v\ê\ÙdW.›h‘$œ\\¦†\"NÄ\é4S°\ŞÔ‰ \Ùô®z\'ˆ\ìTK\Õ\Ó:œ½r÷?æƒıñù\İó\Ö\Â\Î_rú^lGf\Å~¥£CGB#!fµ­›\í1h¹<iFò\è\Ú,S\Ë<\íŸK;Ÿ¾\ê|SS\î\æ–)\Ö\'AZ+\Ò\Ä=ü\Öğ\ï\Zxÿ•ö¿õ\â®*#+\Ò~\Ëy©~pÔ¶\é\ëWC\\9\Ô_öv\Ïk’·\Ö=w¦\Íé— pL\àd\àP^\Ó\êhSA¹Z«¯%ƒ’¡\í\Ò6‚’¯½­=\Ü\Å×¼¶\Ñr¢\Ü\äZ’U\ê\0·I1\é w\â¥: 53Å³@&f–_3;˜\Ëô4$ñ4E\'°u”‘…˜ñ¶y¶³\×\Ö\×6\ìO\È\år1”•¿øôfúıq¨˜\Î\nõ…\ãWÿT\Ü\Äi±Q¤‚k„ù>ó=»\Ñ\ß\Æ_N½T¢–|\Ù\Ë|+*>ÿw‘¤\Èn°5g\É\ï@\Æ\Ó\Şw<‡¡A^ìš¸u\Ğp~\\\Ûø\' \Ş\Óqo\ÆÎ€ºgcŠb·A\ê.W¾k\rx—X»\ØùSÓ‹Rc(›|(4Î·/o\\vv,\n¾G+º»ğAPh­´†:Õµ\Ú}Š÷§7®\Ûwò¹\'4¼2ş\îø¸›]–•ÀGU£ş4\Õu\Â\"\âK°õ”¿OB’\Éy\Öy3¸?±8¬“ \Ã\äy\Èó$”|\ì¬\å[Â¯„_†\Ê‘…‘\É=ª-\Ó6ƒ©¶p‰A\à|Ó²\Ùò	Ø\ÊO\ÉÏ€´G4A\ß\ÎCÁZ`šlZÉœcnr/©«\éFê‹­\âsĞ‡³B_\Ú|ıCıøW‡G&Añ\Ğ\à\î`<”umÎ€\ĞQe¼ú\0P›™ú[ ÷\æK€ÿ\É\È‘¡\ìlhG(Ê‡„~\ÊZ\í¢v\äÆ’Eªt¯JNûË«¹1U\Ş\Ğa%¨\\€üq•gıó \ë±òË“!oM\å\Õş›!´T¹ 6ûHù#ùjHıÙ½Ú½j\Ï÷t÷\nHz\Òù®\ãXÆ›\Ö\Ëm€\×\èÁ\rüız\nÿ\ßT÷|\×su?¾\ê\Ïù€ò\ê\Ã–1D¡/•ó\Ê.\È]yºòS8\æ(š]ô8\ìn–óvö9\Ø3\'÷Óœx8Ù«\ÄWr7T\Ü¾\Ş±ıl\Ól«áŠ­\ÉûSn…k·d†\ëÔ†\ÒEz\Ô\Ş\è}\Ï8\ã\Ì\ã,ï‚´B´wÍªö®ÿÖ«ÿú?>V½ÿk~üÕy—>‚\áP™9\é\å\ãB\çC6(;:Z	Á\Ê\è€hPKôŸô¹ öÖ¾Ö¾½+“˜gË©š(º@½MûFû*V†;†G\Ã\Ù{Ê²Ë–Àñ_‹Vÿ\0ñ\Í\ío:šu½ü”|\'¸6\'Z6Qõ \Û\ïß¿\Ü\ß<„–´\ë\ã¦ûå±Tß¹\Ï9jŸóú¼±’\é\Ês¥@™%ôVø&<=\Ù\0~\"J\Ä§z–œ)~òOW\Úü*ˆ‡ùŠlğ×‹ô€`=\å–\èU`Ë’³\åIPog\ìgq\' n(\æú˜Ï \ÉúO\Âõ\ĞôÇ„Ó‰Ó \î\æ\Ø÷b\ÛCr/ggx\ì\Ö\ë`ıÁ4PşL7KÏˆU Ğ‡\é¹\à\Æ\ÔN\nA`R´}ô0\äôõ·ñù\áxVÑ¢Ş \Ö\Öû\êİ¡`[å·•KÀRdZ`:§Ü•\Ï!yº\Ë\á2ƒ\ãN¹µ¹H\å\",Â€÷O:x¾\æ\r[óä¸¡\Ü¦Ó¢Ÿtœ,³\Í\ëÀ>Õ¼C\Ş	¯9v:Š!:S; \rõim‚\æM\×[\ë\0cX\Ì5 }©{õ ´Ağ®\Ğ\È*«8^ş\\l\ì;R1\ÂIJ‰2<÷X\çY7@\âO{œ£!\Öi?o\æ+¥g¤©Y¬®T7B~R\å\İş\Íp¸]aa\áx8öxÑ„¢óP\Ú;xm0´\ÛuEo„ù\n3ˆ\Ä<±\0T—¶A[\êjı.­\r(Ç´	\Úû@.>Tş>øLU\'\'e‘~‡6\0ò:úwû&Á¯¦¼\ïsG²s²s!kTE|y„\Æ+•‹`¿]aş2zoğ‚Ö¯§d¥>W\ä§,J¹2\\\ãÀ~B¾G\Â\Í\Ëb*ÿ¹Y\ä%„‚¾ƒ‡ô 0\'z*ú=\\ôT´«Èƒı®ükòvÁNGö\Ğì°ÿ‡ü•y‰p\á‹ò\äòyÜ£ôU\ZA\Âyû\\G\0ZMY’ò\\{²ÎŠ:\ïCWZf\ÆuPûgos\ï°3¿&±’k\Äu@\Ãê–’÷À[P‹«O£+­\Zw4t~k5‹\rÿ{U‰Z½4’+i®}–K\È8\àY\ãÑ¡\é‘\ÄoÀW¾:r?(/k7ª\ë!\ÔB9¥v@qtx´|\Í\"[\Â\×@ğ›\è=Ñ›Am«\×\Ñ ¨vÀH€ÃŸŒ\ëS¦\éZˆ»\Û\Ş\×>	\âN\Ú[\Ú_\0§\İ<\Õ|\è+¶ÿû\Ãòû\àU\éò¦±\Ò÷b$}\è,q®‚\Æ[\ã¯KxÎ­/+(3Cé° +\Ô²s}û\ÕsùY-PCIiğ­\à3Pv*T*\î¨~k†°“\ÍıÍŸB\ÆP÷X\Ï!h³!µwj%´µ§şz4°\ÆmŒ¯i¯»ı\î\Îs\ÄzÔ–\0\Ö\áòS?\î\Å ^eƒ\èú@JõRĞ†\ê+ô¯ \Z«^¡¦Bh’\ÒBI†pœrDñC¤·ºE]jXWô(i\Ì–@\Öeó\àB^Å³\å=¡\Å\Â\Ğ\ã¡úø¥£#\ÒbµiĞ‘Œ\ß#k\îÿYM nD<ñ 4&‰\É`ºOD\0L[M¤`\ím:\Ä\à\çô³ Ÿd9\Ë!\Ğ?z8º²>¨P*¾†ı¾¼p\Ş°oR~›¼\'\áÌÒº%?Ağ\Ê\èõ\Êhp%X\ZY$w¶w~±³l_\ÙNeˆ\é\Órı¢<¦LÂ“‚À ¸0¬ü|\Ù¸ğEy\\y*”\Õ\ßšú9\Â|\ÒAaˆm«e»\â,ö\ì\ÛÀ\Û\Èz«\ík~;¾ğ-¾\ç\à%\ß\ß[Í\ê)Ö²\n‚1\Ñk¢\Ï\Â\é˜Ò¥÷Ã¶n•‹~\ÙaÀù\ÆPV\'\n\íõ&m‰6\Ì¤†¦áŒ»ôB\éb(h^ù)„×¨=”R_\Ñ6\ãmÈŒxk{½`yŞ´W\Ş<B{\Úó÷?}ª\æõWò\È­¹¢\ÇC\åˆ\è¶\ÈB8ww\ÙıeNØ³=wuNwØ¶\ç¢t±6¼¯`tş\È\Íğ-ğµõ\n}‚¾’»9\İ\Î¡õŞ”ñ©\áºu–\Ôi\í¦\rL\ß	µLC\Şf`]$\ï3q–ó\âI ûD\à­q²\ê\Ğ\nm´¾NÿÔ›ô¯´ ŸÖŸ\äq\ìU\r¤¢‘h	\â\ZñŸ€ø~\â& µ¨\r\Ò\Ç\â€8©y®\îÏ ]V\êÜ´µÿ }¸\ã	ü\Z\rE+!z¿vDÍ†\à*e¨\Ò\ZŠSK\ÏÀ\Ùıe©¥\épF”(\İ	›*V\æB8^­¾Å³\İ\×Á\éûJ(\ç&”)»šJŒ$\Ş\é\ç\İox$ªĞ¸;\Ùö÷ÀÕ¿ÀB\çy1¼OYcm4~(şBü,(:TÁÿb\ä\í\È3 \Ì\×\çi‡ ¿¥ÿEwŸWÇ¨O€\ÚKŸ§\Æ?ö”\ÅAòDˆYb»¸l\Í\Í\r\äW\Û\Ş\Únƒ¤g]i\à:c>e1\Z\Ğ&jw€¿S´Vd(´“ò·H)´kuY‡\Ê\Ò\è\Ö\È9(¨U9 2N¾T¢”|G;eeCÑ’ÀÓE \ã~¬@ˆ‚Z¡\Öo‚ Y	F\ï\0ÿ„ğğkX=ı”ˆ\ÖZs‚ùW)\×ô5—.\0\×ø\×\ã\Òj\ÎSX]/WS7\'@L\0örVş´H\ëH=8Û§T)ı\ZvN\Ëé•½v\r\Éqf?9^_¥\ïQˆ\ÌU\Z©\ÛÁT.¥J*\Ø?7\'\ÈCÀ~DÎ—“A\Ş!\åH^ˆ>¯u\Ò…€\'šƒÀc\Ñ\Ú\ÑW!\Ò\\]­Æş~Ÿ>l\ßË·\Ê÷@ì§¶\åö\ĞBIz-ùfhQ7)št2–zyæ€¥»)bú\0˜JGn¼„\ãû{9I)% \\­\Õ\ÓR!{¬/\ìû\Î/(\Í›·œ:R—2hzwBABˆ\ßf?\ê˜¾m‘½‘$\È\ë\ì\ß\â{	<S8¥0”•\Ú\\-D>¹`zGzD\Z\0µ\Şõ¬ôŒó>i®i)Ğ–Rùû†š\ãF\ßc7;@¬µÖš€ot\ä–p8sW\éÃ¥Y°kC\Î\ê\ì:°õB\Ö\íY\àĞ®Â¯B\áù\Êw*«\\\Ë*H¶;—¸²¡M¯”U©\'àº\ê4®›º¤—¦Ÿ€Œ<K<&°¦›Z\Êe@!c\ÄbúO<TDo\Ê{úl(›~;„\Âk*¯­ü\Ê\ï\ß>\Öm¦;Lƒw¡õV\ë³\à\îk\İoıœ‹\Í	\æoÁò¨\É\'wi«8/²!\åkŸ³<Ã­İ­M a\íøñ/B\ä”zH\İ\ê£úEı5ˆ6P©.(ú.\àl‡ıüZyuA~B\n›\î‡\àV\åf¥?D¦\î	4ƒh]m”vT\Ì÷	½\å\ÃBÏ…t¤FßŠ.½7ô\å€\Æ\Íbü»\Û7\\\'¬\îÔ¥Xúšš\æCò»®½®,hıNò›)!*ÔŸ´_@\Ô]D&\\œ\ß(ÿ\È=\è¿\è{‚.Å¤,­µ¢§i¼©?‘\íjsµ\n§U^_\Ù	}]07ÿjô‹–F¿‡¸S¶óv	\ÜXS-w‚sù¤e\Øú\ÉqrSy\â)ñ4DN«a%\Ê\ï	oy7û¾ô½\rg‹\Ë\Ìe]\à\ä\è’‹\ÛCÁW•*gƒö‹~¿~0„oXb?#\â A†ğ[`\ëÁ|úvıKb€/\ØDô\Ïy“ÿ?\Ñÿ/Ÿ?]´\Îz‚\ÊV\í\í^\àC>a*˜ı\Ò0\éa°m2M’²Qª=\0‘¾\ê\r\ÊUœ©\\\İ\ncµ^\Õ\Éh_\ÅÀp\Òh¦›\ÅW\Ò\Z°;\å¨\ÙŸ­«,!q—c¾3\Z|Š{Ú½Ÿ–•¦Â•÷¥nH«)±®®9`–M\ßI¯8Å¹K=¨ÿ†š\æô\n\Ïë“ \Ìz.t\ï_4¢\È‡w\Ü_\à\0ÿ=‘\ï#h24şñ„\ãpõ\ç\Ç2n„\ÌN\ŞA1WCEfø\ëğz8¸§\à©ü4\Ø÷v^j\Ş\ëpºy\É#¥y WH\ÎmkH\î/{À²NºUú\Z\Ò~uoõ<\Òç¢Ÿ¸•¿O2[\Ílş;q”×´]\êF(±…ZÀÉº%ƒŠ`Ç‰\ì­\ÛÀöv_¾¸¾WTQ¸\0J~ö€(‰!\éag³\\ñk\Ê\â”]\Ğõh¦)s´k‘60­¤»\İ\ã<3Áj1\İ(\ç\ïÒ‡»ø\í|\àÿPº¢O\áy(i\èxö\ï\Ìÿ!¿5\ëW”T8\r´\ïõ[ô; a´\ã=\ÇN\ÈHôyzCƒ-q\Åw†Z\Â3\Ğó9x¿²\ÆÚ®\Ë|SoùN°\Ì3xŸ´\é\Ö^€	™@Wr\Ø\nº¤\ß\ÍSP\ëNÏ™\È|0%‰Y\â8dOò\röõ€3×—¶(¹	Š\çúZ€>KO\ÖS@=«õĞŸu^K/\0-Uwi\Ù@«¹Œ³ kÔ”,\æ6ƒcºù#s.Ô\áMŒ™	Ò·\ÒP\ÉöO\Ì=\ä!¶£m•mœ_^0²Ú–Ÿ-O‡²Vá¾¡:©TB\ä-õˆz.¶¬¸§b”\î¾\Z\n\Ç\Ï\×\×5›¥¸¾°\Üfy¹\æ‹fXn‘ë›®\0>\Ô7ó<Dv©e\ê8ğµ\\Y%\×?	´‡’Œ\àÁş\àŸy:¢‚ò´f\Ñn±ƒ4SPúBú\nœ\İ\ÌNsH˜\çX\ìÈ›\ãz\çU\à|\Ñò­\Å¦©‰8\04¡?\ÃşÈ·öC¼Ï¢¸–XfYƒú%±\×\Ä\Ş‘ƒ\ê½\êK7\Ó>\Í~\\hZş]ùa\È_\â_\á\ï\å7„„úC\èYÅ¦4u·\ŞNo\â<£\ÅS ½,~\â0—vJÁùšù%ó\nˆ©e«´×´\ç]3\\f¨u³w´w4\ÆJ\Ø\rF\Å\rˆk\é_º›z4p¼lnmş\Ä#8DUu…\å}yU\çÖªºöŠşd\ß\ë;P1\Å)xn+ş¬\è\0\ØNÈ…²\n-nL:“4ºL¬}2óy¨U\êY\ãyJ‡\Ş	}\r\Î7,³\r*\â\ÃÂ­`×²œ/²¯ƒ½3ò”\Üpœ14o÷-–\ë,Ï‚c“9\İR\n1i¶›¤,Q**ùór~o57\Èœ\à8¨£õ®Z;(™,uƒcsŠ=…+`\ËwYWeÍ\í?]\ì|ñq8qmqbq\0\ÊN„2‚À4Lj.]‰\ëœAhõ~’Hkyj·ƒ¶\rS¿M\Û	\éM\Ü#=ûÀ6GşR¾|\Ê\Í\àï¿¤ÿ\ßÕy|\É\á>\á‘p\ÒW²ªx l\ê}~\íùP\Ş0|.\Üb\ÙŞ¶õ…Å½÷=§)\ï(#Á\Ù\Ï|Ê¼<\ëZ\ë º2B\ä]\É$ôS»«¿ßÕŠ\nE%£Àş®y€yx7\Ù6\ÙV\ç¢õ”U\Ë+¦M7V\Õ‹4`6}¸\ä\å¦\áR+§K7K\É`úX>ê³¾Tı\\wüû\ÃòÇŸ\'Sı,Æ°JüÎ§-­\Ì}¡ö,/^\'\Ø\å\Û\ä|Hx\Ãñ¼c d¬ğ<\á¹(…sß†3\î\ÒM¥	Pør\à\Ù\ÊkÁwmdWdD^T:«=ÀgLO†ò½\á‡C#@ú^\'Áü±\éÓ­ ı ‹a ¤ÿ {@I\Ö\Úõ \ÌÒ®\Ğ2A\Ë\Õ\ë\ãG\éA¤º\"^_”~”v€cƒù¸9l~¹D6\ë>\Ë\Ë.\È\è\á)óvƒ+§¥lKB“q	\'ƒø\Åö^v+˜\'HVS°…ú\ÃGù÷W]®\â\\h®kù\êÔŠ	\Å.‚˜ó¶f¶-Pw{LqŒr\Æø‡úS ¿M\å\rş(¿:\Ô>´‚û”J\å,\èmô=	\Ä\ânqH÷Šxñ\n\ÈQ)Yª\ÎA\æf\æ[ ö=[k{H	»&¹nd¿ó\çjHzÇ¹\Ñ\Ù\Ü=¬«­ß‚eœiŸi;ˆftsŒ\ê™õ_ı&··jOR™£\Ğ~\Ü2ÿ½¾Q5¬ü\Ûò{ °q\å\êJ\Z;\âŸKX	¢’1Š\Ç—+¡¨O\à\Ù@o¨(\rÿ\î9oø~ò5ğ\êKª	´<=EŸ\rù_ùŸów½r‡\æú!nº\í˜m*\ÄJ6‡\íhº\'ñ™D\'¸Ÿ°4°^üÀ\Ü\Åo+<—»šÀ»Ÿ<ò@•õ©\Úd([\ZN+YY\ì†m\Ï\\L¹8¶º³Ìº\0\'Dqj\Ña(onn\0b1ûQ!öc\Ûw¶\Ğô§„\Ú	ŸCÇŠ½\Öh—›övZK¨õ´÷m\ï^p\\a6›\ç\'y”\Ç1\ï¿2!!@?N	…Ù Jj”&„_€¬\ç*–V‚\ì$Ÿ&„Š†\áE\á\0¤nr/sû¡\Ñò¸§ãŸ€\Ì6Ş®1ı@!ÿeU»\\=ş\ÕI_š¦›t\r”¥\Ú\íP¿Ğšj*\èYú0\î\ê0“Kn)\ÜX>¶\Îo3\ëW\Ö\çÀ\ÑÖ¼ßœ\âwŠ;¶züû\Ãò\ç\èV\å&f±]\ì»&O‘_ƒ´D÷9·\nk­·X…\Ô=® û 4H›wœ]º¤ôg\ÈòU4©Xù‹ı\Ëü7CY“Ğ¦J_%†&A8O\íªh ”k9\Ú	\Ğ\ß\Õq¢Ÿj£\Ô3\ÍToR\ÓA·1™Ax˜-\æ€ô’X\Å:—Jû¥`L^d\Ş‹\Ö\Ö¸[Y÷CŒ\Ù±\ÅCb\Ø\Ñ\Ñq%\ÔK=—M\\	ñ şµ±\ÇEÁ;\Ì\Ú\İ\Ö¤¾\"Y4\áyşrª³3¥—EWq=8\n\Ís\0l\'\åsrOˆ›oŸe\ß	™E191“ÁŠ\\)…À\æ\èC\Ñ. \Õ\Ök\çAŸ\ÃJ\æÔ™5|\nb‡¸ rÁ´AzRš\0–Ş¦¹¦S\àÈ“?1ÿ\ÎD\ËJóh°e\É_\Ë€üŒ\ÔXj\â>6ˆC€™cT-\Ùşõ\Õ–õœ\å,Dumª:Ê¿•…wBù…ğS\á!\í¥\rB{ƒŸ\Ã\á\×\n\í@É P­ ü£#=#BE\ßp—p2ø\ê‡‡{Cş\È\Êñ•?C™)Tj‘÷Õ‹\êZ¸x¥\ÏS±	ö¾–w*o&¤?\æù\Ñ;\ŞsNsÆs¼ù˜\å\Z\"B\Zr¥\nÂ„A¿VzS¨\\)¾\çs\Ë[•\ï†=Z\î9+a\çµ\Ù²WÀ©=%õ‹7@yjø\Ãğ\ã Ò—\êKÀ;Ö¶À¶\êŒ}(\î(´o˜\Ş\"ı(´½#­I\ÚÈ¼\Û;&f\r8\ï2/3\0\ìc.şã—šÿK·Ğ„¦`™fZg\Úö¥rK¹\'\Ø\î”C²¤ö\"M\Ô\åg\í¢v|¾ÈŒğcP~*45\ä€J¢c£ƒA]¦_¡\É\'Â¦\×ù­‘‡ú—*\ê¬şÑ¬a5S¢S” ô™\ĞmÁ=Pº?˜L€\à\å2˜F\ZÁö“|HÎƒ”õ®³\Îóò€+Ñ•1wÚš\Ùü fŠ)t\ë\Øø\ïËŸ¢ª³ºYº™©b:˜+¥¨)\n1e¶\ÛlÀù…ù\n\ËxH\Ú\êœ\à<\r\ÆY\ã\ëC\Ñ%…W\ÆW‚Ò‡ƒ_„vAY\ß!\r‚=•®\Ñ$} Ü©\è\ë\Ú\Í\ÚFßª|¯Œm‘~T_¦§¤t©\Ì+¥\ÒJ0\İ&-^y—X)ı¶³M\î\î\'-\ïY~ogkC[+ğ>nûÅº\n\â\Ú\Û\'9ZBò\ç \çrˆŸ\å\ĞÏ‚k¥¹½\Åò­\Ò1©\rğ\×r^K\Ê?J´º!@uy€4K\Ü úm¼\\n~\n¬\Ç\åò£;\Év½\èõ¤[ *@¢	\Ï\0+y;ˆ‡\è,\îF²‚v€.®¤>ˆ»˜\Ê6i\Ì÷\ÏÑ•®€‰5T5V0q\é\Îaşƒ\é3Ù¡oƒ\Ğ¥¿²‚)wG\İœ¦l^	\êpı}\äu÷\Ïğ/\ß\ä\Èôˆ\ÌóÊŸ•Í¢¢•v+(3 :E{Q\Ú0}·\î-Q÷\è÷€ü¦4_ZR7±WTB°‹rk´#ø~	/§C`h´v4\nLg[€5\ÜI# R}ü\æ\å:ö5­7_g+›!2Pm«‡ü•\ëü7Â¡óU\Øs.wYN]8i.	7ƒ2Ohq\è,¨\ßk·h½À¾\×|›y¤½\æ~İ“WŒM–S4¸rnÊ©\ïAÌ˜>1€se§yˆrvŠg©Z\éó\\\êA¸|‰/Å­WKK$Np|\èÌ‡\Ät§\Ë\é‚Ü·ü±ş\ã\à\Şş‚*/)‹ \è»@z Šn\ì®||ÂŸEúA\ì\"{\ÛC 6rZœ\ÑXÄ“À?\Êé´µú0ı.ÿª~¢†!o¼¿\Øÿ!œ\Ú_Ò¡\äœ¿­üdùğMŒ\Ü\Z¾¤ûDQ¼S­µ¬Ã öIÏ‹1È¨\ãi\î	A\ÌJ›l\Û\â£Å“\Õõ;ôwEEc+Ç\×/İ¯U\Í\ÒVu`®9M‰\ë™\Ï<P_Ó·k?Ct:D\ëÁ›••\ÑO øRô–\è\ÕxV\é¯\\	‘\íJ‰z\Z\";\ÔR\å,Db\Ô8U@´½6O{ğ`Á\n\æ÷¤\Ò\0˜0Ó\âNq/H¥¢RDª\Ïıl¶\ä\ï\å\í`ÿX¾V¾¬_\Ê\Û\å3`ûE>$çƒ¥\ÔTb\ÒÀô¸X.­\ÑB$z®^‰Ÿ¿\'›š%¶\êd\áU{…2	ˆ¢£Ruc¬y2­\êhSõªkÿø³z´ºÎ¯\æœ\å\è?ü[\Ü¥O\äZ½d][ñk\Åğ}\İo\ß\0ËŸ;\Ş\åø(\Øûi^f\îGU3;š¸\Å,û\íXF©R„„\æm¦»L#Á¼WºWz,gL\Ê\ãÀùd\Õ\éQ\îk­Ó­_C\Â\Ïí‡¡\Ö\r§¼¿@»{\ÓN¥?m¦¤¦|u\Çd\ÆN\0\Ë9S®)\0l`÷ò[k\Ë\ËM\é?-5ªP\â\Õú\à\×E¹\rs>µ\çN?pú\Ø|ú\Â-¾†¬E¢\â{ŸU\'*#Á$‹I\âH\î;\ÜA\Ç\ë3¶e\Ü7¬«W\Ü`)tx5ı‘t’>v6u>\æ\í\Òİ¦Q@K’I\á?\æ}ú?–À\ëLƒ’W‚÷¯€½­òrrï‡•£O^yblzû\ÂWç­5±â±Š0¹\Äb:4ô\Æõÿ®+©ã®»ºT÷B\İw¡±š\Ğ-a	¸W[z[FiŒ´BZúµz}½6\ÏD\'E‡C^±?\Ó\Z~ı6oQn=\Ø\ØñÜ«\çÁ\î	¹19/B\îl_¹ÿ°N—;™úAsW\âuI+¡\ï‹\r·5|z\ä\×}µ^7h\àŒ\ë·L;\ÅY)Ÿß­\Ã\á¥Àÿ\Êô/7öLCĞœD’€\ÃP\0z²ş&¯ixpƒ\Ï8ı)P\×h\çô öÒ›iu@O\×\ß\â\rºŠQ\ä\Ò\Ï\Òn¶ˆab8Hm\Åñ\è\Ë9¡ı¨şƒŞ\Ùú; ú\ÒP4¶r?€+ªz\ì¡BĞ\è…ğ[¯]C•\İÿº|\Şa—%½-µôd8s´ô³\Ò^ğ½trÒ‰o`¹8>ùøWphnAJş§ m\çD¸*,\Ù\Ä´ym×€÷\ë5¶ûÁ\Ó\Æ*Y›€\ëœ\å”E\ï@\ÛÛ¶µ;\Ù\ÖÀvxZY…µ\Ø&È­\ä\ëÁo\Ò\åğn²ö±>	µR½C½_A\æ@o\È\Û;v8e°l06e½i@ƒK=Zÿ<pÕ\ï3ö³\"\Ë\Õ,õ\0œnYº·\äIX?ølÊ™`\Í\àÓŸ:\r‡FL,ÁŸ1G²WÕƒ¿{’u±u´ŒMê–¼nx¦^¿úv¸n]\Ê:ó¡\î”\Ø\é±Á>Ani¾X™?\\nVqŠ“9¡\Õ\\\Èúª\â\Õò°ñ—ó\Û\ÏÕ‚5oúñTö\Éû1·T¼\Z¾\Z\\\ã-‹-Û¡\áÑ¸+\âgC[)µU\Újh}KÊ‰”¡¾\Ö\İ\Ö=l‹\Í×›‡B´H¬’\Ø`\Ã`%œ™Sj.]{\Ç\ç9r§\ÂÁ!\ãóÈ\ç‹úV€¶_/\Ös!c˜ûE\Ïn\èZ9;³ô\Ú`O\Ãw mrj\Ç\Ô_ ön[¼½\Ë\Æò»\åD\\~ø¿|¥\Õ\\½%bEU\Ç	UY°6 ^b€+I%•ßš\ÓgQA°Ÿ|ò€“Sz©^Õ‘¥z©X¸DUùEÍW¨jF¦W\èa\Âü6Cÿ›.…\Z.\r}6ıõŞ¨X\è?œ>™¢|w\ëñ¦\Çnƒ_óòn\È\İ\0ö|ù!y24\\\Z—\Z?	š\ÎNœš„zÅ±?Å¦C\ìB\ÛÕ¶\á\à9a=jUÀ³\Ë\Ú\ß6\Ü{,-cAİ¨?¤…lg\Åw#\áTaI\ë’_¡¨O°gÀiu\İ9\î\ĞfaŠ9e\Z\\q:¹^\Ê<ˆı\Ú\Ö\Ù>8\Ç\ã<ùo_\îï§º£’~%\éz2”\Í	=\ê{Í™–£À\ÊÚ§¦\Ü?=¿\êœ²›Wü\ì\êxı:\íj0“–K?Cm·÷HL¸¶Of—:y\Ğktƒ\ëX u¿”£)C f„õ#\Û\îMEk Mõı\ÅH´ú\ï	¡}\'#ô\á\à{/|_¤3y´\è™B¬/;›}¦5l\ìu\îsg\àd|É–\âû!\Ø(Z?j{ó;æ¥2Á•\à\ZuG\Æs¤”ºö»bÁv\ì57„hT}U\0eCC½C™ûºÿq_3¸\è«hRqŠ¿ƒ[¯9\ÂHò98c\á\Êø”5©\×B\Ï&õ\Ôgfe¼\é7¸\'x~9S²Jñ@“ê–¡¿“¿Î³[Í“nM@\Ì\Õıøÿ\å\ï”WÌ¯şxü¿ñÿõù_¾M¶^A\èÿş÷†ß“X\Ã]b¸\Ö[›[úClw{¢m\Ä\\°-¶\09N\Ò%˜\ZIHó uŸ»Àõ5\\95efjwhÿQz~z6x\ÚX[\ßû\"¹|7XŸ5ƒ`*—\Æ\nröù\Úûƒ#\Â\áWÁ>9ßŸ;NEK†–(P¯Gl~\\/ğ^´\æ[C½•1£bûAÌ¶1¶ù \àq±\çR\Ö?9F1Å \Ö\Ó\Ş\×@Y‹º.¬¬x½üj¸Ğ \â­r\r\Ê\ÊB}B?ƒv­¾@›\âƒ¨\0û›\æI\æ÷ \Ö@Ïş\Ğ(=~_üA\Èl\á}Àû*¸\í–\á–\ïAzT\È\Â´&…ŒÀûÿÊ†Œ„‡W\ÅTp<hV\Ì]¡\Ş\Ã1“c\æƒoCZ³ôe\êWF¯\×\ÒW\Ã9oY§²‹\àË‹$†_€s\ÛÊ–”}\rù[ü\rı\Z80·4;Àô–tD\ZÚ‡ú\ãúW¤¨\Ç t£zH©\r‘ùjµ;˜KHc Urww¿\nW¸“Û¥,‡n÷fö\Élm†¤Ny’\Í\Îa®A6I©9ĞŒ’ø\İ\'^\0l0ü½Bwz€\ã-yù\0$®s$;ûBR–³\Â\Ù\r\Ü\Í,™ŸP¶(\ß@x³2V\ÒJ\ÑUô„\Ø\Çm6$¾\æX\ï<	\æ÷Mµ¤óÀ\Í`:(Ÿkµ>±«›\Õ\åP4/ğ@ d¿^\Ñ\İ7²‡ø^ñ5\×M–\\\ËPV\Z\î¡j_5ô¡ºÁ 4¡\\Á§\æ&¸…\\€\è\ÚEõ”\\\Ì	>	9)>\É\×ò¿ñ/®|B¯+c•\Ğq‚\0HıDŒH\ï\Ó\Ö­³ v±w«÷+¨+Ç¾\Zó0$q<\è(y›t·4\n¨M\'\Â\åEÿ®$’òd\ég\é\Ä~g_g/†\í“&\'\í\0Q_\å°’×›š\ÂŞ·ò\îË‹³¯•N,Eº€ÿ\\\ä\Å\È\àK‰x#\à$ı¸	¤f\Â.4J™’\Ö}¦ñ¦G )\Ñ1\È9Rº„+šIj’t\n®\ÊII\ßm3S;¤M‚ŒÅX°Í“‡\Ë-\ë©G}ªrRş€-F#\0—ƒFUe_ò½\Ò÷\Ò~H2;ƒ\Îş©»·\ç^Hô;8gÁ\Ùz¥CJÀùú\å›Ëš\Â\Ñ#E\Â(dñ\Ç\Ü¶rGy(¸;Y\æ[?\0\é\nQKÔ‡ğ;ŠKeC7„\Æ@ù°P‹ğU¸_©½´\çt³¾ô™”‘t\æSıc{\èÄ@;Š(\Z\à%ª\\\Ë!»7\Ùdƒr^jEP\Ñ#|U8J®&\ÓÀ\×+|M8Yói9@-bqy”´Ô´\Î9¾rö„Z\ç<}½q2\Şõ…{8Fš—›\ï1\Å{TmIı[tş\ÙjÊ´^§\'7€ù)\Éô0$\Ş\ê¸\ÑyZõM\êr<--\å\Ö!\í\Zw…{Y_XQ\è€óO——–¥@ñ˜`Fğ]%Dw+\í@i®ß£u)[\çÀ>R,¯†¸úö\nGCÈ˜\ài\á>\rõ\îu\Å=M+®J\Ü\r\Ç\Å\Ç}	)3]\×°Ÿ0·ºP›1üa÷·\á0—T\ĞDGñ!Ÿ@|¶ı;\Ç¨\íñ\îò6\Ú\ßz{Ã;\İw\Ôw\ä\Ş\á/ô/„½½ó\ä\Ş\Î-•– İ¬û´§¡–\ßóƒ\×\Ö+\å¯äŸ ¬N¨i\ÈÇ»Š\"pşºòeOCEûp›pxŸ)y©\Ø/y·tdS¬xC¼^ıúå·¬öK]\\3­9^°%sx\Ø\Ïx\nAŠ²ğƒüˆ©•\Ô	\äNRoI€¶K/Ğ³ÀµÎ²Ë¼\Ò^r¿\ê\Ò }Œg³\Û	q{m»\ì\İÀ4A\\”~\êC:F\àı½Õœs}?mh\æL\éZH\Èq\Ìu¼Î€e¢y	$…]S¡\Ñ\ãqµ\ã\Â\Åñ¾6qP´6\Ğ:pøz†F>Ps5S\Éñ4=h\Îbó\0K*$vns\n¨ı˜·½\×šç¬§$vtôr\×–—,Ÿy–ô¤\éJ ¸ºgw\äÏ©\Â0°Áp9¨\ÄDp·µN°|™½c6\Çô…†Ä­‰\Û\0ç‡–ÿX–\r\ç•õ(\ëg¤Ò£¥§@ô\â*q|9\á/Ã¯@1\Ù1\İÀ”ó\Ì\åP²><‡C/ü\'7•\Ì-ş‘h\ä#0}$¶‰ı`\ßj~MN{©ü†¹˜Ï˜&š²@ô»i\0\'Ÿ’K=Xÿ\äj2\È\0s#\É%%C\\¶}‹ı<d\îğˆ\r_Š»*^‹\Çt\Èô6D\Æ)ó\Õõ›o¿Ó¶2wx?©©?¸\n\İ‚\ë\nKÔ’¢—X\ÌR Ÿ1Œ»\Ôù7VI„\è\'ôŠÁ\ÔNJcÀ¹\Ú|\Ìrl[½#\åŸ!\é\×\n\çhúiô\Ä ò‰\èÑ¹\è\ZY\r¡8eªRZ{½–\n–\'\äòtp´\Üj\ŞNÖ¯m_ƒ\Óky\Éü9˜¥!¦© z‰\é	,\åy¦€\Ñ\Ç\à\çO++û\ëdAÿ	NRB	¨\ÃõZ+\È}Æ—\åŸ\Û\Ò/f\İ«[œ~ı\Ô6Ø•}_ö^(¾!øs`\ØlrPvA\Â\ã$gHX\àXn\Ïë§¦\ë\å\ÛÁ÷kD‰œ„‚peÊ‹Pr_ğ\×ÀG.V_TGƒ\ç õ\ë3Ğ©}­uµ†@ÿW]\ß8º)™)u6ABCG¹£)ˆÆ¼#fsù´¦<D! ´\Ô2´8(~>8,\ĞNô.¾¿8\n\ÇOS\Ô²{úvû^†\Êm‘ñ‘;À`h~šH,M¼\ÚLLy4\Õu#1½c?ù\Z)IªGU\ÖkÂ¥¾\Èÿ 5\ï)oU\ã\ÑKÔ§p/­i\r\ì\"›Ğ\Ò;\ëWö˜ş£ş=h+õ³úq\Ğ\Û\ëñ§x™© \Õ.Rš°/ˆF¼-\Ş\å·S\àj\ÊG/Q·16.\'õˆ%L™bº4\â?w\\iM—%z—Cñ‰\àÍ¥P\î:û\ØÕ· \Ô|787GN…œY¾‡+J@úN¬AI×\ÔF‚2RûQû´\Öz]€ùv\Ó\r¦[ 9\è\ìš\ru\ïŠi\Ûjz½\'À\ÙÀ\ÜÛ²\Ä÷E@.õ ı“\ÆU\ç\\\ËC¤EÒ·;À6\Ñ~š\Ê	\ÔO]I®;¡¼}¸O¸¬Q¢GAŒa/B¼\Çq¿\ã}Hğ;N8nS¼´SLê±€Å—ú\âş\ÕÁ2B„@_¬\æU[ ‡;ªúCHuDŒ8\Ò\"E¤\0OĞ‚®€›9ô\n°\0Gğœı¢ŞŒ\æT•“F¸\ä[\Æ\Ø`¸ù«—\æ:QGO‡Šö\á+\Ãn89¥$Z2¶hYg/t…\í«.v¸ø)\ïSœ]ô,”\ÄU5 uR–*³A9®=¥‘HŸˆ\Å@°-•w\Èg ñ\ç2g´-Kmö\r\\¿ª^Q½E\ĞñxFL­%ú…«™ûQ~wŠû€\ä\ês¤/753§ila3h/\ë\×\ë×\Ğ5=ªMŸ¦½\0Ê³\Úm5hvİ¦K`rˆ)\Ò4°Äšt“\äC\ÒE©˜Dºaôv6ü¡Œ°Áp9ª\é·„ƒ\â(¸o´,¶~\rŠ}8\îzn\æ,CÁ“m\íb­\r©O¹^q\Ù\à\Üe–¥Cab R¹ü\í#E‘2\Ğ:\êº\î\Û]ò³ò^ˆËµrLƒC\âö\Ç…\İ\Ò\ŞO\Í\Û&nMú\â\Ú\ë;fƒt¯ˆ+¤\Ë4ğÖ¨™BL©\êÁnJ’l\Â\r¦\ÚxE˜KJ€>M\ß\Âf`	‡9hD\î¦À®¦)ıî†¿cl0\\\Î~;^/Ÿ<Ğ¦\ê\ÛôPùLtOd9ˆ\Ê•yp~oùGe7À¹¤²neù=\Èw\Ø÷”\Ş¼1˜\nŠI³k*8n2\'™\ÛB\Ê!\×/.\êoŠm7\ZvŒ»/~¤?\ê™\æ>®‰–%– ¦ò³\Ø¸ÿ¢\ç×¨©ßµT\ço\×\Ìlköşjö\Õd¿\Z8cl0\\\Îj–V[W5ı—^]DOp½iy\Õr,#M•¦\Ö\Û\Û~\Ø~Ô»)fv\ì(\İ\ZJÙ«O\ç;\Ê2\íˆv¬%ò£¦Á\Ó\Çf··‡¸Q¶{mğÖ²³nûL¹ù6÷p‡h¸°’~©\áw ı¯ô†Ë€\r†¿’FÄ“\0b\Z›\Ä6°>aZ#?\æaÒ“¦\à~\Ç2İ’I1\Î®\ãM\×\ŞS_}ƒ\Ş^O\é*±Oº\ZÌ±¦×¤e`şLZfºLM¥­\â<ˆ[yL4ZDF\ËEƒ\ád,Ae5\Ç^úª’¶8ZuJ8\È`¹\0 ´&‰d #µ¨t%“L Mõ±z\Î\ê¥f#ğ\Z8cl0ü•\Õ\ìe\ÆV\ÕMrMu`­nPñ¿ÿ‡\ÏŒ€k0\\F\06şŒC†Ë‘ho0\Ã%``ƒÁ`0.#\0ƒÁp	\Ø`0†KÀÀƒÁ`0\\F\06ƒ\á0°Á`0—€€\rƒÁ`¸Œ\0l0\Ã%``ƒÁ`0.#\0ƒÁp	\Ø`0†KÀÀƒÁ`0\\F\06ƒ\á0°Á`0—€€\rƒÁ`¸ş?1\\‡Nq-\Ş\0\0\0%tEXtdate:create\02018-01-10T10:33:51-08:00\ŞÀ‚\0\0\0%tEXtdate:modify\02018-01-10T10:33:51-08:00ğƒx>\0\0\0\0IEND®B`‚');
/*!40000 ALTER TABLE `captchas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'admin_bip32_extended_public_key','xpub69xzQHyJZ1xzgryr8iPexrwzWDUu7CkQFGL515HKYvaXzf7Hqm4T87BkhiQ29dTAWkBToXyJNLrbhxzYA7gBpirmbFwp13EvRxXgXPiWrM3'),(2,'admin_bip32_key_index','0'),(3,'admin_bitcoin_address','n34itjA8UExRfHjxhHxT3VWoCi43UHN2wx');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `iso` char(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`iso`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry_payment`
--

DROP TABLE IF EXISTS `entry_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry_payment` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `user_hash` varchar(25) NOT NULL,
  `amount` decimal(20,8) NOT NULL,
  `time` varchar(20) NOT NULL,
  `bitcoin_address` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_hash` (`user_hash`),
  KEY `user_hash_2` (`user_hash`,`bitcoin_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry_payment`
--

LOCK TABLES `entry_payment` WRITE;
/*!40000 ALTER TABLE `entry_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `entry_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(65,30) NOT NULL,
  `amount` int(11) NOT NULL,
  `shipping_info` text,
  `finish_text` text,
  `buyer_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `shipping_option_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `buyer_public_key` varchar(66) DEFAULT NULL,
  `buyer_key_index` int(9) DEFAULT NULL,
  `buyer_refund_address` varchar(35) DEFAULT NULL,
  `vendor_public_key` varchar(66) DEFAULT NULL,
  `vendor_key_index` int(9) DEFAULT NULL,
  `vendor_payout_address` varchar(35) DEFAULT NULL,
  `admin_public_key` varchar(66) DEFAULT NULL,
  `admin_key_index` int(9) DEFAULT NULL,
  `multisig_address` varchar(35) DEFAULT NULL,
  `redeem_script` varchar(500) DEFAULT NULL,
  `unsigned_transaction` text,
  `partially_signed_transaction` text,
  `dispute_message` text,
  `dispute_unsigned_transaction` text,
  `dispute_signed_transaction` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `multisig_address` (`multisig_address`),
  KEY `buyer_id` (`buyer_id`),
  KEY `vendor_id` (`vendor_id`),
  KEY `product_id` (`product_id`),
  KEY `shipping_option_id` (`shipping_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payout_address`
--

DROP TABLE IF EXISTS `payout_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payout_address` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `address` varchar(40) NOT NULL,
  `user_id` int(9) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout_address`
--

LOCK TABLES `payout_address` WRITE;
/*!40000 ALTER TABLE `payout_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `payout_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `hash` varchar(25) NOT NULL,
  `name` varchar(40) NOT NULL,
  `parent_id` int(9) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `hash_2` (`hash`,`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(65,30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tags` text NOT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `code` varchar(12) NOT NULL,
  `image` mediumblob,
  `Category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_shipping_options`
--

DROP TABLE IF EXISTS `products_shipping_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_shipping_options` (
  `product_id` int(11) NOT NULL,
  `shipping_option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`shipping_option_id`),
  KEY `shipping_option_id` (`shipping_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_shipping_options`
--

LOCK TABLES `products_shipping_options` WRITE;
/*!40000 ALTER TABLE `products_shipping_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_shipping_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_options`
--

DROP TABLE IF EXISTS `shipping_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(65,30) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_options`
--

LOCK TABLES `shipping_options` WRITE;
/*!40000 ALTER TABLE `shipping_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `profile_pin_hash` varchar(255) NOT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `pgp_public_key` text,
  `bip32_extended_public_key` varchar(300) DEFAULT NULL,
  `bip32_key_index` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'Joe','234','123',1,NULL,NULL,NULL),(6,'test','$2y$10$3ln4vioUET1iUeUbyWRIMuXgWH//a4HtaaTsVlOoxxjpjCtAcOW/G','$2y$10$fy4wZOZt5RC0pYxJjKs7Z.nwLZxxjHaVO4hFslfWh0jA06hmBKeuK',0,NULL,NULL,NULL),(7,'cack','$2y$10$6wzSSOuJKxFku9MhC0HxHuIFMQrjK6ijXjibHTlF2jdMXl7otuX26','$2y$10$n4tjZFrJ2DKg28VRrc48H.e2dwDi.E2Sf0DHLKmlwLpdwVDufUKIq',0,NULL,NULL,NULL),(8,'admin','$2y$10$Xsy460RJsVYY2o2R1SkaROBLcIqu5xyHtH0sfDpnfnTYQPajhOcwa','$2y$10$z3xWjoUag2GlGC24Goj0d.Om5yi.LJBz6mwhcBriK.HKWMA6lRHaO',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_feedbacks`
--

DROP TABLE IF EXISTS `vendor_feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` tinyint(1) DEFAULT NULL,
  `comment` text,
  `order_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `buyer_id` (`buyer_id`),
  KEY `vendor_id` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_feedbacks`
--

LOCK TABLES `vendor_feedbacks` WRITE;
/*!40000 ALTER TABLE `vendor_feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_feedbacks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-10 12:54:27
