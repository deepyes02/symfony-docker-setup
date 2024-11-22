docker compose down
rm -rf ./phpmyadmin/
rm -rf var/
rm -rf .env.example
rm -rf server/


##build the project

cp .env .env.example
docker compose up --build -d