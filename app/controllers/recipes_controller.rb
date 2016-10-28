class RecipesController < ApplicationController

  include Devise::Controllers::Helpers
  helper_method :current_user

  def index
    @recipes = Recipe.all
    @user = current_user
  end

  def create
    @recipe = current_user.recipes.create(recipe_params)
    @recipe.save

    redirect_to course_recipe_url(@recipe.course, @recipe)
  end

  def new
    @ingredients = (Ingredient.all).order(:name)
    @course = Course.find(params[:course_id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.recipe_ingredients
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_ingredients = @recipe.recipe_ingredients
  end

  def update
    @recipe = Recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:course_id, :name, :difficulty, :prep_time, :directions)
  end
end
