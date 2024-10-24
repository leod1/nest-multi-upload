# Use the official NestJS Node.js base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Build the app
RUN npm run build

# Command to run the application
CMD ["npm", "run", "start:prod"]
