/* GRUPO 4 - Respuestas a las preguntas propuestas para consultar en la base de datos: */

/* 1. ¿Cuál ha sido el mes del año 2023 en el que más pedidos se ingresaron? */

SELECT TOP 1 DATENAME(MONTH,fecha_pedido) AS Mes, COUNT(*) AS TotalPedidos
FROM grupo04.PEDIDO
WHERE YEAR(fecha_pedido) = 2023
GROUP BY DATENAME(MONTH,fecha_pedido) 
ORDER BY COUNT(*) DESC;


/* 2. ¿Cuánto tiempo en promedio en minutos ha tomado entre el ingreso de un pedido (estado ingresado | id_estado_p = '1') y su entrega al cliente (estado entregado | id_estado_p = '3') en el primer trimestre del año 2023? */

SELECT AVG(minutos) AS TiempoPromedioMinutos
FROM
(
SELECT id_pedido, estado_1, estado_3, DATEDIFF(MINUTE, estado_1, estado_3) minutos
FROM
(
SELECT id_pedido, 
( SELECT hora_estado fecha_hora FROM [grupo04].[PEDIDO_ESTADO] 
WHERE id_pedido = pe.id_pedido and id_estado_p = 1) estado_1,
( SELECT hora_estado fecha_hora FROM [grupo04].[PEDIDO_ESTADO] 
WHERE id_pedido = pe.id_pedido and id_estado_p = 3) estado_3
FROM [grupo04].[PEDIDO_ESTADO] pe
) a
GROUP BY id_pedido, estado_1, estado_3
) b


/* 3. ¿Cuál es la facturación de la categoría de productos más pedida en el primer semestre del año 2023? */

SELECT TOP 1 C.id_categoria, C.nombre_categoria, SUM(DP.subtotal) AS TotalFacturacion
FROM grupo04.DETALLE_PEDIDO DP
JOIN grupo04.PRODUCTO PR ON DP.id_producto = PR.id_producto
JOIN grupo04.CATEGORIAS C ON PR.id_categoria = C.id_categoria
JOIN grupo04.PEDIDO P ON DP.id_pedido = P.id_pedido
WHERE YEAR(P.fecha_pedido) = 2023 AND DATEPART(QUARTER,fecha_pedido) BETWEEN 1 AND 2
GROUP BY C.id_categoria, C.nombre_categoria
ORDER BY SUM(DP.subtotal) DESC;


/* 4. ¿Cuál es la facturación de los 3 clientes que registraron más pedidos en el último trimestre del año 2023? */

SELECT TOP 3 C.nombre, C.apellido, SUM(DP.subtotal) AS TotalFacturacion
FROM grupo04.CLIENTE C
JOIN grupo04.PEDIDO P ON C.id_cliente = P.id_cliente
JOIN grupo04.DETALLE_PEDIDO DP ON P.id_pedido = DP.id_pedido
WHERE YEAR(P.fecha_pedido) = 2023 AND DATEPART(QUARTER,P.fecha_pedido) = 4
GROUP BY C.nombre, C.apellido
ORDER BY SUM(DP.subtotal) DESC;


/* 5. ¿Qué vendedor ha generado mayor facturación en el segundo semestre del año 2023? */

SELECT TOP 1 V.nombre, V.apellido, SUM(DP.subtotal) AS TotalFacturacion
FROM grupo04.VENDEDOR V
JOIN grupo04.PEDIDO P ON V.id_vendedor = P.id_vendedor
JOIN grupo04.DETALLE_PEDIDO DP ON P.id_pedido = DP.id_pedido
WHERE YEAR(P.fecha_pedido) = 2023 AND DATEPART(QUARTER,P.fecha_pedido) BETWEEN 3 AND 4
GROUP BY V.nombre, V.apellido
ORDER BY SUM(DP.subtotal) DESC;


/* 6. ¿Cuál es el porcentaje de participación de ventas de cada vendedor en el último trimestre del año 2023? */

;WITH TotalSales AS (
  SELECT SUM(DP.subtotal) AS Total
  FROM grupo04.DETALLE_PEDIDO DP
  JOIN grupo04.PEDIDO P ON DP.id_pedido = P.id_pedido
  WHERE YEAR(P.fecha_pedido) = 2023 AND MONTH(P.fecha_pedido) BETWEEN 10 AND 12
)
SELECT ROW_NUMBER() OVER (ORDER BY SUM(DP.subtotal) DESC) posicion,
        V.nombre, V.apellido, SUM(DP.subtotal) AS TotalFacturacion, (SUM(DP.subtotal) / TS.Total) * 100 AS PercentageOfSales
FROM grupo04.VENDEDOR V
JOIN grupo04.PEDIDO P ON V.id_vendedor = P.id_vendedor
JOIN grupo04.DETALLE_PEDIDO DP ON P.id_pedido = DP.id_pedido
CROSS JOIN TotalSales TS
WHERE YEAR(P.fecha_pedido) = 2023 AND MONTH(P.fecha_pedido) BETWEEN 10 AND 12
GROUP BY V.nombre, V.apellido, TS.Total
ORDER BY TotalFacturacion DESC


/* 7. ¿Cuál es el incremento porcentual de pedidos comparado entre el tercer y cuarto trimestre del año 2023 para cada vendedor? */

