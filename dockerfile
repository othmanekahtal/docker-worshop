FROM node:alpine
WORKDIR /usr/src/app
COPY . .
RUN yarn install --production
USER node
EXPOSE 3000
CMD ["yarn", "start"]