class FruitsFacade
  attr_reader :fruit_name
  def initialize(fruit_name)
    @fruits = FruitService.new.all_fruits
    @fruit_name = fruit_name.downcase.capitalize
  end

  def get_fruit
    @fruits.find { |fruit| fruit[:name] == "Banana" }
  end

  def create_fruit_obj
    Fruit.new(get_fruit)
  end
end