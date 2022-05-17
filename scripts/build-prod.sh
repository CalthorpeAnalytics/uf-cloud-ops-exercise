if [ -z $1 ];
then \
    echo "No version was supplied";
    exit 1;
fi;

docker build -t uf-cloud-ops-exercise:$1 app/
