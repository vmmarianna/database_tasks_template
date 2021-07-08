select hour, minute from (select hour, minute from trips 
ORDER by hour DESC, minute DESC)
where rownum < 2