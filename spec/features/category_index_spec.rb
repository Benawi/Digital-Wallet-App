require 'rails_helper'

RSpec.feature 'Categories page', type: :feature do
  background do
    login_user
    visit root_path
    find('#go-categories').click
  end

  
end
