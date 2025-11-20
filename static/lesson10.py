from flask import Flask, render_template
import sqlite3

app = Flask(__name__)


@app.route("/")
def home():
    db = sqlite3.connect("database/student_marks.db")
    db.row_factory = sqlite3.Row
    studentData = db.execute("SELECT * FROM Students").fetchall()

    return render_template("index.html", students=studentData, logged_in=False)


@app.route("/marks")
def Marks():
    db = sqlite3.connect("database/student_marks.db")
    db.row_factory = sqlite3.Row
    markData = db.execute("SELECT * FROM Marks").fetchall()

    return render_template("marks.html", results=markData)


app.run(debug=True, port=5000)
