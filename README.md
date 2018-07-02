# docker base image

python, golang, git, docker, nmon, glances, htop, java

## build

docker-compose build

## run

### prompt to play with angular cli ( https://cli.angular.io/ ) 

docker run -t -i --rm --entrypoint /bin/bash patarleth/ubuntu-angular-cli -l

### prompt to use maven

docker run -t -i --rm --entrypoint /bin/bash patarleth/ubuntu-maven -l

### use a bash function to make this easier

```
docker-run-bash() {
    docker run -t -i --rm --entrypoint /bin/bash "$1" -l
}
export -f docker-run-bash

>docker-run-bash patarleth/ubuntu-maven

>docker-run-bash patarleth/ubuntu-angular-cli

```

