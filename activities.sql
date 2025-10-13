-- შევქმენი აქტივობების ცხრილი, რომელის საფასურიც უნდა გადამეხადა. რომლebic გადავიხადე მოვნიშნე 1
CREATE TABLE IF NOT EXISTS ACTIVITIES (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  done INTEGER NOT NULL DEFAULT 0  -- 0 =notpaid, 1 = paid
);
INSERT INTO ACTIVITIES (title) VALUES ('Chess'),('Vocal'), ('violin');
SELECT * FROM ACTIVITIES;

UPDATE ACTIVITIES SET done = 1 WHERE title='Vocal';
UPDATE ACTIVITIES SET done = 1 WHERE title='Violin';
SELECT * FROM ACTIVITIES;

SELECT * FROM ACTIVITIES WHERE done=1