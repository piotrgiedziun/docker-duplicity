# Duplicity backup

## Example usage

From the image

```bash
docker run --rm -it -v $PWD:/usr/src/app/backup piotrgiedziun/docker-duplicity bash
```

From the repository

```bash
git clone git@github.com:piotrgiedziun/docker-duplicity.git
docker-compose build
docker-compose run --rm backup bash
```