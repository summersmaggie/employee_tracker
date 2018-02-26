class Division < ActiveRecord::Base
  validates(:title, :presence => true)
  has_many(:employee)
end
