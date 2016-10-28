class RecipesController < ApplicationController

  include Devise::Controllers::Helpers
  helper_method :current_user

  def index
    @recipes = Recipe.all
    @user = current_user
  end

  def create
    @recipe = current_user.recipes.create(recipe_params)
    @recipe.save!
    @recipe_ingredients = @recipe.recipe_ingredients
    if @recipe.save
      if request.xhr?
        render :layout => false, :file => 'app/views/recipes/_recipe_details'
        # render partial: "recipe_details"
      else
        redirect_to course_recipe_url(@recipe.course, @recipe)
      end
    else
      redirect_to new_course_recipe_url(@recipe.course, @recipe)
    end
  end

  def new
    @course = Course.find(params[:course_id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.recipe_ingredients
  end

  def show
    @ingredients = (Ingredient.all).order(:name)
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
