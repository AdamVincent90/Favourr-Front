# pull base image
FROM node:latest-alpine

# install global packages
RUN npm i -g npm@latest expo-cli@latest

# install dependencies first, in a different location for easier app bind mounting for local development
# due to default /opt permissions we have to create the dir with root and change perms
WORKDIR /app
COPY . ./
RUN npm install

EXPOSE 19006 19001 19003 19002 19000

CMD ["npm", "run", "start"]
