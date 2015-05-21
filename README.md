docker-django
=============

## Building 
git clone git@github.com:k-mos/docker-django.git
cd docker-django
docker build -t k-mos/django .
    
## Run django

docker run -t -i -v /path/to/code/:/home/django/app -p 80:8000 k-mos/django 
  
Browse to localhost:8000 in a web browser of your choice, it should be ok!
If you are using boot2docker you should use the docker interface by using the command boot2docker ip, and use this ip instead of localhost.    
    
    
