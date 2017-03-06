class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  validates :name,  presence: true
  validates :name, uniqueness: true

  def ingredient_ids (ingredient_id)
    ingredients = Ingredient.where("id in (?)", ingredient_ids)
    self.ingredients = ingredients
  end

end
