# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Add the current directory code to the working directory
ADD . /app

# Install the packages mentioned in the requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]