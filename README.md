# docker-bungee
The Docker image for running a BungeeCord instance.

# Usage
```bash
$ docker built -t bungee .
$ docker run -P -e "JAVA_ARGS=-Xmx2G -Xms1G" -v $(pwd)/bungeedata:/data -itd --name my-bungee bungee
$ docker attach bungee
```
