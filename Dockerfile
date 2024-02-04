# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /app 

VOLUME ["/app"]

# Copy the application files into the container
COPY index.html /app

# Expose port 4000 to allow external access
EXPOSE 5050

# Define the command to run the application when the container starts
CMD ["nginx", "-g", "daemon off;"]
