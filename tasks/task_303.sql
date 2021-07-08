select p.name_point
from points p join points_routes pr on p.cod_point = pr.cod_point join routes r
on pr.cod_route = r.cod_route where r.name_route = 'Вологда-Череповец'
order by p.distance
