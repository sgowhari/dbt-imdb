select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select _tconst
from `imdb-project-403816`.`Source`.`title_ratings`
where _tconst is null



      
    ) dbt_internal_test