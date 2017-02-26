class Activity < ApplicationRecord
  has_and_belongs_to_many :tecnologies
  has_and_belongs_to_many :members
end
