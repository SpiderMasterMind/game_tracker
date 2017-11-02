class AddMissingTimestamps < ActiveRecord::Migration[5.1]
  def change
		add_timestamps :games, null: true
    add_timestamps :users, null: true
    add_timestamps :plays, null: true
  end
end
