

  create or replace view `imdb-project-403816`.`dbt_sgowhari`.`stg_imdb__crew_directors`
  OPTIONS()
  as WITH original_directors AS 
(
    SELECT 
        title_id,  
        flattened_directors,
        to_hex(md5(cast(coalesce(cast(title_id as STRING), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(flattened_directors as STRING), '_dbt_utils_surrogate_key_null_') as STRING))) as director_title_key_value

    FROM `imdb-project-403816`.`dbt_sgowhari`.`base_imdb__crew` AS base
    CROSS JOIN UNNEST(base.director_id_array) AS flattened_directors

)

SELECT *
FROM original_directors;

