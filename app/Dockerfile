FROM python:3.9.10-slim-bullseye

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ARG VERSION=""
ENV VERSION=${VERSION}

ENTRYPOINT [ "python" ]
