from flask import Flask, render_template, request
import sqlite3


app = Flask(__name__)


@app.route("/add", methods=("GET", "POST"))
def AddStudent():
    if request.method == "POST":

        firstname = request.form["firstname"]
        lastname = request.form["lastname"]
        dob = request.form["dob"]

        db = sqlite3.connect("database/student_marks.db")
        db.execute(
            "INSERT INTO Students(firstname, lastname, dob) VALUES (?, ?, ?)",
            (firstname, lastname, dob),
        )
        db.commit()

    return render_template("add.htm.")


app.run(debug=True, port=5000)
