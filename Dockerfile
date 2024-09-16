# Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any necessary dependencies (if needed, though this script has none)
# RUN pip install --no-cache-dir -r requirements.txt || true

# Make app.py executable
RUN chmod +x app.py

# Command to run the script, tenant_id will be passed as argument in Kubernetes CronJob
ENTRYPOINT ["python", "./app.py"]
