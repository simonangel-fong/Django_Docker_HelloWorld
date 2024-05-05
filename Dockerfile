FROM python:3.8-slim-buster

# WORKDIR	Change working directory. = cd
WORKDIR /app

# COPY	Copy files and directories. = cp
COPY requirements.txt requirements.txt

# RUN	Execute build commands.
RUN pip3 install -r requirements.txt

# copy all files to docker
COPY . .

# CMD	Specify default commands.
# 0.0.0.0: it will accept connections on any IP address assigned to the machine.
# The server will listen for incoming connections on all available network interfaces
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
