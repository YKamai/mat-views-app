SELECT
  players.name AS player_name,
  players.id AS player_id,
  players.position AS player_position,
  matches.season AS season,
  teams.name AS team_name,
  teams.id AS team_id,
  count(goals.id) AS goal_count
FROM goals
  INNER JOIN players ON (goals.player_id = players.id)
  INNER JOIN matches ON (goals.match_id = matches.id)
  INNER JOIN teams ON (goals.team_id = teams.id)
GROUP BY players.id, teams.id, matches.season