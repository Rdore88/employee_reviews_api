require "active_record"

class CreateEmployeesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :salary
    end
  end
end
