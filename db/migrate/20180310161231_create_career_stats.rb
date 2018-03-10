class CreateCareerStats < ActiveRecord::Migration[5.1]
  def change
    create_table :career_stats do |t|
      t.references :team, foreign_key: true
      t.integer :reg_wins
      t.integer :reg_losses
      t.integer :pts_for
      t.integer :pts_against
      t.integer :moves
      t.integer :playoff_appearances
      t.integer :playoffs_wins
      t.string :playoffs_losses
      t.string :integer
      t.integer :championship_appearances
      t.integer :championship_wins
      t.integer :championship_losses

      t.timestamps
    end
  end
end
