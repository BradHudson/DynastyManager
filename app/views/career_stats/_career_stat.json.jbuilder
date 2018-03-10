json.extract! career_stat, :id, :team_id, :reg_wins, :reg_losses, :pts_for, :pts_against, :moves, :playoff_appearances, :playoffs_wins, :playoffs_losses, :integer, :championship_appearances, :championship_wins, :championship_losses, :created_at, :updated_at
json.url career_stat_url(career_stat, format: :json)
