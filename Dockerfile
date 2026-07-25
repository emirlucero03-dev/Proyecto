FROM node:18

RUN mkdir -p /home/libreria
WORKDIR /home/libreria

COPY package*.json ./
RUN npm install

COPY . /home/libreria/

EXPOSE 3000

CMD ["node","/home/libreria/app.js"]


