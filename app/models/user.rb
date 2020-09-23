class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  enum discord_status: {
    "unverified": 0,
    "pending": 1,
    "verified": 2,
  }
end