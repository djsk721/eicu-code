-- -------------------------------------------------------------------------------
--
-- Load data from compressed files into the schema
--
-- -------------------------------------------------------------------------------

-- Change to the directory containing the data files
\cd :datadir

--------------------------------------------------------
--  Load Data for Table ADMISSIONDRUG
--------------------------------------------------------

\copy eicu.admissionDrug FROM program 'gzip -c -d admissionDrug.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table ADMISSIONDX
--------------------------------------------------------

\copy eicu.admissionDx FROM program 'gzip -c -d admissionDx.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table ALLERGY
--------------------------------------------------------

\copy eicu.allergy FROM program 'gzip -c -d allergy.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table APACHEAPSVAR
--------------------------------------------------------

\copy eicu.apacheApsVar FROM program 'gzip -c -d apacheApsVar.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table APACHEPATIENTRESULTS
--------------------------------------------------------

\copy eicu.apachePatientResult FROM program 'gzip -c -d apachePatientResult.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table APACHEPREDVAR
--------------------------------------------------------

\copy eicu.apachePredVar FROM program 'gzip -c -d apachePredVar.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table CAREPLANCAREPROVIDER
--------------------------------------------------------

\copy eicu.carePlanCareProvider FROM program 'gzip -c -d carePlanCareProvider.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table CAREPLANEOL
--------------------------------------------------------

\copy eicu.carePlanEOL FROM program 'gzip -c -d carePlanEOL.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table CAREPLANGENERAL
--------------------------------------------------------

\copy eicu.carePlanGeneral FROM program 'gzip -c -d carePlanGeneral.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table CAREPLANGOAL
--------------------------------------------------------

\copy eicu.carePlanGoal FROM program 'gzip -c -d carePlanGoal.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table CAREPLANINFECTIOUSDISEASE
--------------------------------------------------------

\copy eicu.carePlanInfectiousDisease FROM program 'gzip -c -d carePlanInfectiousDisease.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table CUSTOMLAB
--------------------------------------------------------

\copy eicu.customLab FROM program 'gzip -c -d customLab.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table DIAGNOSIS
--------------------------------------------------------

\copy eicu.diagnosis FROM program 'gzip -c -d diagnosis.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table HOSPITAL
--------------------------------------------------------

\copy eicu.hospital FROM program 'gzip -c -d hospital.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table INFUSIONDRUG
--------------------------------------------------------

\copy eicu.infusionDrug FROM program 'gzip -c -d infusionDrug.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table INFUSIONDRUG
--------------------------------------------------------

\copy eicu.intakeOutput FROM program 'gzip -c -d intakeOutput.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table LAB
--------------------------------------------------------

\copy eicu.lab FROM program 'gzip -c -d lab.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table MEDICATION
--------------------------------------------------------

\copy eicu.medication FROM program 'gzip -c -d medication.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table MICROLAB
--------------------------------------------------------

\copy eicu.microLab FROM program 'gzip -c -d microLab.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table NOTE
--------------------------------------------------------

\copy eicu.note FROM program 'gzip -c -d note.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table NURSEASSESSMENT
--------------------------------------------------------

\copy eicu.nurseAssessment FROM program 'gzip -c -d nurseAssessment.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table NURSECARE
--------------------------------------------------------

\copy eicu.nurseCare FROM program 'gzip -c -d nurseCare.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table NURSECHARTING
--------------------------------------------------------

\copy eicu.nurseCharting FROM program 'gzip -c -d nurseCharting.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table PASTHISTORY
--------------------------------------------------------

\copy eicu.pastHistory FROM program 'gzip -c -d pastHistory.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table PATIENT
--------------------------------------------------------

\copy eicu.patient FROM program 'gzip -c -d patient.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table PHYSICALEXAM
--------------------------------------------------------

\copy eicu.physicalExam FROM program 'gzip -c -d physicalExam.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table RESPIRATORYCARE
--------------------------------------------------------

\copy eicu.respiratoryCare FROM program 'gzip -c -d respiratoryCare.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table RESPIRATORYCHARTING
--------------------------------------------------------

\copy eicu.respiratoryCharting FROM program 'gzip -c -d respiratoryCharting.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table TREATMENT
--------------------------------------------------------

\copy eicu.treatment FROM program 'gzip -c -d treatment.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table VITALAPERIODIC
--------------------------------------------------------

\copy eicu.vitalAperiodic FROM program 'gzip -c -d vitalAperiodic.csv.gz' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table VITALPERIODIC
--------------------------------------------------------

\copy eicu.vitalPeriodic FROM program 'gzip -c -d vitalPeriodic.csv.gz' DELIMITER ',' CSV HEADER NULL ''
