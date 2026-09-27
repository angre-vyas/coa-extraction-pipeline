PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE queue (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        query_type TEXT NOT NULL,        -- name / year / regno / state / city / pincode
        query_value TEXT NOT NULL,       -- e.g. "Maharashtra"
        status TEXT NOT NULL DEFAULT 'pending',  -- pending / in_progress / done / failed
        attempts INTEGER NOT NULL DEFAULT 0,
        last_error TEXT,
        created_at TEXT NOT NULL,
        updated_at TEXT NOT NULL,
        UNIQUE(query_type, query_value)
    );
INSERT INTO queue VALUES(1,'state','Andaman & Nicobar Islands','done',2,NULL,'2026-09-27T19:41:07.583164','2026-09-27T19:41:43.553189');
INSERT INTO queue VALUES(2,'state','Andhra Pradesh','done',2,NULL,'2026-09-27T19:41:07.585055','2026-09-27T19:44:21.849530');
INSERT INTO queue VALUES(3,'state','Arunachal Pradesh','done',2,NULL,'2026-09-27T19:41:07.586060','2026-09-27T19:53:25.981615');
INSERT INTO queue VALUES(4,'state','Assam','pending',0,NULL,'2026-09-27T19:41:07.587295','2026-09-27T19:41:07.587295');
INSERT INTO queue VALUES(5,'state','Bihar','pending',0,NULL,'2026-09-27T19:41:07.588351','2026-09-27T19:41:07.588351');
INSERT INTO queue VALUES(6,'state','Chandigarh','pending',0,NULL,'2026-09-27T19:41:07.589469','2026-09-27T19:41:07.589469');
INSERT INTO queue VALUES(7,'state','Chhattisgarh','pending',0,NULL,'2026-09-27T19:41:07.590727','2026-09-27T19:41:07.590727');
INSERT INTO queue VALUES(8,'state','Dadra & Nagar Haveli','pending',0,NULL,'2026-09-27T19:41:07.591774','2026-09-27T19:41:07.591774');
INSERT INTO queue VALUES(9,'state','Daman & Diu','pending',0,NULL,'2026-09-27T19:41:07.592566','2026-09-27T19:41:07.592566');
INSERT INTO queue VALUES(10,'state','Delhi','pending',0,NULL,'2026-09-27T19:41:07.595428','2026-09-27T19:41:07.595428');
INSERT INTO queue VALUES(11,'state','Goa','pending',0,NULL,'2026-09-27T19:41:07.596788','2026-09-27T19:41:07.596788');
INSERT INTO queue VALUES(12,'state','Gujarat','pending',0,NULL,'2026-09-27T19:41:07.597959','2026-09-27T19:41:07.597959');
INSERT INTO queue VALUES(13,'state','Haryana','pending',0,NULL,'2026-09-27T19:41:07.599430','2026-09-27T19:41:07.599430');
INSERT INTO queue VALUES(14,'state','Himachal Pradesh','pending',0,NULL,'2026-09-27T19:41:07.600530','2026-09-27T19:41:07.600530');
INSERT INTO queue VALUES(15,'state','Jammu & Kashmir','pending',0,NULL,'2026-09-27T19:41:07.602400','2026-09-27T19:41:07.602400');
INSERT INTO queue VALUES(16,'state','Jharkhand','pending',0,NULL,'2026-09-27T19:41:07.604443','2026-09-27T19:41:07.604443');
INSERT INTO queue VALUES(17,'state','Karnataka','pending',0,NULL,'2026-09-27T19:41:07.605657','2026-09-27T19:41:07.605657');
INSERT INTO queue VALUES(18,'state','Kerala','pending',0,NULL,'2026-09-27T19:41:07.606794','2026-09-27T19:41:07.606794');
INSERT INTO queue VALUES(19,'state','Ladakh','pending',0,NULL,'2026-09-27T19:41:07.607899','2026-09-27T19:41:07.607899');
INSERT INTO queue VALUES(20,'state','Lakshadweep','pending',0,NULL,'2026-09-27T19:41:07.609089','2026-09-27T19:41:07.609089');
INSERT INTO queue VALUES(21,'state','Madhya Pradesh','pending',0,NULL,'2026-09-27T19:41:07.609964','2026-09-27T19:41:07.609964');
INSERT INTO queue VALUES(22,'state','Maharashtra','pending',0,NULL,'2026-09-27T19:41:07.610839','2026-09-27T19:41:07.610839');
INSERT INTO queue VALUES(23,'state','Manipur','pending',0,NULL,'2026-09-27T19:41:07.611758','2026-09-27T19:41:07.611758');
INSERT INTO queue VALUES(24,'state','Meghalaya','pending',0,NULL,'2026-09-27T19:41:07.613070','2026-09-27T19:41:07.613070');
INSERT INTO queue VALUES(25,'state','Mizoram','pending',0,NULL,'2026-09-27T19:41:07.614509','2026-09-27T19:41:07.614509');
INSERT INTO queue VALUES(26,'state','Nagaland','pending',0,NULL,'2026-09-27T19:41:07.615692','2026-09-27T19:41:07.615692');
INSERT INTO queue VALUES(27,'state','Odisha','pending',0,NULL,'2026-09-27T19:41:07.616715','2026-09-27T19:41:07.616715');
INSERT INTO queue VALUES(28,'state','Puducherry','pending',0,NULL,'2026-09-27T19:41:07.617616','2026-09-27T19:41:07.617616');
INSERT INTO queue VALUES(29,'state','Punjab','pending',0,NULL,'2026-09-27T19:41:07.618657','2026-09-27T19:41:07.618657');
INSERT INTO queue VALUES(30,'state','Rajasthan','pending',0,NULL,'2026-09-27T19:41:07.619620','2026-09-27T19:41:07.619620');
INSERT INTO queue VALUES(31,'state','Sikkim','pending',0,NULL,'2026-09-27T19:41:07.620491','2026-09-27T19:41:07.620491');
INSERT INTO queue VALUES(32,'state','Tamil Nadu','pending',0,NULL,'2026-09-27T19:41:07.621489','2026-09-27T19:41:07.621489');
INSERT INTO queue VALUES(33,'state','Telangana','pending',0,NULL,'2026-09-27T19:41:07.622343','2026-09-27T19:41:07.622343');
INSERT INTO queue VALUES(34,'state','Tripura','pending',0,NULL,'2026-09-27T19:41:07.623463','2026-09-27T19:41:07.623463');
INSERT INTO queue VALUES(35,'state','Uttar Pradesh','pending',0,NULL,'2026-09-27T19:41:07.624385','2026-09-27T19:41:07.624385');
INSERT INTO queue VALUES(36,'state','Uttarakhand','pending',0,NULL,'2026-09-27T19:41:07.625487','2026-09-27T19:41:07.625487');
INSERT INTO queue VALUES(37,'state','West Bengal','pending',0,NULL,'2026-09-27T19:41:07.626435','2026-09-27T19:41:07.626435');
CREATE TABLE architects (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        content_hash TEXT UNIQUE,        -- used to detect + block duplicates
        name TEXT,
        registration_id TEXT,
        registration_number TEXT,
        year_of_registration TEXT,
        address TEXT,
        state TEXT,
        city TEXT,
        pincode TEXT,
        phone TEXT,
        email TEXT,
        status_field TEXT,               -- registration status, e.g. "Active"
        raw_fields_json TEXT,            -- EVERY field/column we saw, untouched,
                                          -- so nothing is lost even if our named
                                          -- columns above don't cover it.
        source_query_type TEXT,
        source_query_value TEXT,
        source_url TEXT,
        is_duplicate INTEGER NOT NULL DEFAULT 0,
        is_incomplete INTEGER NOT NULL DEFAULT 0,
        extracted_at TEXT NOT NULL
    );
