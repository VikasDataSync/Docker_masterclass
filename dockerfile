# Use a lightweight Python 3.8 base image.
FROM python:3.8-slim

# Set the working directory inside the container.
WORKDIR /app

# Copy all project files from the host into /app in the container.
COPY . /app

# Install Python dependencies listed in requirements.txt.
RUN pip install --no-cache-dir -r requirements.txt

# Document that the container listens on port 5000.
EXPOSE 5000

# Set the default Flask application entry point.
ENV FLASK_APP=app.py

# Start the Flask development server on all interfaces at port 5000.
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

# for docker image creation cmd -> docker build -t mlops_docker_demo .  