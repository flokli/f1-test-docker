FROM python:latest
RUN pip install --upgrade pip
RUN apt-get update && apt-get install -y nodejs npm gettext
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g bower && npm install -g node-sass
RUN bash -c "echo '{ \"allow_root\": true }' > /root/.bowerrc"
RUN pip install ecdsa pycrypto paramiko lxml six Pillow redis greenlet gevent psycopg2
RUN apt-get clean
RUN bower install angular-ui-router angular-bootstrap angular angular-resource bootstrap-sass angular-ui-notification angular-ui-grid && rm -rf bower_components
