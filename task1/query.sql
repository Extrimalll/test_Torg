SELECT p.name,  lots.priceSum, lots.sumQuant
FROM procedurs p
JOIN
(SELECT l.id, l.procedure_id, sum(l.price) AS priceSum, sum(pos.sum) as sumQuant
  FROM lots l
  LEFT JOIN (SELECT lot_id, sum(quantity) AS sumFROM positions GROUP BY lot_id ) pos ON pos.lot_id = l.id
  GROUP BY l.procedure_id
) lots ON lots.procedure_id = p.id