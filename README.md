### Objective 
The primary objective of this project is to containerize and deploy the Wisecow application from the provided GitHub repository onto a Kubernetes environment. This deployment will be facilitated by ArgoCD, introducing a continuous delivery mechanism. Additionally, the deployment aims to implement secure TLS communication for enhanced security.

### Dockerization

``` Dockerfile
FROM ubuntu

WORKDIR /app

RUN apt-get update && apt-get upgrade -y

RUN apt install fortune-mod cowsay netcat-openbsd -y

COPY wisecow.sh .

RUN chmod +x wisecow.sh

ENV PATH="/usr/games:${PATH}"

EXPOSE 4499

CMD [ "./wisecow.sh" ]
```

* Building the docker image 
``` shell
docker build -t wisecow-image .
```

* Running the docker container
``` shell
docker run -p 8080:4499 wisecow-image
```

* Access the application in the web browser at http://localhost:8080.