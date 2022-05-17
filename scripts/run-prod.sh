if [ -z $1 ];
then \
    echo "No version was supplied";
    exit 1;
fi;

docker run -e VERSION=$1 --rm -it -p 5001:5000 uf-cloud-ops-exercise:$1 app.py
