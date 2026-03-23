FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Upgrade pip and install dependencies directly
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
