
FROM node:22-alpine

WORKDIR /app

COPY package.json ./package.json
RUN npm install --omit=dev

COPY server.js ./server.js

ENV NODE_ENV=production

CMD ["npm", "start"]
