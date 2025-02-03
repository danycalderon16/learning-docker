# 05 network
docker build -t goals-node .

 docker run --name goals-backend -v C:\Users\danyc\Documents\learning-docker\05-multi-01\backend:/app -v logs:/app/logs --rm -d -p 80:80 --network goals-net goals-node



docker run --name goals-frontend --rm -p 3000:3000 -it goals-react         
docker run --name mongodb -v data:/data/db --rm -d -e MONGO_INITDB_ROOT_USERNAME=dacv -e MONGO_INITDB_ROOT_PASSWORD=secret --network goals-net mongo
