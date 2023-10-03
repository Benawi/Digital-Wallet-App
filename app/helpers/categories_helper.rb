# frozen_string_literal: true

module CategoriesHelper
  def total_amount(array)
    total = 0
    array.each do |item|
      total += item.activity.amount
    end
    total
  end
end
