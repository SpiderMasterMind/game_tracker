class CreatePlaysUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :plays_users do |t|
			t.integer :game_id, foreign_key: true
			t.integer :user_id_1, foreign_key: true
			t.integer :user_id_2, foreign_key: true
			t.integer :user_id_3, foreign_key: true
			t.integer :user_id_4, foreign_key: true			
			t.timestamps
    end
  end
end
