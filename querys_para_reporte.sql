
-- ********************************************

-- Proyecto : BI en negocio de Ventas de autos
-- Autor : Cristhian Carbajal Cusi
-- QUERYS Para los reportes en Power BI

-- ********************************************


 use [venta_autos]
 GO

 -- Detalles de las ventas generales
 select C.Nombre as [Nombre de cliente],
		m.Nombre as [Modelo de auto] ,
		mar.Nombre as [Marca de Auto],
		v.FechaVenta ,
		(v.PrecioVenta - v.Descuento) as [Precio Final]
		from ventas v
 inner join Clientes c on c.ClienteID = v.ClienteID
 inner join Modelos m on v.ModeloID = m.ModeloID
 inner join Marcas mar on m.MarcaID = mar.MarcaID
 GO


 -- Ingresos por Año 
select YEAR(v.FechaVenta) as [Fecha de Venta], sum(v.PrecioVenta - v.Descuento) as [Precio Final] 
from ventas v
group by YEAR(v.FechaVenta)
GO

-- Extra
-- Cantidad de ventas de autos por Marca
 select mar.Nombre as [Marca de Auto],
		count(*) as [Cantidad de ventas]
		from ventas v
 inner join Clientes c on c.ClienteID = v.ClienteID
 inner join Modelos m on v.ModeloID = m.ModeloID
 inner join Marcas mar on m.MarcaID = mar.MarcaID
group by mar.Nombre
 GO