class User < ApplicationRecord
  has_many :items, dependent: :restrict_with_error  
  has_many :characters

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  enum discord_status: {
    "unverified": 0,
    "pending": 1,
    "verified": 2,
  }
end