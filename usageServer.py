import psutil
from flask import Flask, request
from pythonping import ping
import json

app = Flask(__name__)


@app.route('/')
def give_json():
    cpu = psutil.cpu_percent()
    mem = psutil.virtual_memory()[2]
#    pingMS = ping(request.remote_addr, verbose=True).rtt_avg_ms

#    return json.dumps({'cpu': cpu, 'mem': mem, 'ping': pingMS})
    return json.dumps({'cpu': cpu, 'mem': mem})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
