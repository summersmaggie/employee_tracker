class Employee < ActiveRecord::Base
  validates(:name, :presence => true)
  belongs_to(:division)
end
