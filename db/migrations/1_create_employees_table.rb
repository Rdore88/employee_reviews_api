require "active_record"

class CreateEmployeesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
    end
  end
end
