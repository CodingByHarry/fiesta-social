class Item < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true

  attr_accessor :copper, :silver, :gold, :gem

  before_validation :calculate_bin

  # Convert bin price back to a user friendly currency for when users are trying to update, etc
  # Callbacks set so this will always run
  after_initialize do |item|
    bin_to_currency(item)
  end
 
  after_find do |item|
    bin_to_currency(item)
  end

  private

  def bin_to_currency(item)
    if item.bin == nil || item.bin.blank?
      0
    else 
      currency = FiestaCurrencyConverter.new(copper: item.bin)
      @copper = currency.copper
      @silver = currency.silver
      @gold = currency.gold
      @gem = currency.gem
    end
  end
  
  def calculate_bin
    #self.bin = copper * 10
    bin = FiestaCurrencyConverter.new(copper: copper, silver: silver, gold: gold, gem: gem).to_copper
  end
end