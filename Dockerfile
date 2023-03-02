  FROM node
WORKDIR /usr/petrit-nextjs-app

COPY package*.json /usr/petrit-nextjs-app

RUN npm install


COPY . /usr/petrit-nextjs-app

RUN npm run build

COPY . /usr/petrit-nextjs-app

EXPOSE 3000

ENTRYPOINT [ "npm", "run", "start" ]
