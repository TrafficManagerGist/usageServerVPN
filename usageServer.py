import psutil
from flask import Flask
import json

app = Flask(__name__)


@app.route('/')
def give_json():
    cpu = psutil.cpu_percent()
    mem = psutil.virtual_memory().percent
    perf = cpu + mem
    return json.dumps({'cpu': cpu, 'mem': mem, 'perf': perf})


if __name__ == '__main__':
    app.run(port=80)
