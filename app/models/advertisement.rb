class Advertisement < ApplicationRecord
  belongs_to :member
  # validates_uniqueness_of :date, :scope => :reason
  validates :date, :presence => true, :uniqueness => {:scope => :reason}
end
