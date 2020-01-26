# Qt5 Docker
Docker image for Qt5 development with CMake and GTest.

## Deployments

This project is automatically deployed to [matimoreyra/qt5](https://hub.docker.com/repository/docker/matimoreyra/qt5) Docker Hub repository.

## Tags
The tag indicates which version of Ubuntu is used as base image.

### Available tags:
  - latest
  - bionic
  - xenial

## Usage
### Option 1 - Pulling from Docker Hub

1. Pull the image from Docker Hub:
```
docker pull matimoreyra/qt5[:tag]
```
2. Run in a container:
```
docker run -dit [--name <container_name>] matimoreyra/qt5[:tag]
```

### Option 2 - Building from Dockerfile:
1. Clone this repo:
```
git clone git@github.com:MatiMoreyra/qt5-docker.git
```
Or just download it from [here](https://github.com/MatiMoreyra/qt5-docker/archive/master.zip).

2. Build the image:

From the folder containing the Dockerfile, run:
```
docker build -t matimoreyra/qt5[:tag] .
```

3. Run in a container:
```
docker run -dit [--name <container_name>] matimoreyra/qt5[:tag]
```

## CI/CD
### Continuous integration
Every pull request is automatically built and tested on Docker Hub (see [docker-compose.test.yml](https://github.com/MatiMoreyra/qt5-docker/blob/master/hooks/pre_build)).

### Continuous delivery
Every commit to master triggers an automatic build pipeline on Docker Hub which consists on the following steps:
  - Pull the last built image for each tag, these are used as cache to speed up builds (see [hooks/pre_build](https://github.com/MatiMoreyra/qt5-docker/blob/master/hooks/pre_build)).
  - Build an image for each tag using the Dockerfile (see [hooks/build](https://github.com/MatiMoreyra/qt5-docker/blob/master/hooks/build)).
  - Test each image by building `test/executable` with CMake and running GTest for it. This is achieved by running `test/executable/build.sh` inside a docker container for each image (see [hooks/test](https://github.com/MatiMoreyra/qt5-docker/blob/master/hooks/test)).
  - Push the images to Docker Hub (see [hooks/push](https://github.com/MatiMoreyra/qt5-docker/blob/master/hooks/push))
