# Running Jenkins Docker Image and Mounting to host machine

* Build docker image command:
```bash
  docker build -t <image_name> .
  ```
* Run docker image with volume mounting: 
```bash
docker run -p 8080:8080 -v jenkins_home:/var/jenkins_home  -v /var/run/docker.sock:/var/run/docker.sock  <image_name>
```
