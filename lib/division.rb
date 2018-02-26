class Division < ActiveRecord::Base
  validates(:title, :presence => true)
  has_many(:employees)
end
