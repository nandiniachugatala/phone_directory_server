# Use a lightweight Linux distribution as a base image
FROM alpine:latest

# Install Node.js and npm
RUN apk update && \
    apk add nodejs npm

# Create a working directory for the application
WORKDIR /app

# Copy the application code into the working directory
COPY . .

# Install any required dependencies
RUN npm install

# Expose the required port for the application to run .
EXPOSE 3001

# Start the application
CMD ["npm", "start"]
