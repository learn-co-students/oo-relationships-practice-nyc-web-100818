class Bakery
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def desserts
    Dessert.all.select{|dessert| dessert.bakery == self}
  end

  def ingredients
    result = []
    desserts.each do |dessert|
      result += dessert.ingredients
    end
    result
  end

  def average_calories
    total_calories = desserts.map{|dessert| dessert.calories}.reduce(:+)
    total_desserts = desserts.count
    total_calories.to_f / total_desserts
  end

  def shopping_list
    ingredients.map{|ingredient| ingredient.name}.uniq
  end

end
