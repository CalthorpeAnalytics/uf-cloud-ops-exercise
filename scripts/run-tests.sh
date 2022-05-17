if [ -z $1 ];
then \
    VERSION=latest;
else \
    VERSION=$1;
fi;

docker build -t uf-cloud-ops-exercise:VERSION app/

docker run --rm -it uf-cloud-ops-exercise:VERSION -m unittest tests/test_app.py
