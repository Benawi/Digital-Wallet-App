# frozen_string_literal: true

class ActivityCategory < ApplicationRecord
  belongs_to :activity
  belongs_to :category
end
