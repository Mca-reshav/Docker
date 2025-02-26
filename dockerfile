Docker file

# Ligthweight base image of node js
FROM node:18-alpine

# Checkout working directory
WORKDIR /app

# Copy package and lock json
COPY package*.json ./

# Install dependencies
RUN npm ci --for prod : consistent dependencies

# Copy other app files
COPY . .

# Expose app running port
EXPOSE 6001

# Start the app
CMD ["node", "server.js"]


docker build -t my-node-app

docker run -p 6001:6002 my-node-app
