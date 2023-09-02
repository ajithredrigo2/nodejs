# Use the official Node.js image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Download the Dependency-Check CLI
curl -O https://dl.bintray.com/jeremy-long/owasp/dependency-check-6.4.3-release.zip

# Unzip the downloaded archive
unzip dependency-check-6.4.3-release.zip

# Make the dependency-check script executable
chmod +x dependency-check/bin/dependency-check.sh

# Move the dependency-check script to a directory in your PATH
sudo mv dependency-check/bin/dependency-check.sh /usr/local/bin/dependency-check

# Install app dependencies
RUN npm install

# Copy app source code
COPY . .

# Expose the app's port
EXPOSE 3000

# Start the Node.js app
CMD [ "npm", "start" ]
