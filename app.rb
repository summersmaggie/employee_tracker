require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")
require("./lib/division")
require("./lib/employee")

get('/') do
  @employees = Employee.all()
  @divisions = Division.all()
  erb(:index)
end

get('/division/new') do
  erb(:division_form)
end

post('/divisions') do
  title = params.fetch('title')
  division = Division.new({:title => title, :id => nil})
  division.save()
  @divisions = Division.all()
  erb(:divisions)
end

get('/divisions') do
  @divisions = Division.all()
  erb(:divisions)
end

get("/divisions/:id") do
  @division = Division.find(params.fetch("id").to_i())
  erb(:division)
end

post('/employees') do
  name = params.fetch('name')
  division_id = params.fetch("division_id").to_i()
  @division = Division.find(division_id)
  @employee = Employee.new({:name => name, :division_id => division_id})
  @employee.save()
  erb(:division)
end

get("/divisions/:id/edit") do
  @division = Division.find(params.fetch("id").to_i())
  erb(:division_edit)
end

patch("/divisions/:id") do
  title = params.fetch("title")
  @division = Division.find(params.fetch("id").to_i())
  @division.update({:title => title})
  erb(:division)
end

get('/employees') do
  @employees = Employee.all()
  erb(:employees)
end

get('/employees/:id') do
  @employee = Employee.find(params.fetch("id").to_i())
  erb(:employee_edit)
end

get('/employees/:id/edit') do
  @employee = Employee.find(params.fetch("id").to_i())
  erb(:employee_edit)
end

patch("/employees/:id") do
  name = params.fetch("name")
  @employee = Employee.find(params.fetch("id").to_i())
  @employee.update({:name => name})
  @employees = Employee.all()
  erb(:employees)
end
