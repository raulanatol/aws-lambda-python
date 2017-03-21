FROM amazonlinux

RUN yum install -y zip
RUN cd /tmp/ | curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli
RUN mkdir /lambda/
RUN mkdir /deploy/

ADD upload-lambda /bin/

