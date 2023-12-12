SELECT 
    tconst as title_id,  
    directors as director_id_array,
    {{dbt_utils.generate_surrogate_key('title_id','director_id')}} as title_director_id

FROM {{ ref('base_imdb__crew') }} as base_imdb__crew
