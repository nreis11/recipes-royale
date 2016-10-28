class RatingsController < ApplicationController
	before_filter :set_recipe

  def create
    @rating = @recipe.ratings.new :value => params[:value]
    if @rating.save
      redirect_to recipe_ratings_path(@recipe), :notice => "Rating successful."
    else
      redirect_to recipe_ratings_path(@recipe, :notice => "Something went wrong."
    end
  end

  # def update
  #   @rating = Rating.find(params[:id])
  #   @rating.update_attribute :value, params[:value]
  # end

  private
    def set_recipe
      @recipe = Recipe.find(parms[:recipe_id])
      @user = current_user
    end
end
