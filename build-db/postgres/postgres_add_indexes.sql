-- ----------------------------------------------------------------
--
-- This is a script to add the eICU indexes for Postgres.
--
-- ----------------------------------------------------------------

-- NOTE: unless specified here or when calling this script via psql, all tables
-- will be created on the public schema. To redefine the search path, call:
--    SET search_path TO schema_name_you_want;
-- Restoring the search path to its default value can be accomplished as follows:
--    SET search_path TO "$user",public;

--------------------------------------------------------
--  ADMISSIONDX
--------------------------------------------------------

CREATE INDEX ADMISSIONDX_idx01
  ON eicu.ADMISSIONDX (PATIENTUNITSTAYID);
ALTER TABLE eicu.ADMISSIONDX
  ADD CONSTRAINT admissiondx_pk primary key (ADMISSIONDXID);

--------------------------------------------------------
--  APACHEAPSVAR
--------------------------------------------------------

CREATE INDEX APACHEAPSVAR_idx01
  ON eicu.APACHEAPSVAR (PATIENTUNITSTAYID);
ALTER TABLE eicu.APACHEAPSVAR
  ADD CONSTRAINT apacheapsvar_pk primary key (APACHEAPSVARID);

--------------------------------------------------------
--  APACHEPATIENTRESULT
--------------------------------------------------------

CREATE INDEX APACHEPATIENTRESULT_idx01
  ON eicu.APACHEPATIENTRESULT (PATIENTUNITSTAYID);
CREATE INDEX APACHEPATIENTRESULT_idx02
  ON eicu.APACHEPATIENTRESULT (APACHEVERSION);
CREATE INDEX APACHEPATIENTRESULT_idx03
  ON eicu.APACHEPATIENTRESULT (APACHESCORE);
ALTER TABLE eicu.APACHEPATIENTRESULT
  ADD CONSTRAINT apachepatientresult_pk primary key (APACHEPATIENTRESULTSID);

--------------------------------------------------------
--  APACHEPREDVAR
--------------------------------------------------------

CREATE INDEX APACHEPREDVAR_idx01
  ON eicu.APACHEPREDVAR (PATIENTUNITSTAYID);
CREATE INDEX APACHEPREDVAR_idx02
  ON eicu.APACHEPREDVAR (SICUDAY);
ALTER TABLE eicu.APACHEPREDVAR
  ADD CONSTRAINT apachepredvar_pk primary key (APACHEPREDVARID);

--------------------------------------------------------
--  CAREPLANCAREPROVIDER
--------------------------------------------------------

CREATE INDEX CAREPLANCAREPROVIDER_idx01
  ON eicu.CAREPLANCAREPROVIDER (PATIENTUNITSTAYID);
ALTER TABLE eicu.CAREPLANCAREPROVIDER
  ADD CONSTRAINT CAREPLANCAREPROVIDER_pk primary key (CPLCAREPROVDERID);

--------------------------------------------------------
--  CAREPLANEOL
--------------------------------------------------------

CREATE INDEX CAREPLANEOL_idx01
  ON eicu.CAREPLANEOL (PATIENTUNITSTAYID);
ALTER TABLE eicu.CAREPLANEOL
  ADD CONSTRAINT CAREPLANEOL_pk primary key (CPLEOLID);

--------------------------------------------------------
--  CAREPLANGENERAL
--------------------------------------------------------

CREATE INDEX CAREPLANGENERAL_idx01
  ON eicu.CAREPLANGENERAL (PATIENTUNITSTAYID);
ALTER TABLE eicu.CAREPLANGENERAL
  ADD CONSTRAINT CAREPLANGENERAL_pk primary key (CPLGENERALID);

--------------------------------------------------------
--  CAREPLANGOAL
--------------------------------------------------------

CREATE INDEX CAREPLANGOAL_idx01
  ON eicu.CAREPLANGOAL (PATIENTUNITSTAYID);
ALTER TABLE eicu.CAREPLANGOAL
  ADD CONSTRAINT CAREPLANGOAL_pk primary key (CPLGOALID);

--------------------------------------------------------
--  CAREPLANINFECTIOUSDISEASE
--------------------------------------------------------

CREATE INDEX CAREPLANINFECTIOUSDISEASE_idx01
  ON eicu.CAREPLANINFECTIOUSDISEASE (PATIENTUNITSTAYID);
ALTER TABLE eicu.CAREPLANINFECTIOUSDISEASE
  ADD CONSTRAINT CAREPLANINFECTIOUSDISEASE_pk primary key (CPLINFECTID);

--------------------------------------------------------
--  DIAGNOSIS
--------------------------------------------------------

CREATE INDEX DIAGNOSIS_idx01
  ON eicu.DIAGNOSIS (PATIENTUNITSTAYID);
ALTER TABLE eicu.DIAGNOSIS
  ADD CONSTRAINT DIAGNOSIS_pk primary key (DIAGNOSISID);

--------------------------------------------------------
--  HOSPITAL
--------------------------------------------------------

ALTER TABLE eicu.HOSPITAL
  ADD CONSTRAINT HOSPITAL_pk primary key (HOSPITALID);

--------------------------------------------------------
--  LAB
--------------------------------------------------------

CREATE INDEX LAB_idx01
  ON eicu.LAB (PATIENTUNITSTAYID);
ALTER TABLE eicu.LAB
  ADD CONSTRAINT LAB_pk primary key (LABID);

--------------------------------------------------------
--  PASTHISTORY
--------------------------------------------------------

CREATE INDEX PASTHISTORY_idx01
  ON eicu.PASTHISTORY (PATIENTUNITSTAYID);
ALTER TABLE eicu.PASTHISTORY
  ADD CONSTRAINT PASTHISTORY_pk primary key (PASTHISTORYID);

--------------------------------------------------------
--  PATIENT
--------------------------------------------------------

CREATE INDEX PATIENT_idx01
  ON eicu.PATIENT (PATIENTUNITSTAYID);
CREATE INDEX PATIENT_idx02
  ON eicu.PATIENT (PATIENTHEALTHSYSTEMSTAYID);
CREATE INDEX PATIENT_idx03
  ON eicu.PATIENT (HOSPITALDISCHARGEYEAR);
CREATE INDEX PATIENT_idx05
  ON eicu.PATIENT (UNITTYPE);
ALTER TABLE eicu.PATIENT
  ADD CONSTRAINT PATIENT_pk primary key (PATIENTUNITSTAYID);

--------------------------------------------------------
--  TREATMENT
--------------------------------------------------------

CREATE INDEX TREATMENT_idx01
  ON eicu.TREATMENT (PATIENTUNITSTAYID);
ALTER TABLE eicu.TREATMENT
  ADD CONSTRAINT TREATMENT_pk primary key (TREATMENTID);

--------------------------------------------------------
--  VITALAPERIODIC
--------------------------------------------------------

CREATE INDEX VITALAPERIODIC_idx01
  ON eicu.VITALAPERIODIC (PATIENTUNITSTAYID);
ALTER TABLE eicu.VITALAPERIODIC
  ADD CONSTRAINT VITALAPERIODIC_pk primary key (VITALAPERIODICID);

--------------------------------------------------------
--  VITALPERIODIC
--------------------------------------------------------

CREATE INDEX VITALPERIODIC_idx01
  ON eicu.VITALPERIODIC (PATIENTUNITSTAYID);
ALTER TABLE eicu.VITALPERIODIC
  ADD CONSTRAINT VITALPERIODIC_pk primary key (VITALPERIODICID);
