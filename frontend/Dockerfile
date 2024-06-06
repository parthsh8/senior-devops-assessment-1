# Use the official Node.js image as a parent image
FROM node:18-alpine AS build
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . .
RUN npm run build --prod

# Use the official NGINX image to serve the Angular application
FROM nginx:stable-alpine
COPY --from=build /app/dist/frontend /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
