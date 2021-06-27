# pull base image
FROM node:latest

EXPOSE 19000
EXPOSE 19001
EXPOSE 19002
EXPOSE 19006

COPY package*.json ./

# install global packages
WORKDIR /app
COPY . ./
RUN npm i -g expo-cli
RUN npm install

# install dependencies first, in a different location for easier app bind mounting for local development
# due to default /opt permissions we have to create the dir with root and change perms

CMD ["npm", "start"]
