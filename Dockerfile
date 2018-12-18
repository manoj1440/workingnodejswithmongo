FROM node:8 

WORKDIR /app

COPY package.json package.json 

RUN npm install

COPY app.js .
COPY index.html . 

EXPOSE 3000 
 
CMD [ "npm", "start" ]
ENTRYPOINT [ "node", "app.js"] 
