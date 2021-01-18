# This Dockerfile will help build the image
# Kenneth Cruz

FROM python:3.7-alpine
WORKDIR /app
ADD . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD [ "python", "web.py" ]