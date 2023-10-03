class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    @categories = current_user.categories.includes(activity_categories: :activity)
  end

  def show
    @category = Category.find_by_id(params[:id])
    @activity_categories = @category.activity_categories.includes(:category, :activity).order(created_at: :desc)
  end

end
