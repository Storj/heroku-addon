FROM node:6

RUN curl https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 > /usr/local/bin/dumb-init
RUN chmod +x /usr/local/bin/dumb-init

ENV NODE_ENV production
ADD ./mock-heroku/package.json .
RUN npm install

ADD ./mock-heroku/ ./

CMD ["node", "index.js"]
