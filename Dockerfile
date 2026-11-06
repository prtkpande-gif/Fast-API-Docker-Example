# Use a slim image of python 3.10
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 to make the application accessible
EXPOSE 8000

# Define the command to run the app
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]