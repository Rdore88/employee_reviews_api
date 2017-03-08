require_relative "app_helper"
require "json"

class App < Sinatra::Base
  post "/employees" do
    content_type "application/json"
    body(Employee.create(name: params["name"], email: params["email"], phone: params["phone"], salary: params["salary"])).to_json
  end
run! if app_file == $PROGRAM_NAME
end
