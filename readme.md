# Docker workshop 🦈

## Dockerize project:

to dockerize your project you need to create dockerfile that contains instructions for container

- dockerfile 📃:

  ```
  FROM ImageName

  WORKDIR src/app/

  # copy your project to workdir relative path :
  COPY . .

  #command that run when you build your image
  RUN executable parameter

  # change user from root to yourUser
  USER yourUser

  # Define the network ports that this container will listen on at runtime.

  EXPOSE portProject

  # command that running when container started
  CMD ['executable','parameter']

  ```

**note: Application automatically start in production mode**

when you create dockerfile all you need now is building your image

```
docker build -t Tag-of-image path-of-dockerfile
```

now start your image 🐲

```
docker run -p your-network-port:port-of-container image-name-or-container-id
```

## Why we need docker-compose 🎼:

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration.

## Docker Commands Cheat Sheet:

| command                                |               Description                |
| -------------------------------------- | :--------------------------------------: |
| docker ps                              |         List running containers          |
| docker ps -a                           |           List all containers            |
| docker exec -it container-name /bin/sh |           connect to container           |
| docker start container-name            |            start a container             |
| docker stop container-name             |             stop a container             |
| docker kill container-name             |             kill a container             |
| docker restart container-name          |           Restart a container            |
| docker rm container-name               |            remove a container            |
| docker stats                           |       Show running container stats       |
| docker system df                       | disk space being used by your containers |
| docker run -d -p 80:80 image-name      | disk space being used by your containers |

## Share your application ☁️:

- login to your account docker hub `docker login`
- create new repo
- link your image with the repo
- push your image
- it's live now !

## References 📖:

- [how to use mongodb with docker compose instead of MongoDB Compass](https://faun.pub/managing-mongodb-on-docker-with-docker-compose-26bf8a0bbae3)
- [Docker cheat sheet](https://www.docker.com/wp-content/uploads/2022/03/docker-cheat-sheet.pdf)
- [what's containers](https://www.youtube.com/watch?v=8fi7uSYlOdc)
- [github actions CI/CD](https://docs.docker.com/ci-cd/github-actions/)
