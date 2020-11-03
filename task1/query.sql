SELECT p.name,  lots.SummLots, lots.colPos
FROM procedurs p
JOIN
(SELECT l.id, l.procedure_id, sum(l.price) AS SummLots, sum(pos.sum) as colPos
  FROM lots l
  LEFT JOIN ( SELECT lot_id, sum(quantity) AS sum FROM positions GROUP BY lot_id) pos ON pos.lot_id = l.id
  GROUP BY l.procedure_id
) lots ON lots.procedure_id = p.id