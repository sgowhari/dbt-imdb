WITH original_writers AS (

    SELECT 
        title_id,  
        flattened_writers 

    FROM {{ ref('base_imdb__crew') }} AS base
    CROSS JOIN UNNEST(base.writer_id_array) AS flattened_writers

)



SELECT *
FROM original_writers

