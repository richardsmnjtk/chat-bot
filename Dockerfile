# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/requirements.txt

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the rest of the working directory contents into the container at /app
COPY . /app

# Expose the port the app runs on
EXPOSE 8502

# Set environment variables (if needed)
# ENV SOME_ENV_VARIABLE value

# Run the application
CMD ["streamlit", "run", "app.py", "--server.port=8502"]

# Note: Replace "your_script_name.py" with the actual name of your script file.
