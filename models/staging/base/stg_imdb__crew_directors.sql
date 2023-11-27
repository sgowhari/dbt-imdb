SELECT 
    tconst as title_id,  
    directors as director_id_array,
    writers as writer_id_array

FROM {{ source('imdb', 'title_crew') }} as title_crew
;
/*
inner join other_table
    on source = other_table

SELECT
    {{ dbt_utils.generate_surrogate_key(['title_id', 'director_id']) }} as title_director_id
    md5(ifnull(title_id, 'X') || '-' || director_id) => "ppoizn823h1bn0971"
  , title_id
  , director_id

from base_imdb__crew
, lateral(flatten => )

- models
- - staging
- - - imdb
- - - - base
- - - - - base_imdb__crew.sql
- - - - stg_imdb__episodes.sql
- - - - stg_imdb__crew_directors.sql
- - - - stg_imdb__crew_writers.sql
*/