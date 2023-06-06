class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  has_and_belongs_to_many :entities
  belongs_to :user
end
