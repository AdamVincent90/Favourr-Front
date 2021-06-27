# pull base image
FROM node:latest

# install global packages
RUN npm i -g npm@latest expo-cli@latest

# install dependencies first, in a different location for easier app bind mounting for local development
# due to default /opt permissions we have to create the dir with root and change perms
WORKDIR /app
COPY . ./
RUN npm install

EXPOSE 19000
EXPOSE 19001
EXPOSE 19002
EXPOSE 19003
EXPOSE 19006

CMD ["npm", "run", "start"]
