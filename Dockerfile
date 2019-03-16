FROM node:alpine

#  Add code dir
ADD . /code

# Change to 
WORKDIR /code

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install 

# Bundle app source
COPY . .
EXPOSE 3010

CMD [ "npm", "run", "start" ]
