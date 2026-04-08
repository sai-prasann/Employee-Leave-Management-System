# Employee Leave Management System (ELSM)

## Description
Employee Leave Management System is a web-based application developed to mage employee leave requests. It allows employees to apply for leave and enables administrators to manage roles, departments andapprove or reject leave requests.

## Features
- Admin and Employee login system
- Employee registration and profile management
- Apply for leave
- Leave approval/rejection by admin
- Manage departments and roles
- Leave history tracking
- Dashboard with leave statistics

## Tech Stack
- PHP
- MySQL
- HTML, CSS, JavaScript
- XAMPP (Apache Server)

## Project Structure
- elems/ -> Main application code
- elmsdb.sql -> Database file

## Setup Instructions
1. Extract the project folder
2. Move `elms` folder to `htdocs` (XAMPP)
3. Start Apace and MySQL in XAMPP
4. Open phpMyAdmin
5. Create a database (e.g., `elms`)
6. Import `elmsdb.sql`
7. Update database connection in project files (if required)
8. Run in browser:
       http://localhost/elms

## Modules
- Admin Module:
  - Manage employees, roles, departments
  - Approve/reject leave requests
- Employee Module:
  - Apply for leave
  - view leave history and status
 
## Author
Sai Prasanna Cheedi
