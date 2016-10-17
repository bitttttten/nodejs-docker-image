# based off nodejs docker image
FROM node:6-slim
MAINTAINER bitttttten <https://github.com/bitttttten>

# first add package.json for diff
ADD package.json package.json
RUN npm install

# then add the app
ADD . .

# now expose on port 6000
EXPOSE 6000