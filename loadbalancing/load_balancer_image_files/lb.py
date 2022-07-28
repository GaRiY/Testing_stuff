#!/usr/bin/python3.8
from requests import get
from flask import Flask, redirect
from os import system

app = Flask(__name__)

hosts = ["web1", "web2"]

@app.route("/")
def load_balance():
    for host in hosts:
        host_up = True if system("ping -c 1 " + host) == 0 else False
        # If host is available redirect to it
        if host_up:
            return get(f"http://{host}:5000").content
    return "<h2>No server available.</h2>"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)