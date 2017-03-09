This program allows for a user to update employee information by passing in information
in the body and accessing/updating information based on user input. In order to pass in
information the post method is used to have user pass in multiple variables like name,
email, phone, and salary. Using get "/employees/:name" will spit back the information of
the requested employee. Using dele "employees/:name" will delete the employee with that
name in the database.Typing get "employees/list" will list all of the employees in the
database. Finally patch "/employees/:name/:newname" will change the employee's name with the first
parameter name to the second parameter newname.
