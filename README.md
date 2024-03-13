# docker-test
Basic Docker test
To build the Docker image, save these files in the same directory and run:
```
docker build -t hello-world .
```
To run the container:
```
docker run -d -p 8080:8080 hello-world
```
To test
```
curl localhost:8080
```
