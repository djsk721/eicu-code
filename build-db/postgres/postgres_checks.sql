-- this query runs a few simple checks to make sure the database has loaded in OK
-- These checks are designed for eICU-CRD v1.2

-- If running scripts individually, you can set the schema where all tables are created as follows:
-- SET search_path TO eicu_crd;
with expected as
(
select 'admissiondrug'             as tbl,    874920 as row_count UNION
select 'admissiondx'               as tbl,    626858 as row_count UNION
select 'allergy'                   as tbl,    251949 as row_count UNION
select 'apacheapsvar'              as tbl,    171177 as row_count UNION
select 'apachepatientresult'       as tbl,    297064 as row_count UNION
select 'apachepredvar'             as tbl,    171177 as row_count UNION
select 'careplancareprovider'      as tbl,    502765 as row_count UNION
select 'careplaneol'               as tbl,      1433 as row_count UNION
select 'careplangeneral'           as tbl,   3115018 as row_count UNION
select 'careplangoal'              as tbl,    504139 as row_count UNION
select 'careplaninfectiousdisease' as tbl,      8056 as row_count UNION
SELECT 'customlab'                 as tbl,      1082 AS row_count  UNION
select 'diagnosis'                 as tbl,   2710672 as row_count UNION
select 'hospital'                  as tbl,       208 as row_count UNION
select 'infusiondrug'              as tbl,   4803719 as row_count UNION
SELECT 'intakeoutput'              as tbl,  12030289 AS row_count UNION
select 'lab'                       as tbl,  39132531 as row_count UNION
select 'medication'                as tbl,   7301853 as row_count UNION
SELECT 'microlab'                  as tbl,     16996 AS row_count UNION
SELECT 'note'                      as tbl,   2254179 AS row_count UNION
SELECT 'nurseassessment'           as tbl,  15602498 AS row_count UNION
SELECT 'nursecare'                 as tbl,   8311132 AS row_count UNION
SELECT 'nursecharting'             as tbl, 151604232 AS row_count UNION
select 'pasthistory'               as tbl,   1149180 as row_count UNION
SELECT 'physicalexam'              as tbl,   9212316 AS row_count UNION
SELECT 'respiratorycare'           as tbl,    865381 AS row_count UNION
SELECT 'respiratorycharting'       as tbl,  20168176 AS row_count UNION
select 'patient'                   as tbl,    200859 as row_count UNION
select 'treatment'                 as tbl,   3688745 as row_count UNION
select 'vitalaperiodic'            as tbl,  25075074 as row_count UNION
select 'vitalperiodic'             as tbl, 146671642 as row_count
)
, observed as
(
select 'admissiondrug'             as tbl, count(*) as row_count from eicu.admissiondrug             UNION
select 'admissiondx'               as tbl, count(*) as row_count from eicu.admissiondx               UNION
select 'allergy'                   as tbl, count(*) as row_count from eicu.allergy                   UNION
select 'apacheapsvar'              as tbl, count(*) as row_count from eicu.apacheapsvar              UNION
select 'apachepatientresult'       as tbl, count(*) as row_count from eicu.apachepatientresult       UNION
select 'apachepredvar'             as tbl, count(*) as row_count from eicu.apachepredvar             UNION
select 'careplancareprovider'      as tbl, count(*) as row_count from eicu.careplancareprovider      UNION
select 'careplaneol'               as tbl, count(*) as row_count from eicu.careplaneol               UNION
select 'careplangeneral'           as tbl, count(*) as row_count from eicu.careplangeneral           UNION
select 'careplangoal'              as tbl, count(*) as row_count from eicu.careplangoal              UNION
select 'careplaninfectiousdisease' as tbl, count(*) as row_count from eicu.careplaninfectiousdisease UNION
SELECT 'customlab'                 as tbl, COUNT(*) AS row_count from eicu.customlab                 UNION
select 'diagnosis'                 as tbl, count(*) as row_count from eicu.diagnosis                 UNION
select 'hospital'                  as tbl, count(*) as row_count from eicu.hospital                  UNION
select 'infusiondrug'              as tbl, count(*) as row_count from eicu.infusiondrug              UNION
SELECT 'intakeoutput'              as tbl, COUNT(*) AS row_count from eicu.intakeoutput              UNION
select 'lab'                       as tbl, count(*) as row_count from eicu.lab                       UNION
select 'medication'                as tbl, count(*) as row_count from eicu.medication                UNION
SELECT 'microlab'                  as tbl, COUNT(*) AS row_count from eicu.microlab                  UNION
SELECT 'note'                      as tbl, COUNT(*) AS row_count from eicu.note                      UNION
SELECT 'nurseassessment'           as tbl, COUNT(*) AS row_count from eicu.nurseassessment           UNION
SELECT 'nursecare'                 as tbl, COUNT(*) AS row_count from eicu.nursecare                 UNION
SELECT 'nursecharting'             as tbl, COUNT(*) AS row_count from eicu.nursecharting             UNION
select 'pasthistory'               as tbl, count(*) as row_count from eicu.pasthistory               UNION
SELECT 'physicalexam'              as tbl, COUNT(*) AS row_count from eicu.physicalexam              UNION
SELECT 'respiratorycare'           as tbl, COUNT(*) AS row_count from eicu.respiratorycare           UNION
SELECT 'respiratorycharting'       as tbl, COUNT(*) AS row_count from eicu.respiratorycharting       UNION
select 'patient'                   as tbl, count(*) as row_count from eicu.patient                   UNION
select 'treatment'                 as tbl, count(*) as row_count from eicu.treatment                 UNION
select 'vitalaperiodic'            as tbl, count(*) as row_count from eicu.vitalaperiodic            UNION
select 'vitalperiodic'             as tbl, count(*) as row_count from eicu.vitalperiodic
)
select
  exp.tbl
  , exp.row_count as expected_count
  , obs.row_count as observed_count
  , case
      when exp.row_count = obs.row_count
        then 'PASSED'
      else 'FAILED'
    end as ROW_COUNT_CHECK
from expected exp
inner join observed obs
  on exp.tbl = obs.tbl
order by exp.tbl;
