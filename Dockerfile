#FROM gcr.io/distroless/python3-debian12
#RUN pip install flask
#WORKDIR /myapp
#COPY main.py /myapp/main.py
#CMD ["python", "/myapp/main.py"]

FROM python:3-slim AS build-env
COPY main.py /myapp/main.py
WORKDIR /myapp

FROM gcr.io/distroless/python3-debian12
COPY --from=build-env /myapp /myapp
WORKDIR /myapp
CMD ["python", "/myapp/main.py"]
