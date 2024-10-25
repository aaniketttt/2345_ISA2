
FROM ubuntu:latest


RUN apt-get update && apt-get install -y python3 python3-pip


RUN pip3 install Flask


RUN mkdir -p /opt/app


COPY application.py /opt/app/application.py


WORKDIR /opt/app


ENV FLASK_APP=application.py


CMD ["flask", "run", "--host=0.0.0.0"]
