FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the source code into the container
COPY . /app/

# Install dependencies
RUN pip install django

# Command to run the Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
