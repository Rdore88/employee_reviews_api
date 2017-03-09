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
    get "/employees/Dan"
    assert_equal "Dan", Employee.where(name: "Dan").first.name
  end

  def test_delete_employee
    Employee.create(name: "Dan")
    delete "/employees/Dan"
    # Employee.where(name: "Dan").destroy_all
    refute Employee.where(name: "Dan").any?
  end

  def test_employee_list
    Employee.create(name: "Dan")
    Employee.create(name: "Phill")
    assert_equal 2, Employee.all.length
  end

  def test_change_employee_name
    Employee.create(name: "Dan")
    patch "/employees/Dan/Robby/"
    dan = Employee.where(name: "Dan").first
    dan.name = "Robby"
    assert_equal "Robby", dan.name
  end
end
