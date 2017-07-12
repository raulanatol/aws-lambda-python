FROM amazonlinux

RUN yum install -y zip
RUN cd /tmp/ | curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli
RUN mkdir /lambda/
RUN mkdir /deploy/
RUN mkdir /code/

ADD deploy.sh /bin/deploy
ADD test.sh /bin/run_test
ADD build.sh /bin/build
