FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install Flask and other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app into the container
COPY app.py .

# Expose port 3080 to the outside world
EXPOSE 3080

# Run the Flask app
CMD ["python", "app.py"]
