class Project < ActiveRecord::Base
  validates(:project_name, :presence => true)
  has_and_belongs_to_many(:employees)
end
