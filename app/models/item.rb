class Item < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
end
=======
  belongs_to :fiesta_item

  validates :note, presence: true

  attr_accessor :copper, :silver, :gold, :gem

  before_validation :calculate_bin

  private
  
  def calculate_bin
    self.bin = FiestaCurrencyConverter.new(copper: copper, silver: silver, gold: gold, gem: gem).to_copper
  end
end
>>>>>>> 62713dd0deba55f1a54528ca4622a57e94fe48bb
