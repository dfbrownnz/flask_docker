ROM python:3.7.9-alpine

LABEL image for a very simple flask application

WORKDIR /flask_docker

COPY . .

RUN ["pip3", "install", "pipenv"]

RUN ["pipenv", "install"]

CMD pipenv run python3 main.py