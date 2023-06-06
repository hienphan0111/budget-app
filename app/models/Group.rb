class Group < ApplicationRecord
  validates :name, present: true
  validates :icon, present: true

  has_and_belongs_to_many :entities
end
