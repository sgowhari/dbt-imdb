SELECT 
tconst as episode_title_id,
parentTconst as series_title_id,
CASE WHEN seasonNumber = '\\N'
 THEN NULL
ELSE seasonNumber END as season_nbr,
CASE WHEN episodeNumber = '\\N' THEN NULL
ELSE episodeNumber END as episode_nbr

FROM {{ source('imdb', 'title_episode') }}