# AssImp Docker Image builder
- Creates a [Docker](http://www.docker.com/) Image containing [AssImp](http://www.assimp.org/)

## How to get this Docker image
- Ensure you have [Docker](http://www.docker.com/) installed and running
```bash
# make sure you're logged in to the public Docker remote
docker login docker.io

# pull the image
docker pull dylankenneally/assimp:latest
```

## To use the Docker container
```bash
docker run --rm -v "$PWD":/usr/assets -w /usr/assets dylankenneally/assimp:latest assimp <comand>
```

## To build the image yourself
- To build the image yourself
```bash
git clone --recursive https://github.com/dylankenneally/assimp-docker.git
cd assimp-docker
source ./build.sh

# to push the image
# docker push dylankenneally/assimp:latest
```
