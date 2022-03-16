from flask import Flask
import time

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!" + time.asctime(time.localtime())


if __name__ == '__main__':
    app.run(debug=True, port=5005)