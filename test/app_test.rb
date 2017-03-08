require_relative "test_helper"

class TestApp < Minitest::Test
  include Rack::Test::Methods
  def teardown
    Employee.delete_all
  end

  def app
    App
  end

  def test_classes_exist
    assert Employee
  end

  def test_can_create_new_employee
    response = post "/employees", name: "Dan", email: "d@mail.com", phone: "914-555-5555", salary: "50_000.00"
    assert response.ok?
  end

  def test_can_get_employee_name
    Employee.create(name: "Dan")
    response = get "/employees/", name: "Dan"
    assert_equal "Dan", Employee.where(name: "Dan").first.name
  end
end
