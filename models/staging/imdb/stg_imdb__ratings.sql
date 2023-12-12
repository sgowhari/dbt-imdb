SELECT
    _tconst as title_id,
    averageRating as avg_rating,
    numVotes as vote_cnt
FROM {{ source('imdb', 'title_ratings') }} as title_ratings