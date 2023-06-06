class Entity < ApplicationRecord
  validates :name, present: true
  validates :amount, numbericality: { greater_than_or_equal_to(0) }

  has_and_belongs_to_many :groups
end