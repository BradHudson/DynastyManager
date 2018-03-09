class RemoveLossesFromTeam < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :losses, :integer
  end
end
