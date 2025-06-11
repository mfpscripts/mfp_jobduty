_____ _____ _____ _____ _____ _____ _____ _____ _____ _____ 
|     |   __|  _  |   __|     | __  |     |  _  |_   _|   __|
| | | |   __|   __|__   |   --|    -|-   -|   __| | | |__   |
|_|_|_|__|  |__|  |_____|_____|__|__|_____|__|    |_| |_____|
                                                              
                                           

## Requirements
- [NativeUI](https://github.com/Guad/NativeUI/releases)

## Installation
- (ESX ONLY): import the jobs.sql
- Add this in your `server.cfg`:

```
start mfp_jobduty
```
## custom jobs (only if ESX used)
----------- 1 ---------------------
go to server.lua -->
--> add:
elseif job == 'offYOURJOBNAME' then
        xPlayer.setJob('YOURJOBNAME', grade)
        TriggerClientEvent('esx:showNotification', _source, Translation[Config.Locale]['onduty_msg_01'])
--> right between offpolice and offambulance.

----------- 2 ---------------------
--> Insert into your db, into jobs, the samejobname with off before it (offpolice) and then the same for jobgrade same grades only with off before.
--> EXAMPLE:
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
--------------- THATS IT ---------------------------
(for more read the upcoming docs on https://docs.maxifaxipaxi.com/)

Visit https://mfp.tebex.io to see other scripts you'll love!


## ChangeLogs
Version 1.0
- release version

Version 1.1
- added QBCore support
- menu fixes with pma / salty ...











###############################################################################################

                             Credits goes to MFPSCRIPTS!

###############################################################################################