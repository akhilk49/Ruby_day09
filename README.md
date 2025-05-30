# Ruby_day09

# Attendance Marking System in Ruby

This project demonstrates how to use **modules**, **classes**, and **user input** in Ruby to build a simple **attendance marking system**. It focuses on shared behavior via **mixins** (modules) and takes dynamic input to mark attendance for different roles.

---

## 🔧 Concepts Used

- **Modules and Mixins**: Shared behavior defined in a module (`Attendance`) and included in both `Student` and `Teacher` classes.
- **Object-Oriented Programming (OOP)**: Separate classes for `Student` and `Teacher`, each using the shared module.
- **Conditionals and Loops**: Used to process multiple entries and role-based object creation.

---

## 🧠 How It Works

1. The `Attendance` module contains a method `mark_attendance`, which displays a message when a person is marked present.
2. Both `Student` and `Teacher` classes include this module, so they inherit the method.
3. The script asks how many people you want to mark attendance for.
4. For each person, you:
   - Enter their **role** (`student` or `teacher`)
   - Enter their **name**
5. Based on the role, an instance of the appropriate class is created.
6. The `mark_attendance` method is called for each person, showing a confirmation message.

---

## 🧠 How to Run
```bash
ruby moduless.rb