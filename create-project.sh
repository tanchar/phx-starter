# Script to init a phoenix project with a free elephantSQL DB

# TODO: check that phx_new exists, otherwise :  mix archive.install hex phx_new 

# usage: 
# ./create-project ../ example


source .env

if [ ! "$API_KEY" ]; then
    echo "You need a \$API_KEY defined in a .env file"
    exit 1
fi

if [ ! "$1" ]; then
    echo "You need to provide a Path for your project"
    exit 1
fi

if [ ! "$2" ]; then
    echo "You need to provide a name for your project"
    exit 1
fi

cd $1
echo $(pwd)
# mix phx.new $2

echo "Creating elephanSQL DB ..."


 curl -u :"$API_KEY" \
 -d "name=$2-dev&plan=turtle&region=google-compute-engine::europe-west2" \
 https://customer.elephantsql.com/api/instances > dbinfo.json

# curl -u :$API_KEY \
# https://customer.elephantsql.com/api/instances 

# TODO: use the resulting db create call to put a url: database_url in config/dev.exs

#   username: "postgres",
#   password: "postgres",
#   hostname: "localhost",
#   database: "brol_dev",
