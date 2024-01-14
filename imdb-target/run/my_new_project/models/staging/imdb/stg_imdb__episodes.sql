

  create or replace view `imdb-project-403816`.`dbt_sgowhari`.`stg_imdb__episodes`
  OPTIONS()
  as WITH episode_titles AS
(
    SELECT 
        tconst as episode_title_id,
        parentTconst as series_title_id,
        CASE 
            WHEN seasonNumber = '\\N'
                THEN NULL
        ELSE seasonNumber 
        END as season_nbr,
        CASE 
            WHEN episodeNumber = '\\N' 
                THEN NULL
        ELSE episodeNumber END as episode_nbr

    FROM `imdb-project-403816`.`Source`.`title_episode` as title_episode
)

SELECT *
FROM episode_titles;

