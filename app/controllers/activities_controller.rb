class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def new
    @activity = Activity.new
  end

  
end
