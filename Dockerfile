FROM python:3.10-rc-buster
ENV PYTHONUNBUFFERED 1

# Install the build tools
RUN apt update && apt install -y build-essential

# Make the code directory
RUN mkdir /code
WORKDIR /code

# Install requirements for the covid charts script
COPY requirements.txt /code/
RUN pip install -r requirements.txt
