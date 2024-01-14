

  create or replace view `imdb-project-403816`.`dbt_sgowhari`.`stg_imdb__principals`
  OPTIONS()
  as WITH title_principals AS
(
    SELECT 
        tconst as title_id,
        ordering as order_of_appearance,
        nconst as person_id,
        category,
        CASE 
            WHEN job = '\\N' 
                THEN NULL
        ELSE job 
        END as job,
        CASE 
            WHEN characters = '\\N' 
                THEN NULL
        ELSE characters 
        END as characters

    FROM `imdb-project-403816`.`Source`.`title_principals` as title_principals
)

SELECT *
FROM title_principals;

