FROM amazonlinux:latest

ENV PATH /usr/local/bin:$PATH
ENV PYTHON_VERSION 3.6.1

RUN   yum -y update && \
      yum -y install \
        gcc \
        gcc-c++ \
        make \
        zlib-devel \
        bzip2-devel \
        openssl-devel \
        readline-devel \
        ncurses-devel \
        zip \
        sqlite-devel && \
      curl --remote-name --progress https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz && \
      echo '2d0fc9f3a5940707590e07f03ecb08b9 Python-3.6.1.tgz' | md5sum -c - && \
      tar zxf Python-3.6.1.tgz && \
      cd Python-3.6.1 && \
        ./configure --prefix=/usr/local --enable-shared && \
        make && \
        make altinstall && \
      echo '/usr/local/lib' > /etc/ld.so.conf.d/local-libs.conf && \
      ldconfig && \
      cd .. && \
      rm -rf Python-3.6.1.tgz Python-3.6.1

RUN cd /usr/local/bin \
	&& ln -s idle3 idle \
	&& ln -s pydoc3 pydoc \
	&& ln -s python3.6 python \
 	&& ln -s python3-config python-config \
 	&& cd /tmp/ | curl -O https://bootstrap.pypa.io/get-pip.py \
 	&& python get-pip.py \
 	&& rm -f get-pip.py \
    && cd /usr/local/bin \
    && ln -s pip3.6 pip \
    && pip install awscli

RUN mkdir /lambda/
RUN mkdir /deploy/
RUN mkdir /code/

ADD deploy.sh /bin/deploy
ADD test.sh /bin/run_test
ADD build.sh /bin/build

