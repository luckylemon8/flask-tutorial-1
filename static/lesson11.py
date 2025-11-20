from flask import Flask
import sqlite3

app = Flask(__name__)


@app.route("/student/<id>")
def student(id):
    db = sqlite3.connect("database/student_marks.db")
    db.row_factory = sqlite3.Row

    studentData = db.execute(f"SELECT * FROM Students WHERE id={id}").fetchone()

    markData = db.execute(f"SELECT * FROM Marks WHERE student_id={id}").fetchall()

    html = f"""
            The student information is<br>
            Firstname: {studentData['firstname']}<br>
            Lastname: {studentData['lastname']}<br>
            DOB: {studentData['dob']}<br>
    """

    for result in markData:
        html += f"Mark for {result['subject']} is {result['mark']} <br>"

    return html


app.run(debug=True, port=5000)
