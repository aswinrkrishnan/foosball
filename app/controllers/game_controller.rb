class GameController < ApplicationController
  def index
    @games = Game.all.order('created_at DESC')
  end
  def new
    @game = Game.new
  end
  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game
    else
      render 'new'
    end
  end
  def show
    @game = Game.find(params[:id])
  end
  def destroy
  @game = Game.find(params[:id])
  @game.destroy

  redirect_to root_path
end
  private
  def game_params
    params.require(:game).permit(:playerA1, :playerA2, :playerB1, :playerB2, :ascore, :bscore)
  end
end
