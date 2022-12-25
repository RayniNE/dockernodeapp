FROM node:14-alpine

WORKDIR /usr/app

# We copy the package.json first and run a yarn install
# because the packages wont be updated too often
# this way, we can get faster builds when only code in the js file has been changed
# we can use the cached container that holds the yarn install.
COPY ./package.json .
RUN yarn install

COPY ./index.js .


CMD ["yarn", "start"]
