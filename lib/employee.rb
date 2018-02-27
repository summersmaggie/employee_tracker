class Employee < ActiveRecord::Base
  validates(:name, :presence => true)
  has_and_belongs_to_many(:projects)
  belongs_to(:divisions)
end
