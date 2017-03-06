class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def create
    if params[:ingredient][:name].present?
      @ingredient = Ingredient.create(ingredient_params(:name))
    else
      render new
    end
    redirect_to ingredient_path(@ingredient)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params(:name))
    redirect_to ingredient_path(@ingredient)
  end


  private
  def ingredient_params(*args)
    params.require(:ingredient).permit(*args)
  end

end
