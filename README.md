# Dockerized-Nestjs-Postgresql-Prisma-Nextjs-setup

Hi, here is a dockerized very basic fullstack TS setup I have done for one of my projects at 42 Paris, with:
- NestJS + PostgreSQL + Prisma,
- NextJS,
separated in three services, linked to each other by a single network; db credentials are set in a .env.

As evoked, this is a basic setup but it performs smoothly.

Here I resolved a few commonly met issues, such as:
- how to set the project to have its dependencies -- typically node_modules -- build or rebuild and run as images only,
- which is a piece of cake for Nest, but requires more efforts to acheive for Next, since you will probably find a few posts about this topic elsewhere -- with no definitive answer,
- spoil alert: in some cases, Next is not able to rebuild completely given it doesn't find its rebuilt image because it didn't create the path... so you have priorly to do it yourself in the Dockerfile.


Running the setup:

```
1. Create the .env, at project's root (pls change credentials):
POSTGRES_HOST=db
POSTGRES_USER=ptransc
POSTGRES_PASSWORD=endence
POSTGRES_DB=mydatabase
DATABASE_URL="postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@db:5432/${POSTGRES_DB}"

2. Then run:
docker-compose up --build

3. After you have stopped the project w/ Ctrl + c, run:
docker-compose down --rmi all

4. In order to delete all images + containers in 1 bash command:
docker system prune -a
