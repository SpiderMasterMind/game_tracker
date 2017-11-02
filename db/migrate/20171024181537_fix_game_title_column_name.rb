class FixGameTitleColumnName < ActiveRecord::Migration[5.1]
  def change
		rename_column :games, :game, :title
  end
end
