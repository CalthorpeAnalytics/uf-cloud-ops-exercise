VERSION=latest

docker build -t uf-cloud-ops-exercise:VERSION app/

docker run -e VERSION=$VERSION --rm -it -p 5001:5000 uf-cloud-ops-exercise:$VERSION app.py
