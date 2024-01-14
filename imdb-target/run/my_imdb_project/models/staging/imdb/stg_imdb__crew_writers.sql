

  create or replace view `imdb-project-403816`.`dbt_sgowhari`.`stg_imdb__crew_writers`
  OPTIONS()
  as WITH original_writers AS (

    SELECT 
        title_id,  
        flattened_writers,
        to_hex(md5(cast(coalesce(cast(title_id as STRING), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(flattened_writers as STRING), '_dbt_utils_surrogate_key_null_') as STRING))) as writer_title_key

    FROM `imdb-project-403816`.`dbt_sgowhari`.`base_imdb__crew` AS base
    CROSS JOIN UNNEST(base.writer_id_array) AS flattened_writers

)

SELECT *
FROM original_writers;

