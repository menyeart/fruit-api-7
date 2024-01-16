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


  def get_url(url)
    response =  conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

end