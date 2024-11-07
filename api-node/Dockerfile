# Use the official Node.js image as the base image
FROM node:14

COPY . /api-node
# Create and set the working directory
WORKDIR /api-node

# Install dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the app
CMD ["node", "app.js"]
