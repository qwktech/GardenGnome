db-run:
	${CE} run -d \
	  --pod pod-gardengnome \
	  --name db-gardengnome \
	  --network ${NETWORK_NAME} \
	  --ip 10.99.0.4 \
	  -p 5432:5432 \
	  --volume db-gardengnome-data:/data/postgres \
	  --volume ./db/init.sh:/docker-entrypoint-initdb.d/init.sh:Z \
	  --env-file ./env/postgre.env \
	  docker.io/library/postgres:18-alpine

db-pgadmin:
	${CE} run -d \
	  --pod pod-gardengnome \
	  --name pgadmin-gardengnome \
	  --network ${NETWORK_NAME} \
	  --ip 10.99.0.5 \
	  -p 5050:80 \
	  --env-file ./env/pgadmin.env \
	  -v pgadmin-gardengnome:/var/lib/pgadmin \
	  docker.io/dpage/pgadmin4:latest

