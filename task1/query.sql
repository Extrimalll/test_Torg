SELECT procedurs.name, tb1.SUMMA AS SummLots,tb2.quantity AS colPos
FROM procedurs
JOIN (SELECT lots.procedure_id, SUM(lots.price) SUMMA FROM lots GROUP BY procedure_id ) tb1 ON tb1.procedure_id = procedurs.id
JOIN (SELECT positions.lot_id, SUM(positions.quantity) quantity FROM positions GROUP BY lot_id) tb2 ON tb2.lot_id = procedurs.id
GROUP BY procedurs.name