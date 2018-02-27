require("spec_helper")

describe(Project) do
  it("validates the presence of name") do
    project = Project.new({:project_name => ""})
    expect(project.save()).to(eq(false))
  end

  it("has many employees") do
   projects = Project.create({:project_name => "Code"})
   employee1 = Employee.create({:name => "Mike", :project_id => project.id})
   employee2 = Employee.create({:name => "Dawn", :project_id => project.id})
   expect(projects.employees()).to(eq([employee1, employee2]))
 end
end
