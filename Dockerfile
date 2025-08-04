# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json first to optimize build
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose port 8080 (or whatever your app runs on)
EXPOSE 8080

# Command to run your app
CMD ["npm", "start"]
