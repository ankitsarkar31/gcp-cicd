import socket
from flask import Flask, request

app = Flask(__name__)

@app.route("/")
def return_hostname():
    return "This is an example wsgi app served from {} to {}".format(socket.gethostname())

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)



