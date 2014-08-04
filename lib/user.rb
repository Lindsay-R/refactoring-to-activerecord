class User < ActiveRecord::Base

  has_many :fish

  validates :username, presence: {message: "is required"}
  validates :username, uniqueness: true
  validates :password, presence: {message: "is required"}, length: {minimum: 4, message: "must be at least 4 characters"}

  def self.authenticate(username, password)
    find_by(username: username, password: password)
  end

end
