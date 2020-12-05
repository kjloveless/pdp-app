# Dockerfile

# Base image
FROM python:3.7

# Set enviroment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory
WORKDIR /code

#Install dependencies
RUN pip install pipenv psycopg2-binary
### The 2 lines below should be uncommented if your project contains a pipfile
#### you need to copy and install in the container.
# COPY Pipfile Pipfile.lock /code/
# RUN pipenv install --system

# Copy project
COPY . ./code/
CMD ["python", "./code/sample.py"]