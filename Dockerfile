# Dockerfile for book_catalog microservice
# Use a base image
FROM python:3.11-alpine

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY book_catalog/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY /book_catalog/ .

# Expose the application port
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
