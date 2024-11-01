# Use Python base image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application files
COPY . .

# Expose the app port and run
EXPOSE 5000
CMD ["python", "app.py"]

