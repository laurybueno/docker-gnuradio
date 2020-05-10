FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update &&\
    apt install -y git \
                   libcppunit-dev \
                   libqwt-dev \
                   swig \
                   python3 \
                   python3-pip \
                   python-mako \
                   python-six \
                   python-cheetah \
                   python-lxml \
                   python-numpy \
                   python-qt4

RUN pip3 install --upgrade git+https://github.com/gnuradio/pybombs.git

RUN pybombs auto-config &&\
    pybombs recipes add-defaults

RUN pybombs prefix init /usr/local -R gnuradio-stable

RUN rm -rf /var/lib/apt/lists/*

CMD gnuradio-companion
