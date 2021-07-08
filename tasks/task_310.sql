select cod_trip, name_route, hour, minute from trips t JOIN  routes r ON t.cod_route=r.cod_route
where week_day=7 and hour<12
ORDER BY hour, minute