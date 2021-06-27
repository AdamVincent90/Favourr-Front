# pull base image
FROM node:14.13.1-buster-slim

EXPOSE 19006 19001 19002

# install global packages
RUN npm i --unsafe-perm -g npm@latest expo-cli@latest

# install dependencies first, in a different location for easier app bind mounting for local development
# due to default /opt permissions we have to create the dir with root and change perms
WORKDIR /app
COPY . ./
RUN npm install

CMD ["expo", "start"]
