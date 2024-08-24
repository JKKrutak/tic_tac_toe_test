class CreateGamePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :game_players do |t|
		t.references :game, foreign_key: true
		t.references :player, foreign_key: true
		t.timestamps
    end
  end
end
