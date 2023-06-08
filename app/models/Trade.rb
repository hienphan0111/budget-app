class Trade < ApplicationRecord
  validates :name, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }

  has_and_belongs_to_many :categories
  belongs_to :author, class_name: 'User'
end
