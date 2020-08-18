class Item < ApplicationRecord
  attr_accessor :bin_copper, :bin_gold, :bin_silver, :bin_gem
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
end
