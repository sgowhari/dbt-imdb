

  create or replace view `imdb-project-403816`.`dbt_sgowhari`.`stg_imdb__title_basics`
  OPTIONS()
  as WITH title_basics AS 
(
    
SELECT 
    tconst as title_id,
    titleType as title_type,
    primaryTitle as primary_title,
    originalTitle as original_title,
    isAdult as adult_flg,
    CASE 
        WHEN startYear = '\\N' 
            THEN NULL
    ELSE startYear 
    END as year_begin, 
    CASE 
        WHEN endYear = '\\N' 
        THEN NULL
    ELSE endYear 
    END as year_end, 
    runtimeMinutes as runtime_mins,
    CASE 
        WHEN genres = '\\N' 
        THEN NULL
    ELSE genres 
    END as genres_array
FROM `imdb-project-403816`.`Source`.`title_basics` as title_basics
)

SELECT *
FROM title_basics;

