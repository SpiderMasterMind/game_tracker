class AddParticipantsNumberToGames < ActiveRecord::Migration[5.1]
  def change
		add_column :games, :participants_number, :integer
  end
end
