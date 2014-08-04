class Fish < ActiveRecord::Base

  validates :name, presence: {message: "is required"}
  validates :wikipedia_page, presence: {message: "is required"}

end