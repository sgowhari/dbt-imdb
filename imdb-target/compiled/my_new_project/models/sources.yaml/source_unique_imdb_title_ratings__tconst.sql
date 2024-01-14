
    
    

with dbt_test__target as (

  select _tconst as unique_field
  from `imdb-project-403816`.`Source`.`title_ratings`
  where _tconst is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


