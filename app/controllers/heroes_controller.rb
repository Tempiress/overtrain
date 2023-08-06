class HeroesController < ApplicationController


  def show

    @hero = Hero.find_by(key: params[:slug])

  end



end
