import os

import unittest
from unittest.mock import patch


def get_test_client():
    from app import app

    app.config.update({
        "TESTING": True,
    })

    return app.test_client()


class TestVerion(unittest.TestCase):

    def test_version(self):
        client = get_test_client()

        with patch.dict(os.environ, {'VERSION': 'v1.2.3'}):
            response = client.get('/version')
            assert response.status_code == 200, response.status_code
            assert response.json['version'] == 'v1.2.3'


if __name__ == '__main__':
    unittest.main()
