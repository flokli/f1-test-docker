FROM python:latest
RUN pip install --upgrade pip
RUN apt-get update && apt-get install -y nodejs npm ruby-sass && npm install -g bower
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN bash -c "echo '{ \"allow_root\": true }' > /root/.bowerrc"
RUN pip install ecdsa pycrypto paramiko lxml six Pillow redis greenlet gevent psycopg2
RUN apt-get clean
