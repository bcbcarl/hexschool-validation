# Stage 1 - the build process
FROM node:10-alpine as build-deps
WORKDIR /usr/src/app/
COPY package.json yarn.lock .yarnrc ./
COPY .yarn_mirror ./.yarn_mirror
RUN yarn --no-cache --frozen-lockfile --offline
COPY . ./
RUN yarn build

# Stage 2 - the production environment
FROM nginx:stable-alpine
COPY --from=build-deps /usr/src/app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
