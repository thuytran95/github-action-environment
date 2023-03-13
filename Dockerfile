FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.rtdibij.mongodb.net
ENV MONGODB_USERNAME thuyheobeo
ENV MONGODB_PASSWORD zviLiRFK2xRPbou4

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]