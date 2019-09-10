##################
### DOCKER CLI ###
##################

# Create and run container
docker run image_id

# Create and run container with port assignment
docker run -p 8080:8080 image_id

# Create and run container with docker volumes > reference local folders in the container
# $(pwd) current working folder
# ":" maps a folder on local to one on the container, without ":" makes a bookmark, i.e. don't overwrite
docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app 7b9c1e3e5466

# connect to a container and run something
docker exec -it container_id command

# create an image from a different file
docker build -f FILE_NAME .

# tag
docker build -t calinate/IMAGE_TAG .



######################
### DOCKER COMPOSE ###
######################

# Create and start a container
docker-compose up



