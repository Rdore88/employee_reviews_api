require_relative "test_helper"

class TestEmployee < Minitest::Test
  def teardown
    Employee.delete_all
  end
focus
  def test_classes_exist
    assert Employee
  end

  def test_can_create_new_employee
    new_employee = Employee.create(name: "Dan", email: "d@mail.com", phone: "914-555-5555", salary: 50_000.00)
    assert new_employee
  end

  def test_can_get_employee_name
    new_employee = Employee.create(name: "Dan", email: "d@mail.com", phone: "914-555-5555", salary: 50_000.00)
    dan = Employee.find(new_employee.id)
    assert_equal "Dan", dan.name
  end

  def test_can_get_employee_salary
    new_employee = Employee.create(name: "Dan", email: "d@mail.com", phone: "914-555-5555", salary: 50_000.00)
    assert_equal 50_000.00, new_employee.salary
  end

  # def test_add_employee_review
  #   xavier = Employee.create(name: "Xavier", email: "ProfX@marvel.com", phone: "911", salary: 70_000.00)
  #   assert xavier.add_employee_review(positive_review_one)
  # end

  # def test_give_raise_by_amount
  #   new_employee = Employee.new(name: "Dan", email: "d@mail.com", phone: "914-555-5555", salary: 50_000.00)
  #   assert_equal 60_000, new_employee.raise_by_amount(10_000)
  # end

  # def test_evaluate_employee_review
  #   xavier = Employee.new(name: "Xavier", email: "ProfX@marvel.com", phone: "911", salary: 70_000.00)
  #   xavier.add_employee_review(positive_review_one)
  #   assert xavier.satisfactory
  # end

  # def test_paid_less_than_average
  #   xavier = Employee.create(name: "Xavier", email: "ProfX@marvel.com", phone: "911", salary: 70_000.00)
  #   new_employee = Employee.create(name: "Dan", email: "d@mail.com", phone: "914-555-5555", salary: 50_000.00)
  #   old_employee = Employee.create(name: "Yvonne", email: "Yvonne@urFired.com", phone: "919-123-4567", salary: 40_000.00)
  #   assert_equal [new_employee, old_employee], Employee.paid_less_than_average
  # end
end
