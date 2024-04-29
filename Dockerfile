FROM tensorflow/tensorflow:latest-gpu
FROM python:3.9
RUN apt-get update

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN ls -la $APP_HOME/
RUN apt-get update

# Install dependencies
RUN pip install -r requirements.txt
