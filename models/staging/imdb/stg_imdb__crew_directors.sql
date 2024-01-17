WITH original_directors AS 
(
    SELECT 
        title_id,  
        flattened_directors,
        {{ dbt_utils.generate_surrogate_key(['title_id','flattened_directors']) }} as director_title_key_value

    FROM {{ ref('base_imdb__crew') }} AS base
    CROSS JOIN UNNEST(base.director_id_array) AS flattened_directors

)

SELECT *
FROM original_directors

