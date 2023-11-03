# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python script to the working directory
COPY hello_world.py .

# Expose the port on which the Flask app will run
EXPOSE 8080

# Set the command to run the Flask application
CMD ["python", "hello_world.py"]