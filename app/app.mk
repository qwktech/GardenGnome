web-terminal:
	${CE} run --rm -it \
	  --name web-terminal \
	  --volume ./app/web/:/srv/web:Z \
	  --workdir /srv/web \
	  docker.io/library/node:25-alpine \
	  sh

web-init:
	${CE} run --rm -it \
	  --name web-terminal \
	  --volume ./app/web/:/srv/web:Z \
	  --workdir /srv/web \
	  docker.io/library/node:25-alpine \
	  npm install

web-dev:
	${CE} run --rm -it \
	  --name web-dev \
	  --volume ./app/web/:/srv/web:Z \
	  --workdir /srv/web \
	  --network=host \
	  docker.io/library/node:25-alpine \
	  npm run dev

