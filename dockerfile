FROM node

WORKDIR /usr/lindi-ushtrime

COPY package*.json /usr/lindi-ushtrime

RUN npm install

COPY . /usr/lindi-ushtrime

RUN npm run build

COPY . /usr/lindi-ushtrime

EXPOSE 3000

CMD [ "npm", "run", "start" ]