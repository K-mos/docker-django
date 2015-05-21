FROM debian:jessie
MAINTAINER Marion Agé <fleurettux@gmail.com>

RUN apt-get update
RUN apt-get install -y vim curl wget git python python-pip
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install django==1.8

RUN useradd -u 1000 -g 100 -d /home/django django
RUN mkdir /home/django && chown -R django /home/django

USER django
WORKDIR /home/django

RUN echo 'alias runserver="python manage.py runserver -v 0 0.0.0.0:8000"' >> /home/django/.bashrc

RUN mkdir /home/django/app

ADD start.sh /home/django/start.sh

ENTRYPOINT ["/bin/bash", "-e", "/home/django/start.sh"]

EXPOSE 8000
