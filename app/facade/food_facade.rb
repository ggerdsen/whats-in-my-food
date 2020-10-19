class FoodFacade
  def initialize
    @food_data = FoodService.new
  end
  
  def food_results(search_string)
    results = @food_data.search(search_string)
    results.first[:foods].map do |data|
      Food.new(data)
    end
  end
  
  def total_hits(search_string)
    results = @food_data.search(search_string)
    results.first[:totalHits]
  end
end