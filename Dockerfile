# Use a base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Specify the command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
