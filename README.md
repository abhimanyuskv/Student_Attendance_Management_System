
# Student Attendance Management System

## Overview
The **Student Attendance Management System** is a simple web application built using **PHP**, **MySQLi**, **CSS**, **JavaScript (jQuery/Ajax)**, and **Bootstrap**. This system helps manage and track student attendance for each class and subject in a school. Teachers can record attendance, and admins can manage students, faculties, courses, and generate attendance reports.

### Features
1. **User Authentication**:
   - Secure login for Admin, Faculty, and Staff.
   - Role-based access control:
     - **Admin**: Full system access (manage all users and data).
     - **Staff**: Can only manage attendance records for their students.

2. **Student Management**:
   - Admin can manage student details.
   - Add, update, or remove students.

3. **Course & Subject Management**:
   - Admin can manage courses and subjects.
   - Assign students to specific courses and subjects.

4. **Class and Faculty Management**:
   - Admin can assign faculty members to classes and manage class schedules.

5. **Attendance Tracking**:
   - Faculty members can mark attendance for students.
   - Options to mark students as **Present** or **Absent**.
   - Attendance is recorded for each class session.

6. **Attendance Reporting**:
   - Admin can generate monthly attendance reports for students.
   - Detailed report of student attendance.

7. **User Management**:
   - Admin can manage user credentials and roles within the system.

### Technologies Used
- **Frontend**: HTML, CSS, JavaScript, jQuery, Bootstrap
- **Backend**: PHP
- **Database**: MySQL (MySQLi)
- **Additional**: Ajax for dynamic content updates


## Default Access Credentials
- **Admin**:
  - Username: `admin`
  - Password: `admin123`
  
- **Faculty**:
  - Username: `<Faculty Email>`
  - Password: `<Faculty ID>` (Default password is the faculty's ID number)

## Pages and Features
- **Login Page**: Users log in with their credentials.
- **Home Page**: Default page after login.
- **Course Management**: Admin/Staff can manage courses.
- **Subject Management**: Admin/Staff can manage subjects.
- **Faculty Management**: Admin/Staff can manage faculty members.
- **Student Management**: Admin/Staff can manage student records.
- **Class Management**: Admin/Staff can manage class schedules.
- **Attendance Page**: Faculty can mark attendance for students.
- **Attendance Report**: Generate monthly attendance reports.

## Installation Instructions

1. **Download** the source code and extract the zip file.
2. **Set up a Local Web Server** (e.g., XAMPP/WAMP).
3. **Create a MySQL Database**: 
   - Name: `sams`
4. **Import the SQL File**: Located in the `database` folder of the source code.
5. **Copy the Source Code** to the appropriate directory in your local server (e.g., `C:\xampp\htdocs\sams`).
6. **Browse the Application**: Open your browser and go to `http://localhost/sams`.


## License

[MIT](https://choosealicense.com/licenses/mit/)

