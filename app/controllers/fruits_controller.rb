class FruitsController < ApplicationController

  def index
    @fruit = FruitsFacade.new.create_fruit_obj(params["search"])
  end

  def similar_fruits
    @similar_fruits = FruitsFacade.new.create_similar_fruits(params["nutrition"]["calories"])
  end

end