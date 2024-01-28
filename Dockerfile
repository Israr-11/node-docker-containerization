# Set the base image to a slim variant of Node.js
FROM node:slim

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the current directory's contents into the /app directory of the container
COPY . /app

# Run npm install to install Node.js dependencies
RUN npm install

# Expose port 5000 on the container - does not publish the port, just documents it
EXPOSE 5000

# Specify the default command to run when the container starts
CMD node app.js