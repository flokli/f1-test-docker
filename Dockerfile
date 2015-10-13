FROM python:latest
RUN pip install --upgrade pip
RUN apt-get update && apt-get install -y nodejs npm ruby-sass && npm install -g bower
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN "echo '{ \"allow_root\": true }' > /root/.bowerrc"
