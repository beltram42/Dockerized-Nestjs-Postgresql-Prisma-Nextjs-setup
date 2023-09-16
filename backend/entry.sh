sleep 2 #very ugly haha
# npm i
npx prisma generate
npx npx prisma migrate dev --name init 
npm run start:dev & (sleep 3 && npx prisma studio)