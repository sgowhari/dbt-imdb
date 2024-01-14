WITH original_directors AS 
(
    SELECT 
        title_id,  
        flattened_directors 

    FROM {{ ref('base_imdb__crew') }} AS base
    CROSS JOIN UNNEST(base.director_id_array) AS flattened_directors

)

SELECT *
FROM original_directors

