# Use official Node.js image from Docker Hub
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if it exists) to install dependencies
COPY package*.json ./

# Install dependencies (if any)
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
