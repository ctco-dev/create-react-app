# Prepare
FROM node:10 as build

ENV CI=true

WORKDIR /opt/app

# Install
COPY package.json yarn.lock ./

RUN yarn

COPY . ./

# Build
RUN yarn build

# Test
RUN yarn test

# Run
FROM nginx:mainline-alpine AS run

COPY --from=build /opt/app/.docker /tmp
COPY --from=build /opt/app/build /usr/share/nginx/html

CMD ["sh", "/tmp/start.sh"]
