# docker base image

python, golang, git, docker, nmon, glances, htop, java

## build

docker-compose build

## run

### prompt to play with angular cli ( https://cli.angular.io/ ) 

docker run -t -i --rm --entrypoint /bin/bash patarleth/ubuntu-angular-cli -l

### prompt to use maven

docker run -t -i --rm --entrypoint /bin/bash patarleth/ubuntu-maven -l

### use a bash function to make running an interactive shell easier

```
docker-run-bash() {
    docker run -t -i --rm --entrypoint /bin/bash "$1" -l
}
export -f docker-run-bash
```

#### maven
```
>docker-run-bash patarleth/ubuntu-maven
```

#### angular cli
```
>docker-run-bash patarleth/ubuntu-angular-cli

```

### how to use the maven entrypoints

#### first add a copule bash functions to make all of this a little easier

```
maven() {
    local p=$(pwd)
    local m2=${M2_HOME:-~/.m2}
    local settings="$HOME/maven/conf/settings.xml"
    local mavenRepoDir=""
    if [[ -d /maven ]]; then
        mavenRepoDir='-v /maven:/maven '
    fi
    if [[ -e "$settings" ]]; then
      docker run --rm $mavenRepoDir -v "$m2:/root/.m2" -v "$settings:/opt/maven/conf/settings.xml" -v "$p:/root/project" patarleth/ubuntu-maven "$@"
    else
      docker run --rm $mavenRepoDir -v "/maven:/maven" -v "$m2:/root/.m2" -v "$p:/root/project" patarleth/ubuntu-maven "$@"
    fi
}
export -f maven
```


```
ng-cli() {
    local p=$(pwd)
    docker run -v "$p:/root/project" patarleth/ubuntu-maven "$@"
}
export -f ng-cli
```

#### run

maven install
