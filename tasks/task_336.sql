select hour, minute from (select hour, minute from trips 
ORDER by hour DESC, minute DESC) as sb
where rownum < 2