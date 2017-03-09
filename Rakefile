task :test do
  require_relative "test/employee_reviews_test"
  require_relative "test/app_test"
end

namespace :db do
  task :migrate do
    require_relative "db/migrations/1_create_employes_table"
    require_relative "db/connection"
    begin
      CreateEmployeesTable.migrate(:up)
    rescue
    end
  end

  task :rollback do
    require_relative "db/migrations/1_create_employees_table"
    require_relative "db/connection"
    begin
      CreateEmployeesTable.migrate(:down)
    rescue
    end
  end
end
