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
    @course = @recipe.course
    @user = current_user

    if @course.name == "Appetizer" 
        @user.appetizer_time = DateTime.now
      elsif @course.name == "Salad"
        @user.salad_time = DateTime.now
        
      elsif @course.name == "Main Course"
        @user.main_course_time = DateTime.now
  
      else @course.name == "Dessert"
        @user.dessert_time = DateTime.now 
    end    
    @user.save
    redirect_to course_recipe_url(@recipe.course, @recipe)
  end

  def new
    
    @user = current_user

    @course = Course.find(params[:course_id])
    if @course.name == "Appetizer" && @user.appetizer_time
      if ((DateTime.now.to_date - @user.appetizer_time.to_date)/3600).round <= 7
        @error = "passed your limit"
        redirect_to courses_path
      end
      elsif @course.name == "Salad" && @user.salad_time
        if (((DateTime.now.to_date - @user.salad_time.to_date)/3600).round) <= 7
            @error = "passed your limit"
            redirect_to courses_path
        end
      elsif @course.name == "Main Course" && @user.main_course_time
        if ((DateTime.now.to_date - @user.main_course_time.to_date)/3600) <= 7
          @error = "passed your limit"
          redirect_to courses_path
        end
      elsif @course.name == "Dessert" && @user.dessert_time
        if ((DateTime.now.to_date - @user.dessert_time.to_date)/3600) <= 7
          @error = "passed your limit"
          redirect_to courses_path
        end
      else
      @ingredients = (Ingredient.all).order(:name)
    end
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
