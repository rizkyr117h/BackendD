# Stage 1: Install dependencies and build the Node.js application
FROM node:16 AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose port the Node.js server will use
EXPOSE 9000

# Start the Node.js server
CMD ["npm", "start"]
