class FruitService
  def initialize
  end

  def conn
    Faraday.new(
      url: "https://www.fruityvice.com"
    )
  end

  def all_fruits
    get_url("/api/fruit/all")
  end

  def similar_fruits(calories)
    get_url("/api/fruit/calories?min=#{calories.to_i - 30}&max=#{calories.to_i + 30}")
  end


  def get_url(url)
    response =  conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

end