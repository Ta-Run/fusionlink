FROM node:alpine

# $ npm install -g @nestjs/cli

# nest fusion-link

WORKDIR /app

COPY . .

RUN npm install

RUN npm run start
# expose ke bina bi kaam ho jata hian  but humko btana padata hain
EXPOSE 4000
CMD ["node " ,"main.ts"]