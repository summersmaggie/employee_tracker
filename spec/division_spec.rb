require("spec_helper")

describe(Division) do
  it("validates the presence of title") do
    division = Division.new({:title => ""})
    expect(division.save()).to(eq(false))
  end

  it("has many employees") do
   division = Division.create({:title => "HR", :division_id => nil})
   employee1 = Employee.create({:name => "Mike", :employee_id => employee.id})
   employee2 = Employee.create({:name => "Dawn", :employee_id => employee.id})
   expect(division.employees()).to(eq([employee1, employee2]))
 end
end
