class RecipeIngredient < ApplicationRecord
  belongs_to :ingredients
  belongs_to :recipes

  validates :recipe, :ingredient, :amount, :measurement, presence: true
end