INSERT INTO architects VALUES(2,'ce7fc31f27c333f80fe11e843fcec6a6af0c10a45ede16d2f6737fedfa19b8f8','Mr. Pill Rebia',NULL,'CA/2019/114739',NULL,'Pill Yater Appartments, Yazali, , Lower Subansiri, ARUNACHAL PRADESH - 791120',NULL,NULL,NULL,'8414824499','pillrebia16@gmail.com','No','{"S.No": "1", "Architect Name": "Mr. Pill Rebia", "Registration Number": "CA/2019/114739", "Disciplinary Action": "No", "Address": "Pill Yater Appartments, Yazali, , Lower Subansiri, ARUNACHAL PRADESH - 791120", "Mobile": "8414824499", "Email ID": "pillrebia16@gmail.com"}','state','Arunachal Pradesh','https://coa.gov.in',0,0,'2026-09-27T20:04:53.939815');
INSERT INTO architects VALUES(3,'706e1a8ad16c43d4a8a67a7d7d47349db7fa1939ce6e9f1f093d28de47bf77c2','Mr. Dooda Ete',NULL,'CA/2005/35637',NULL,'DE & ASSOCIATES, OPPOSITE CONGRESS BHAVAN, ABOVE NEDFI, NH-415, GANGA, Itanagar, ARUNACHAL PRADESH - 791111',NULL,NULL,NULL,'9863529743','doodaete@yahoo.com','No','{"S.No": "2", "Architect Name": "Mr. Dooda Ete", "Registration Number": "CA/2005/35637", "Disciplinary Action": "No", "Address": "DE & ASSOCIATES, OPPOSITE CONGRESS BHAVAN, ABOVE NEDFI, NH-415, GANGA, Itanagar, ARUNACHAL PRADESH - 791111", "Mobile": "9863529743", "Email ID": "doodaete@yahoo.com"}','state','Arunachal Pradesh','https://coa.gov.in',0,0,'2026-09-27T20:04:53.945206');
INSERT INTO architects VALUES(4,'e128be0c124b3cc9c31ebd4eaa286cbbbd3c96dca4260c7d9d59e5e615ef39d7','Ms. Ipsitha Bayapu',NULL,'CA/2017/85621',NULL,'Mrs. B.ARPITA, C/O PRINCIPAL, I.T.I ROING, Lower Dibang Valley Dist., ARUNACHAL PRADESH - 792110',NULL,NULL,NULL,'9436836138','ipsithab@gmail.com','No','{"S.No": "3", "Architect Name": "Ms. Ipsitha Bayapu", "Registration Number": "CA/2017/85621", "Disciplinary Action": "No", "Address": "Mrs. B.ARPITA, C/O PRINCIPAL, I.T.I ROING, Lower Dibang Valley Dist., ARUNACHAL PRADESH - 792110", "Mobile": "9436836138", "Email ID": "ipsithab@gmail.com"}','state','Arunachal Pradesh','https://coa.gov.in',0,0,'2026-09-27T20:04:53.947552');
CREATE TABLE events (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        event_type TEXT NOT NULL,   -- search_performed / captcha_shown / captcha_failed /
                                     -- http_error / parse_error / record_saved / duplicate_skipped
        message TEXT,
        created_at TEXT NOT NULL
    );
