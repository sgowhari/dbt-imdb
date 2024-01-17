WITH original_writers AS (

    SELECT 
        title_id,  
        flattened_writers,
        {{dbt_utils.generate_surrogate_key(['title_id','flattened_writers'])}} as writer_title_key

    FROM {{ ref('base_imdb__crew') }} AS base
    CROSS JOIN UNNEST(base.writer_id_array) AS flattened_writers

)

SELECT *
FROM original_writers

