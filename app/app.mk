app-terminal:
	${CE} run --rm -it \
	  --name app-terminal \
	  --volume ./app/:/srv/app:Z \
	  --workdir /srv/app \
	  docker.io/library/node:25-alpine \
	  sh

app-dev:
	${CE} run --rm -it \
	  --name app-dev \
	  --volume ./app/web/:/srv/app/web:Z \
	  --workdir /srv/app/web \
	  --publish 5173:5173 \
	  docker.io/library/node:25-alpine \
	  npm run dev

