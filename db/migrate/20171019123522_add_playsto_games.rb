class AddPlaystoGames < ActiveRecord::Migration[5.1]
  def change
		add_column :plays, :game_id, :integer
  end
end
