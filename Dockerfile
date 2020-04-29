# this is an official Python runtime, used as the parent image
FROM python:3.6.5-slim

# set the working directory in the container to /app
WORKDIR /app

# add the current directory to the container as /app
COPY requirements.txt  /app
#COPY ./service/ /app

# execute everyone's favorite pip command, pip install -r
RUN pip install --trusted-host pypi.python.org -r requirements.txt
COPY . /app/
# unblock port 5000 for the Flask app to run on
#EXPOSE 80

# execute the Flask app
#CMD ["python3", "/app/wordcount-project/manage.py"]
