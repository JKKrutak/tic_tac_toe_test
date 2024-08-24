class GameController < ApplicationController
	def new
		@game = Game.new	
	end
	def create
		size = params[:form][:size].to_i
		state = "0" * (size * size)
		@game = Game.new(state: state)
		
		
		if @game.save
			redirect_to @game, notice: 'Game was created.'
		else
			render :new
		end
	end
end
