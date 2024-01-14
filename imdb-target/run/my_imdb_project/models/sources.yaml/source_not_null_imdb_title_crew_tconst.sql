select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select tconst
from `imdb-project-403816`.`Source`.`title_crew`
where tconst is null



      
    ) dbt_internal_test