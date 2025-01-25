# Step 1: Use the official Python image as the base
FROM python:3.8-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy all files from the current directory to the container's /app directory
COPY . /app

# Step 4: Install Python dependencies using pip
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the port that the application runs on (5000)
EXPOSE 5000

# Step 6: Set an environment variable (optional, used by the app)
ENV NAME World

# Step 7: Define the default command to run the application
CMD ["python", "app.py"]
