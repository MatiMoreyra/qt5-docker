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