INSERT INTO events VALUES(1,'captcha_shown','https://coa.gov.in/app/admin/captcha/php_captcha.php','2026-09-27T19:41:23.472973');
INSERT INTO events VALUES(2,'search_performed','day=2026-09-27','2026-09-27T19:41:43.537242');
INSERT INTO events VALUES(3,'captcha_shown','https://coa.gov.in/app/admin/captcha/php_captcha.php','2026-09-27T19:43:43.580371');
INSERT INTO events VALUES(4,'search_performed','day=2026-09-27','2026-09-27T19:44:21.830264');
INSERT INTO events VALUES(5,'captcha_shown','https://coa.gov.in/app/admin/captcha/php_captcha.php','2026-09-27T19:52:53.656346');
INSERT INTO events VALUES(6,'search_performed','day=2026-09-27','2026-09-27T19:53:25.946961');
INSERT INTO events VALUES(7,'record_saved','name=None','2026-09-27T19:53:25.969205');
INSERT INTO events VALUES(8,'duplicate_skipped','hash=565d240f5343e625ae579a4d45a770f1f02c6368b5ed4d06da4fbe6f47c28866 name=None','2026-09-27T19:53:25.971828');
INSERT INTO events VALUES(9,'duplicate_skipped','hash=565d240f5343e625ae579a4d45a770f1f02c6368b5ed4d06da4fbe6f47c28866 name=None','2026-09-27T19:53:25.974544');
INSERT INTO events VALUES(10,'duplicate_skipped','hash=565d240f5343e625ae579a4d45a770f1f02c6368b5ed4d06da4fbe6f47c28866 name=None','2026-09-27T19:53:25.976980');
INSERT INTO events VALUES(11,'duplicate_skipped','hash=565d240f5343e625ae579a4d45a770f1f02c6368b5ed4d06da4fbe6f47c28866 name=None','2026-09-27T19:53:25.979802');
INSERT INTO events VALUES(12,'record_saved','name=Mr. Pill Rebia','2026-09-27T20:04:53.943017');
INSERT INTO events VALUES(13,'record_saved','name=Mr. Dooda Ete','2026-09-27T20:04:53.946585');
INSERT INTO events VALUES(14,'record_saved','name=Ms. Ipsitha Bayapu','2026-09-27T20:04:53.949079');
CREATE TABLE daily_quota (
        day TEXT PRIMARY KEY,       -- YYYY-MM-DD
        searches_used INTEGER NOT NULL DEFAULT 0
    );
INSERT INTO daily_quota VALUES('2026-09-27',3);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('queue',37);
INSERT INTO sqlite_sequence VALUES('events',14);
INSERT INTO sqlite_sequence VALUES('architects',4);
CREATE INDEX idx_architects_hash ON architects(content_hash);
CREATE INDEX idx_architects_regnum ON architects(registration_number);
COMMIT;
