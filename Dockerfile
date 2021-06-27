# pull base image
FROM node:latest

EXPOSE 19000
EXPOSE 19001
EXPOSE 19002
EXPOSE 19006

# install global packages
RUN npm i -g expo-cli

# install dependencies first, in a different location for easier app bind mounting for local development
# due to default /opt permissions we have to create the dir with root and change perms
WORKDIR /usr/src/app
COPY . .
WORKDIR /usr/src/app/Favourr-Front

CMD ["npm", "run", "start"]
