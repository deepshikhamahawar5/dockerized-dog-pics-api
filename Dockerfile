# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY app/package*.json ./

# Install all dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY app/ .

# Expose the port the app runs on
EXPOSE 3000

# Set the default command to start the app
CMD ["npm", "start"]
