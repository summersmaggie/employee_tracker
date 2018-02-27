require("spec_helper")

describe(Employee) do
  it("validates the presence of name") do
    employee = Employee.new({:name => ""})
    expect(employee.save()).to(eq(false))
  end

  it("has many projects") do
   employee = Employee.create({:name => "Code", })
   project1 = Project.create({:project_name => "Mike", :employee_id => employee.id})
   project2 = Project.create({:project_name => "Dawn", :employee_id => employee.id})
   expect(employee.projects()).to(eq([project1, project2]))
 end
end
