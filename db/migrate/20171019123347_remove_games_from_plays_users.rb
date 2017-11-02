class RemoveGamesFromPlaysUsers < ActiveRecord::Migration[5.1]
  def change
		remove_column :plays_users, :game_id
  end
end
