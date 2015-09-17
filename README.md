#Rails TODO


With Rails server running all tests pass.

Going to http://localhost:3000/todos should display all the todos as JSON
Going to http://localhost:3000/todos/new should display an empty (new) todo as JSON
Going to http://localhost:3000/todos/1 should display just that single todo as JSON
Going to http://localhost:3000/todos/8989898 should display an error message as JSON
Sending a POST request to http://localhost:3000/todos with the params of { "body": "Finish Homework" } I should see my todo returned to me as json (Using Postman)
Sending a DELETE request to http://localhost:3000/todos/1 should delete that todo from the database and return the message “deleted” as json (Using Postman)
Hard Mode
Sending a PUT request to http://localhost:3000/todos/1 with the params of { completed: true } should update the todo in the database and display to me the newly changed todo as json (Using Postman)
