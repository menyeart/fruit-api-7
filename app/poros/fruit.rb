class Fruit
  attr_reader :name, :family, :order, :genus
  def initialize(fruit_info)
    @name = fruit_info[:name]
    @family = fruit_info[:family]
    @order = fruit_info[:order]
    @genus = fruit_info[:genus]
    @nutirtion_info = fruit_info[:nutritions]
  end

end