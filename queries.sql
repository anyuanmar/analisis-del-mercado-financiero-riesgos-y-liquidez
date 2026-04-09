-- Precio promedio por activo
SELECT activo, AVG(precio) AS precio_promedio
FROM mercado
GROUP BY activo
ORDER BY precio_promedio DESC;

-- Volumen total por activo
SELECT activo, SUM(volumen) AS volumen_total
FROM mercado
GROUP BY activo
ORDER BY volumen_total DESC;

-- Volatilidad por activo
SELECT activo, AVG(ABS(cambio)) AS volatilidad
FROM mercado
GROUP BY activo
ORDER BY volatilidad DESC;

-- Volumen por sector
SELECT sector, SUM(volumen) AS volumen_total
FROM mercado
GROUP BY sector
ORDER BY volumen_total DESC;

-- Volatilidad por sector
SELECT sector, AVG(ABS(cambio)) AS volatilidad
FROM mercado
GROUP BY sector
ORDER BY volatilidad DESC;