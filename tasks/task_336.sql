select max(trips.hour),max(trips.minute) from trips
where trips.hour = (select max(trips.hour) from trips)