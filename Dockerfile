FROM node
WORKDIR /app
COPY package.json .
COPY ./build/ .
RUN npm install --silent
ENV NODE_PATH .
EXPOSE 3000
CMD ["node","run.js"]