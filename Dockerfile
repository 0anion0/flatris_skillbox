FROM node

RUN git clone https://github.com/timurb/flatris.git /skillbox
WORKDIR /skillbox

RUN yarn install
RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 3000
