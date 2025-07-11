#FROM gcr.io/distroless/python3-debian12
#RUN pip install flask
#WORKDIR /myapp
#COPY main.py /myapp/main.py
#CMD ["python", "/myapp/main.py"]

# FROM python:3-slim AS build-env
# COPY main.py /myapp/main.py
# WORKDIR /myapp

# FROM gcr.io/distroless/python3-debian12
# COPY --from=build-env /myapp /myapp
# WORKDIR /myapp
# CMD ["python", "/myapp/main.py"]

# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir Flask


EXPOSE 8080


ENV FLASK_APP=main.py


CMD ["python", "main.py"]

