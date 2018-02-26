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

post('/divisions') do
  title = params.fetch('title')
  division = Division.new({:title => title, :id => nil})
  division.save()
  erb(:division_success)
end

post('/employees') do
  name = params.fetch('name')
  employee = Employee.new({:name => name, :id => nil})
  erb(:employee_success)
end

get('/divisions') do
  @divisions = Division.all()
  erb(:divisions)
end

get('/employees') do
  @employees = Employee.all()
  erb(:employees)
end
