class RecipesController < ApplicationController

  include Devise::Controllers::Helpers
  helper_method :current_user

  def index
    if user_signed_in?
    @recipes = Recipe.all
    @user = current_user
    else
      @error = "Please sign in first"
    end
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)

    @recipe_ingredients = @recipe.recipe_ingredients
    if @recipe.save
      redirect_to course_recipe_url(@recipe.course, @recipe)
    else
      redirect_to new_course_recipe_url(@recipe.course, @recipe)
    end
  end

  def new
    @ingredients = (Ingredient.all).order(:name)
    @course = Course.find(params[:course_id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = (Ingredient.all).order(:name)
    @recipe_ingredients = @recipe.recipe_ingredients
  end

  def show
    @course = Course.find(params[:course_id])
    @ingredients = (Ingredient.all).order(:name)
    @recipe = Recipe.find(params[:id])
    @recipe_ingredients = @recipe.recipe_ingredients
  end

  def update
    @recipe = Recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:course_id, :name, :difficulty, :prep_time, :directions)
  end
end
