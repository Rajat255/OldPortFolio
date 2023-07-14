FROM node:alpine as build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY ./src .

RUN npm run build

FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
