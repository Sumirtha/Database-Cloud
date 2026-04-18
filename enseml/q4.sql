SELECT gene_id, COUNT(*) AS transcript_count
FROM transcript
GROUP BY gene_id
LIMIT 10;