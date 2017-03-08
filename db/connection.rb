name_of_db = if ENV["RACK_ENV"] == "test"
  "db/test.db"
else
  "db/production.db"
end

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: name_of_db,
)
