class User < ApplicationRecord
  validates :name, present: true

  has_many :groups, :entities
end