require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")
require("./lib/division")
require("./lib/employee")

get('/') do
  @divisions = Division.all()
  @employees = Employee.all()
  erb(:index)
end

get('/divisions') do
  @divisions = Division.all()
  erb(:divisions)
end

get('/employees') do
  @employees = Employee.all()
  erb(:employees)
end

post('/divisions') do
  title = params.fetch('title')
  division = Division.new({:title => title, :division_id => nil})
  division.save()
  @divisions = Division.all()
  erb(:divisions)
end

post('/employees') do
  name = params.fetch('name')
  employee = Employee.new({:name => name, :employee_id => nil})
  employee.save()
  @employees = Employee.all()
  erb(:employees)
end

get("/division/:id") do
  @division = Division.find(params.fetch("id").to_i())
  @employees = Employee.all()
  erb(:division_info)
end

get("/employees/:id") do
  @employee = Employee.find(params.fetch("id").to_i())
  @divisions = Division.all()
  erb(:employee_info)
end

patch("/division/:id") do
  division_id = params.fetch("id").to
end
