class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_ingredients = @recipe.recipe_ingredients
  end

  def update
  end

  def destroy
  end
end
