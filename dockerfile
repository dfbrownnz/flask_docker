# syntax=docker/dockerfile:1.4
#FROM --platform=$BUILDPLATFORM python:3.10-alpine AS builder
# FROM ubuntu:22.04
FROM --platform=$BUILDPLATFORM python:3.10-alpine AS builder

# COPY requirements.txt /mnt/d/Users/dfbro/test/docker/test1
# install app dependencies

RUN pip install flask==2.1.*

COPY . .
CMD ["python", "main.py"]


# install Docker tools (cli, buildx, compose)
# COPY --from=gloursdocker/docker / /

#docker compose up -d
# pip install --upgrade pip
#pip show pandas
# pandas==0.23.4 numpy==1.16.0 numpy==1.24.2 pandas==2.0.0
