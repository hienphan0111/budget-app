class Category < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  has_and_belongs_to_many :trades
  belongs_to :user
end
