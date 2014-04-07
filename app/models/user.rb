class User < ActiveRecord::Base
  has_secure_password
  # has_secure_password does a lot, needs a password_digest column in
  # db to work correctly
  before_save { email.downcase! }  
  # the above prevents email duplication by downcasing first
  
  validates :name, presence: true, length: { maximum: 50 }
  # validates(:name, presence: true) is also valid
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    # rails infers that uniquess: true from the above statement


  validates :password, length: { minimum: 6 }
end