# this shows how we can extend/change an existing official image from Docker Hub

FROM node:6-alpine
# highly recommend you always pin versions for anything beyond dev/learn

WORKDIR /home/node
# change working directory to root of nginx webhost
# using WORKDIR is preferred to using 'RUN cd /some/path'
COPY package*.json ./
RUN npm install 

EXPOSE 3000

COPY  index.js index.js

CMD [ "node", "index.js" ]
# I don't have to specify EXPOSE or CMD because they're in my FROM