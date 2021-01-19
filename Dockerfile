# This Dockerfile will help build the image
# Kenneth Cruz

FROM python:3.8
WORKDIR /usr/src/app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8090
CMD [ "python", "./web.py" ]