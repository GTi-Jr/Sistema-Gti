class Role < ApplicationRecord
  has_many :members
  validates :name, uniqueness: true
end
