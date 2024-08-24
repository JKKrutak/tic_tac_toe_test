class Player < ApplicationRecord
	has_many :game_player
	has_many :game, through: :game_player
end
