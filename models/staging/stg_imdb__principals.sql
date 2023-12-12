SELECT 
    tconst as title_id,
    ordering as order_of_appearance,
    nconst as person_id,
    category,
    CASE 
        WHEN job = '\\N' 
            THEN NULL
    ELSE job 
    END as job,
    CASE 
        WHEN characters = '\\N' 
            THEN NULL
    ELSE characters 
    END as characters

FROM {{ source('imdb', 'title_principals') }} as title_principals