from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/')
def index():
    return 'VMSS server works'

if __name__ == '__main__':
   app.run()
