## Install symfony via cli ##
chmod +x scripts/install-symfony.sh 
```bash
##first time or when you need to rebuild
docker compose up --build -d

## otherwise just use this
docker compose up -d

## shut down
docker compose down
```

## Volume Persistence ##
For local developement, db and filesystems persist via use of volume. Database lives in var/lib/mysql folder,

THere's phpmyadmin included for Database UI if needed. 