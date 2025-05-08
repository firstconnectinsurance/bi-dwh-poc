WITH src_appetite_finder_sessions AS (
 SELECT
 *
 FROM
 poc_hevo.portal_hevo.appetite_finder_sessions
)
SELECT
 id AS appetite_finder_sessions_id,
 producer_id,
lob,
 status,
 created_at,
 state,
 product
FROM
 src_appetite_finder_sessions
