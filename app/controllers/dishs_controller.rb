class DishsController < ApplicationController
  def new
    @dish = Dish.new

  end

  def create
    @dish = Dish.new(dishs_params)
    if @dish.save
      redirect_to root_path
    end
  end

  private

  def dishs_params
    params.require(:dish).permit(:name, :price, :origin)
  end
end
