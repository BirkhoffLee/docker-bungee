# docker-bungee
My Docker image for running a BungeeCord instance.

**This repository is no longer being updated; I'm moving this to a private repository. I didn't delete this repository because I hope it can help someone else.**

# Usage
```bash
$ docker build -t bungee .
$ docker run -P -e "JAVA_ARGS=-Xmx2G -Xms1G" -v $(pwd)/bungeedata:/data -itd --name my-bungee bungee
$ docker attach bungee
```
