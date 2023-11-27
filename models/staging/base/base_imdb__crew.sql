SELECT 
    tconst as title_id,  
    directors as director_id_array,
    writers as writer_id_array

FROM {{ source('imdb', 'title_crew') }} as title_crew