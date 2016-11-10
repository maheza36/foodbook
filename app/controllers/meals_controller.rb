class MealsController < ApplicationController
  def new
    #@meal = Meal.new
  end

  def create
    @meal = Meal.new(meals_params)
    if @meal.save
      redirect_to root_path
    end
  end

  private

  def meals_params
    params.require(:meal).permit(:name, :price, :restaurant, :city)
  end

end
