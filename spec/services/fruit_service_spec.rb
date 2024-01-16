require "rails_helper"

RSpec.describe "FruitService" do
  it "is a service" do
    service = FruitService.new

    expect(service).to be_a(FruitService)
  end

  it "has a connection to faraday" do
    service = FruitService.new

    expect(service.conn).to be_a(Faraday::Connection)
  end

  it "gets all fruits" do
    service = FruitService.new
    fruits = service.all_fruits
    fruit_keys = [:name, :id, :family, :order, :genus, :nutritions]

    expect(fruits).to be_a(Array)
    expect(fruits.first).to be_a(Hash)
    expect(fruits.first.keys).to eq(fruit_keys)
  end
end