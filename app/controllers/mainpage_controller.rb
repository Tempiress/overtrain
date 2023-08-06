class MainpageController < ApplicationController

  def index
    @heroes = Hero.all
    @arr = Array(["first element","second element", "third element"])


  end


end
