class FoodsController < ApplicationController
  def index
    @q = params[:q]
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/") do |faraday|
      faraday.params["api_key"] = ENV["FDC_API_KEY"]
    end
    response = conn.get("v1/foods/search?&query=#{@q}")
    @parsed = JSON.parse(response.body, symbolize_names: true)
  end
end