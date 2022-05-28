class Author < ActiveRecord::Base
  has_many :books
  validates :name, uniqueness: true
end