;WITH Q3Sales AS (
  SELECT V.id_vendedor, SUM(DP.subtotal) AS TotalQ3
  FROM grupo04.VENDEDOR V
  JOIN grupo04.PEDIDO P ON V.id_vendedor = P.id_vendedor
  JOIN grupo04.DETALLE_PEDIDO DP ON P.id_pedido = DP.id_pedido
  WHERE YEAR(P.fecha_pedido) = 2023 AND MONTH(P.fecha_pedido) BETWEEN 7 AND 9
  GROUP BY V.id_vendedor
), Q4Sales AS (
  SELECT V.id_vendedor, SUM(DP.subtotal) AS TotalQ4
  FROM grupo04.VENDEDOR V
  JOIN grupo04.PEDIDO P ON V.id_vendedor = P.id_vendedor
  JOIN grupo04.DETALLE_PEDIDO DP ON P.id_pedido = DP.id_pedido
  WHERE YEAR(P.fecha_pedido) = 2023 AND MONTH(P.fecha_pedido) BETWEEN 10 AND 12
  GROUP BY V.id_vendedor
)
SELECT V.nombre, V.apellido,
       Q3.TotalQ3, Q4.TotalQ4,
       ((Q4.TotalQ4 - Q3.TotalQ3) / Q3.TotalQ3) * 100 AS IncrementoPorcentual
FROM grupo04.VENDEDOR V
LEFT JOIN Q3Sales Q3 ON V.id_vendedor = Q3.id_vendedor
LEFT JOIN Q4Sales Q4 ON V.id_vendedor = Q4.id_vendedor;


/* 8. ¿Qué categorías de productos ha generado la menor y mayor facturación en el departamento de Lima el último trimestre del año 2023? */

WITH CategorizedSales AS (
    SELECT C.nombre_categoria, SUM(DP.subtotal) AS TotalFacturacion,
           ROW_NUMBER() OVER (ORDER BY SUM(DP.subtotal) DESC) AS MaxRank,
           ROW_NUMBER() OVER (ORDER BY SUM(DP.subtotal)) AS MinRank
    FROM grupo04.DETALLE_PEDIDO DP
    JOIN grupo04.PRODUCTO PR ON DP.id_producto = PR.id_producto
    JOIN grupo04.CATEGORIAS C ON PR.id_categoria = C.id_categoria
    JOIN grupo04.PEDIDO P ON DP.id_pedido = P.id_pedido
    JOIN grupo04.CLIENTE CL ON P.id_cliente = CL.id_cliente
    WHERE YEAR(P.fecha_pedido) = 2023 AND MONTH(P.fecha_pedido) BETWEEN 10 AND 12
      AND CL.departamento = 'Lima'
    GROUP BY C.nombre_categoria
)
SELECT nombre_categoria, TotalFacturacion, 'Mayor Facturación' AS Tipo
FROM CategorizedSales
WHERE MaxRank = 1
UNION ALL
SELECT nombre_categoria, TotalFacturacion, 'Menor Facturación' AS Tipo
FROM CategorizedSales
WHERE MinRank = 1;


/* 9. ¿Cuáles son los 3 productos más pedidos del último trimestre del año 2023 y qué porcentaje de facturación del total representa cada uno?  */

;WITH TotalSales AS (
    SELECT SUM(DP.subtotal) AS Total
    FROM grupo04.DETALLE_PEDIDO DP
    JOIN grupo04.PEDIDO P ON DP.id_pedido = P.id_pedido
    WHERE YEAR(P.fecha_pedido) = 2023 AND MONTH(P.fecha_pedido) BETWEEN 10 AND 12
)
SELECT TOP 3 PR.nombre_producto, DP.subtotal, (DP.subtotal / TS.Total) * 100 AS PorcentajeFacturacion
FROM grupo04.DETALLE_PEDIDO DP
JOIN grupo04.PEDIDO P ON DP.id_pedido = P.id_pedido
JOIN grupo04.PRODUCTO PR ON DP.id_producto = PR.id_producto
CROSS JOIN TotalSales TS
WHERE YEAR(P.fecha_pedido) = 2023 AND MONTH(P.fecha_pedido) BETWEEN 10 AND 12
GROUP BY PR.nombre_producto, DP.subtotal, TS.Total
ORDER BY (DP.subtotal / TS.Total) * 100 DESC;


/* 10. ¿Cuáles son los 3 clientes que han tenido el mayor incremento en el valor de los pedidos en el segundo semestre del año 2023 comparado con el primer semestre? */

WITH ClienteS1 AS (
    SELECT 
        id_cliente, 
        SUM(subtotal) AS TotalS1
    FROM grupo04.PEDIDO P
    JOIN grupo04.DETALLE_PEDIDO DP ON P.id_pedido = DP.id_pedido
    WHERE YEAR(fecha_pedido) = 2023 AND MONTH(fecha_pedido) BETWEEN 1 AND 6
    GROUP BY id_cliente
),
ClienteS2 AS (
    SELECT 
        id_cliente, 
        SUM(subtotal) AS TotalS2
    FROM grupo04.PEDIDO P
    JOIN grupo04.DETALLE_PEDIDO DP ON P.id_pedido = DP.id_pedido
    WHERE YEAR(fecha_pedido) = 2023 AND MONTH(fecha_pedido) BETWEEN 7 AND 12
    GROUP BY id_cliente
)
SELECT TOP 3
    C.id_cliente, 
    C.nombre, 
    C.apellido,
    S1.TotalS1,
    S2.TotalS2,
    ((S2.TotalS2 - S1.TotalS1) * 100 / S2.TotalS2) AS [% Incremento]
FROM ClienteS1 S1
JOIN ClienteS2 S2 ON S1.id_cliente = S2.id_cliente
JOIN grupo04.CLIENTE C ON S1.id_cliente = C.id_cliente
WHERE S2.TotalS2 > S1.TotalS1
ORDER BY [% Incremento] DESC;
