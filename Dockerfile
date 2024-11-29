# Use the official Node.js image as the base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React application
RUN npm run build

# Expose port 3001
EXPOSE 3001

# Start the application
CMD ["npm", "start"]