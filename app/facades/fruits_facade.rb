class FruitsFacade
  attr_reader :fruit_name
  def initialize(fruit_name = "banana")
    @fruit_name = fruit_name.downcase.capitalize
  end

  def all_fruits
    FruitService.new.all_fruits
  end

  def get_fruit
    all_fruits.find { |fruit| fruit[:name] == @fruit_name }
  end

  def create_fruit_obj
    Fruit.new(get_fruit)
  end

  def get_similar_fruits(calories)
    sim_fruits = FruitService.new.similar_fruits(calories)
  end

  def create_similar_fruits(calories)
    get_similar_fruits(calories).map { |fruit| Fruit.new(fruit)}
  end
end