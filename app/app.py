import os

from flask import Flask

app = Flask(__name__)


@app.route('/version')
def version():
    version_info = {
        'version': os.environ.get('VERSION')
    }
    return version_info


if __name__ == '__main__':
    app.run(host='0.0.0.0')
