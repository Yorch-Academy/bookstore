class Book < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true

  has_many :sells
end
