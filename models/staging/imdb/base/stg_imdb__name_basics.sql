SELECT 

    nconst as person_id,
    primaryName as person_nm,
    CASE 
        WHEN birthYear = '\\N' 
            THEN NULL
    ELSE birthYear 
    END as birth_year,
    CASE 
        WHEN deathYear = '\\N' 
            THEN NULL
    ELSE deathYear 
    END as death_year,
    primaryProfession as primary_profession,
    CASE 
        WHEN knownForTitles = '\\N' 
            THEN NULL
    ELSE knownForTitles 
    END as titles_known_for_array
    
FROM {{ source('imdb', 'name_basics') }}