# Qt5 Docker
Docker image for Qt5 development with CMake and GTest.

## Usage
### Option 1 - Pulling from Docker Hub

1. Pull the image from Docker Hub:
```
docker pull matimoreyra/qt5
```
2. Run in a container:
```
docker run -d [--name <container_name>] matimoreyra/qt5
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
docker build -t qt5 .
```

3. Run in a container:
```
docker run -dit [--name <container_name>] matimoreyra/qt5
```
