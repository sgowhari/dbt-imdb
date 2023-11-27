SELECT 
    tconst as title_id,
    titleType as title_type,
    primaryTitle as primary_title,
    originalTitle as original_title,
    isAdult as adult_flg,
    CASE 
        WHEN startYear = '\\N' THEN NULL
        ELSE startYear 
    END as year_begin, 
    CASE 
        WHEN endYear = '\\N' THEN NULL
        ELSE endYear 
    END as year_end, 
    runtimeMinutes as runtime_mins,
    CASE 
        WHEN genres = '\\N' THEN NULL
        ELSE genres 
    END as genres_array
FROM {{ source('imdb', 'title_basics') }}