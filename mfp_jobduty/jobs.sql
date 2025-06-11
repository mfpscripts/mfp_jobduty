INSERT INTO `jobs` (name, label) VALUES
  ('offpolice','offduty-PD'),
  ('offambulance','offduty-MD')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('offpolice',0,'recruit','Recrut',200,'{}','{}'),
  ('offpolice',1,'officer','Officer',300,'{}','{}'),
  ('offpolice',2,'sergeant','Sergeant',500,'{}','{}'),
  ('offpolice',3,'lieutenant','Lieutenant',700,'{}','{}'),
  ('offpolice',4,'boss','Chief',800,'{}','{}'),
  ('offambulance',0,'ambulance','Notfallsanitäter',100,'{}','{}'),
  ('offambulance',1,'doctor','Mediziner',200,'{}','{}'),
  ('offambulance',2,'chief_doctor','Mediziner-Leitung',300,'{}','{}'),
  ('offambulance',3,'boss','Krankenhausleitung',500,'{}','{}')
;