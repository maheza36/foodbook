class StaticPagesController < ApplicationController
  def index
    @dishs = Dish.all
    @meals = Meal.all
  end
end
