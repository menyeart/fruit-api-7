class FruitsController < ApplicationController

  def index
    @fruit = FruitsFacade.new(params["search"]).create_fruit_obj
  end

end