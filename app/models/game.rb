class Game < ApplicationRecord
	has_many :game_player
	has_many :player, through: :game_player
end
