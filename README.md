# Dockerized-Nestjs-Postgresql-Prisma-Nextjs-setup

Hi, here is a dockerized fullstack TS setup I have done for one of my projects at 42 Paris, with:
- NestJS + PostgreSQL + Prisma,
- NextJS,
separated in three services, linked to each other by a single network. It performs smoothly.

Here I resolved a few commonly met issues, such as:
- how to set the project to have its dependencies -- typically node_modules -- build or rebuild and run as images only,
- which is a piece of cake for Nest, but requires more efforts to achieve with Next, as mentionned in a few posts about this topic out there -- with no definitive answers.

In some cases, Next is not able to rebuild completely: it doesn't find its rebuilt image, because it didn't create the path to it... so you will need have to priorly create the path yourself in the Dockerfile.



# Running the setup:

1. Create the .env, at project's root (pls change credentials):
POSTGRES_HOST=db
POSTGRES_USER=ptransc
POSTGRES_PASSWORD=endence
POSTGRES_DB=mydatabase
DATABASE_URL="postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@db:5432/${POSTGRES_DB}"

2. Then run:
docker-compose up --build



# To stop + cleanup setup's containers/images:

- After you have stopped the project w/ Ctrl + c, run:
docker-compose down --rmi all

- In order to delete all images + containers in 1 bash command:
docker system prune -a
