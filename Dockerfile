FROM python:3.5
RUN pip install --upgrade pip
RUN apt-get update && apt-get install -y nodejs npm gettext
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g bower && npm install -g node-sass
RUN bash -c "echo '{ \"allow_root\": true }' > /root/.bowerrc"
RUN pip install ecdsa pycrypto paramiko lxml six Pillow redis greenlet gevent psycopg2 PyYAML uwsgi htmlmin xmltodict sqlparse anyjson celery coverage
RUN apt-get clean
