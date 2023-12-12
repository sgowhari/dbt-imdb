SELECT 
    title_id,  
    director_id_array

FROM {{ ref('base_imdb__crew') }} as base_imdb__crew
