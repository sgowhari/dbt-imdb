

  create or replace view `imdb-project-403816`.`dbt_sgowhari`.`stg_imdb__ratings`
  OPTIONS()
  as WITH title_ratings AS
(
SELECT
    _tconst as title_id,
    averageRating as avg_rating,
    numVotes as vote_cnt
FROM `imdb-project-403816`.`Source`.`title_ratings` as title_ratings
)

SELECT *
FROM title_ratings;

