# Duplicity backup

## Example usage

From the image

```bash
docker run --rm -it -v $PWD:/usr/src/app/backup piotrgiedziun/docker-duplicity bash
export AWS_ACCESS_KEY_ID=''
export AWS_SECRET_ACCESS_KEY=''
duplicity --name backup s3+http://s3-eu-central-1.amazonaws.com/[bucket]/[directory] .
```

From the repository

```bash
git clone git@github.com:piotrgiedziun/docker-duplicity.git
docker-compose build
docker-compose run --rm backup bash
```