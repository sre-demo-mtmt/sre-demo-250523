from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, Docker and GitHub Actions!（１と２成功）"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
