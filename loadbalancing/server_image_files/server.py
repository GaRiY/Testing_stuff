#!/usr/bin/python3.8

from flask import Flask, render_template, request, url_for
from os import environ, getenv

app = Flask(__name__)

id = getenv("ID");

@app.route("/")
def load_page():
    return f"<h2>My ID is {id}</h2>"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)