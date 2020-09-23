class Character < ApplicationRecord
  belongs_to :user

  enum status: {
    "unverified": 0,
    "pending": 1,
    "verified": 2,
  }
end
