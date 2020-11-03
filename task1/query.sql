SELECT procedurs.name, tb1.SUMMA AS SUMMA,tb2.quantity AS quantitys
FROM procedurs
LEFT JOIN (SELECT lots.procedure_id, SUM(lots.price) SUMMA FROM lots GROUP BY procedure_id ) tb1 ON tb1.procedure_id = procedurs.id
LEFT JOIN (SELECT positions.lot_id, SUM(positions.quantity) quantity FROM positions GROUP BY lot_id) tb2 ON tb2.lot_id = procedurs.id
WHERE tb1.SUMMA IS NOT NULL OR tb2.quantity IS NOT NULL
GROUP BY procedurs.name