FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update &&\
    apt install -y git \
                   # Build dependencies
                   build-essential \
                   ccache \
                   cmake \
                   libboost-date-time-dev \
                   libboost-dev \
                   libboost-filesystem-dev \
                   libboost-program-options-dev \
                   libboost-regex-dev \
                   libboost-system-dev \
                   libboost-test-dev \
                   libboost-thread-dev \
                   libcomedi-dev \
                   libcppunit-dev \
                   libfftw3-dev \
                   libgsl0-dev \
                   libqt4-dev \
                   libqwt-dev \
                   libqwt5-qt4 \
                   libsdl1.2-dev \
                   libuhd-dev \
                   libusb-1.0-0-dev \
                   libzmq3-dev \
                   portaudio19-dev \
                   pyqt4-dev-tools \
                   python-cheetah \
                   swig \
                   # CPP dependencies
                   libasound2 \
                   libboost-date-time1.58.0 \
                   libboost-filesystem1.58.0 \
                   libboost-program-options1.58.0 \
                   libboost-thread1.58.0 \
                   libcomedi0 \
                   libfftw3-bin \
                   libgsl2 \
                   libjack-jackd2-0 \
                   liblog4cpp5v5 \
                   libportaudio2 \
                   libqwt6abi1 \
                   libsdl-image1.2 \
                   libuhd003 \
                   libusb-1.0-0 \
                   libzmq5 \
                   pkg-config \
                   # Python dependencies
                   python3 \
                   python3-pip \
                   python-mako \
                   python-six \
                   python-cheetah \
                   python-dev \
                   python-gtk2 \
                   python-lxml \
                   python-numpy \
                   python-opengl \
                   python-qt4 \
                   python-wxgtk3.0 \
                   python-zmq

RUN pip3 install --upgrade git+https://github.com/gnuradio/pybombs.git

RUN pybombs auto-config &&\
    pybombs recipes add-defaults

RUN pybombs prefix init /usr/local -R gnuradio-stable

RUN rm -rf /var/lib/apt/lists/*

CMD gnuradio-companion
