class RemoveWinsFromTeam < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :wins, :integer
  end
end
