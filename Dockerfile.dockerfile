# Use an official Python image as the base
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 (required for Google Cloud Run)
EXPOSE 8080

# Command to start the application
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
