class Food
  attr_reader :description, :code, :brand_owner, :ingredients

  def initialize(data)
    @description = data[:description]
    @code = data[:gtinUpc]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end