SELECT 
    tconst as title_id,  
    CASE 
        WHEN directors = 'NA' 
            THEN NULL
        ELSE SPLIT(directors, ',')
    END as director_id_array,
    CASE 
        WHEN writers = 'NA'
            THEN NULL
        ELSE SPLIT(writers, ',')
    END as writer_id_array

FROM {{ source('imdb', 'title_crew') }} as title_crew
WHERE 1=1
