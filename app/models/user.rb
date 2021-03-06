class User < ActiveRecord::Base

  # the above prevents email duplication by downcasing first  
  before_save { self.email = email.downcase }
  before_create :create_remember_token

  # has_secure_password does a lot, needs a password_digest column in
  # db to work correctly
  has_secure_password

  # validates(:name, presence: true) is also valid
  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    # rails infers that uniquess: true from the above statement


  validates :password, length: { minimum: 6 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.hash(User.new_remember_token)
    end
end