class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
			t.string :game
    end
  end
end
