import sqlite3

db = sqlite3.connect("database/student_marks.db")
db.row_factory = sqlite3.Row

students = db.execute("SELECT * From students").fetchall()

print(f"Firstname: {students[0]['firstname']}")
print(f"Lastname: {students[0]['lastname']}")
print(f"DOB: {students[0]['dob']}")
