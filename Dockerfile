FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install --save-dev supertest@6.3.3 mocha@10.2.0 ejs@3.1.9 nyc@15.1.0
RUN npm run test
EXPOSE 8000
CMD ["node","app.js"]
