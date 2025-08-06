create procedure sp_propinas
@fechadesde datetime, 
@fechahasta datetime 
as
begin
select f.propina, f.tipofact, f.numero, f.fecha, c.descripcio, s.nombre_suc
from facturas as f 
inner join caja as c on f.codcaja = c.codcaja 
inner join sucursales as s on f.codsucursal = s.codsucursal
where propina > 0
and f.fecha >= @fechadesde  
and f.fecha <= @fechahasta 
end