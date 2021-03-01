# This Dockerfile will help build the image
# Kenneth Cruz
# FROM python:3.8
# WORKDIR /usr/src/app
# COPY . .
# RUN pip install --no-cache-dir -r requirements.txt
# EXPOSE 8090
# CMD [ "python", "./web.py" ]

# Image with python to deploy the flask app
FROM python:3.7-alpine
WORKDIR /sba.kubernetes-cluster

# Copy all the files in the repo
ADD . /sba.kubernetes-cluster

# Installing requirements.txt
RUN pip install -r requirements.txt

# The aplication will be run in port 80
EXPOSE 80

# Command to run the app
CMD ["python","web.py"]