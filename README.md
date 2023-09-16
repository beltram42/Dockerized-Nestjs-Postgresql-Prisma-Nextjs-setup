# Dockerized-Nestjs-Postgresql-Prisma-Nextjs-setup

Running the setup:

```
1. Create the .env:
POSTGRES_HOST=db
POSTGRES_USER=ptransc
POSTGRES_PASSWORD=endence
POSTGRES_DB=mydatabase
DATABASE_URL="postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@db:5432/${POSTGRES_DB}"

2. Then run:
docker-compose up --build

3. After you have stopped the project w/ Ctrl + c, run:
docker-compose down --rmi all

4. In order to all images and containers in one bash command:
docker system prune -a
