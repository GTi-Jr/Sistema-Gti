class Achievement < ApplicationRecord
  has_and_belongs_to_many :members
  validates :name, uniqueness: true
end
