class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    @categories = current_user.categories.includes(activity_categories: :activity)
  end

 
end
