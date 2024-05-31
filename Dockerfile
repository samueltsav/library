# Pull base image
FROM python:3.12.3-alpine

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /bookproject

# Install dependencies
COPY Pipfile Pipfile.lock /bookproject/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /bookproject/