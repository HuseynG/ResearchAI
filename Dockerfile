# Use the official Python image as the base image
FROM python:3.9-slim

# Install Poetry globally within the image
# Note: Using `pip` directly as recommended by Poetry's installation guide
RUN python3 -m pip install --upgrade pip
RUN pip install "poetry"

# Set the working directory inside the container to /app
WORKDIR /app

# Copy only the necessary files for Poetry to install dependencies
# If you don't have a pyproject.toml yet, you'll create it in the next step
# COPY pyproject.toml poetry.lock* /app/

# Configure Poetry:
# - Disable virtual environment creation, as it's not necessary in Docker
# - Skip installing dev dependencies for now
# Install dependencies if a pyproject.toml exists
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi --no-dev \
    || echo "No pyproject.toml found, skipping poetry install"

# Copy the rest of your application's code to the container
COPY . /app

# Define the default command to run when starting the container
# This should be the command to run your application, for example:
CMD ["python", "researchai/app.py"]
# For now, we'll just use a placeholder
# CMD ["echo", "Replace this with your application's start command"]
