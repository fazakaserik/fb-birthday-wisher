# Template for node.js
FROM node

WORKDIR /app
COPY ./ /app/

EXPOSE 4242/tcp

# Install JavaScript package to use Messenger API
RUN npm install .

CMD [ "node", "index.js" ]