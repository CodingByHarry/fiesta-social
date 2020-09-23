class User < ApplicationRecord
  has_many :items
  has_many :characters

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

<<<<<<< HEAD
  enum discord_status: {
    "unverified": 0,
    "pending": 1,
    "verified": 2,
  }
=======
  has_many :items, dependent: :restrict_with_error  
>>>>>>> 62713dd0deba55f1a54528ca4622a57e94fe48bb
end