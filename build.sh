# get the build container
docker pull dylankenneally/centoscppbuildtools:latest

# build assimp
docker run --rm -v "$PWD":/usr/src -w /usr/src/target dylankenneally/centoscppbuildtools:latest cmake ../submodules/assimp/CMakeLists.txt -B .
docker run --rm -v "$PWD":/usr/src -w /usr/src/target dylankenneally/centoscppbuildtools:latest make -j4

# build the assimp docker image
docker build --rm -f Dockerfile . -t dylankenneally/assimp:latest
