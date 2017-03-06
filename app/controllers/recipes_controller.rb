class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.create(recipes_params(:name, ingredient_ids:[]))
    redirect_to recipes_path
  end

  def index
    @recipe = Recipe.all
  end

  def edit
    @recipe = find_recipe
    @ingredients = @recipe.ingredients
    @all_ingredients = Ingredient.all
  end

  def show
    @recipe = find_recipe
  end

  def update
    @recipe = find_recipe
    @recipe.update(recipes_params(:name, ingredient_ids:[]))
    redirect_to recipe_path(@recipe)
  end


  private

  def recipes_params(*args)
    params.require(:recipe).permit(*args)
  end

  def find_recipe
    Recipe.find(params[:id])
  end

end
