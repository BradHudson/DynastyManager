json.extract! team, :id, :name, :wins, :losses, :created_at, :updated_at
json.url team_url(team, format: :json)
