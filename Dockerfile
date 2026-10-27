# Use an official lightweight Python runtime
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency specifications first to leverage Docker's build cache
COPY requirements.txt .

# Install packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application source code
COPY . .

# Expose the internal port the app runs on
EXPOSE 5000

# Run the application when the container starts
CMD ["python", "app.py"]
