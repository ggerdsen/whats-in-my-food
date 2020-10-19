class FoodsController < ApplicationController
  def index
    @q = params[:q]
    search_string = params[:search_string]
    @search = return_results(@q)
  end
  
  private
  
  def return_results(search_string)
    food_search = FoodFacade.new
    food_search.food_results(search_string)
  end
end