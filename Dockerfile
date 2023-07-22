# Base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY InstallJenkins.sh

# Install the project dependencies
RUN chmod +x InstallJenkins.sh

# Copy the application code into the container
COPY --chown=node:node . .

# Expose the port the Flask application will be listening on
EXPOSE 8080

# Set environment variables, if necessary
# ENV MY_ENV_VAR=value

# Run the Jenkins App application
