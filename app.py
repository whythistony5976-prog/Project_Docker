import os
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "status": "success",
        "message": "Python web app is running smoothly inside Docker!"
    })

if __name__ == '__main__':
    # Bind to 0.0.0.0 so the container can accept external connections
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)
