class RecipeIngredientsController < ApplicationController
  def new
    @recipe_ingredient = RecipeIngredient.new
  end

  def create
    p params
    @course = Course.find(params[:course_id])
    @recipe = @course.recipes.find(params[:recipe_id])
    @recipe.recipe_ingredients.create(recipe_ingredient_params)
    redirect_to course_recipe_url(@course, @recipe)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def recipe_ingredient_params
    params.require(:recipe_ingredient).permit(:ingredient_id, :measurement, :amount)
  end
end
