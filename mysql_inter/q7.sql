SELECT s.name AS chromosome, COUNT(*) AS gene_count
FROM gene g
JOIN seq_region s
ON g.seq_region_id = s.seq_region_id
GROUP BY s.name;
