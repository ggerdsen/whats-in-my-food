class FoodsController < ApplicationController
  def index
    @q = params[:q]
    search_string = params[:search_string]
    @total_results = return_number_of_results(@q)
    @search = return_results(@q)
  end
  
  private
  
  def return_results(search_string)
    food_search = FoodFacade.new
    food_search.food_results(search_string)
  end
  
  def return_number_of_results(search_string)
    food_search = FoodFacade.new
    food_search.total_hits(search_string)
  end
end