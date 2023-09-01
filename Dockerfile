<<<<<<< HEAD
FROM node:10-alpine   

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN echo "Installing Node modules..."
RUN npm install --only=production

# Bundle app source
COPY . .

RUN echo "Starting service at on port 3000.."
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
=======
# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of your application code to the container
COPY . .

# Start your Node.js application
CMD [ "npm", "start" ]
>>>>>>> bb5c7c4bf4e26cdc9c0809728ce56b8c640c02dd
