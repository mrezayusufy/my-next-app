FROM node:10
# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app
# Installing dependencies
COPY package*.json ./
RUN npm install
# Copying source files
COPY . .
# Building app
RUN npm run build
EXPOSE 3000
# Running the app
CMD [ "npm", "start" ]
# docker build -t test .
# docker run -p 3000:3000 -d test