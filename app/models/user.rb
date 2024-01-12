class User < ApplicationRecord
  # VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[a-zA-Z0-9]+\.)+[a-zA-Z]{2,6})\z/
  before_save :sanitize_email
  
  # normalizes :email, with: ->(email) { email.strip.downcase }
  
  
  validates :first_name, presence: true, length: {maximum: 50 }
  validates :last_name, presence: true, length: {maximum: 50 }
  
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[a-zA-Z0-9]+\.)+[a-zA-Z]{2,6})\z/
  validates :email, format: { with: VALID_EMAIL_REGEX, message: "must be a valid email address"},
  uniqueness: { case_sensitive: false },
  length: { minimum: 4, maximum: 255 },
  presence: true

  # validates_presence_of :password
  validates :password, presence: true, length: {minimum: 8 }

  has_secure_password
  private
    # require 'pry'; binding.pry

    #WORKING
    def sanitize_email
      write_attribute(:email, email.strip.downcase)
    end

    # EXPERIMENT
    # def sanitize_email
    #   self.email = email.strip.downcase
    # end
end


