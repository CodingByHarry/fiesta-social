class Character < ApplicationRecord
  enum status: {
    "unverified": 0,
    "pending": 1,
    "verified": 2,
  }
end
