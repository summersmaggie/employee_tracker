ENV['RACK_ENV'] = 'test'

require("rspec")
require("sinatra/activerecord")
require("division")
require("employee")

# RSpec.configure do |config|
#   config.after(:each) do
#     Task.all().each() do |task|
#       task.destroy()
#     end
#   end
# end
