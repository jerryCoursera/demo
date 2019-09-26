#!/usr/bin/env bash

APP_PATH = /home/ec2-user/demo
VIRTUAL_ENV =
# ubuntu requirements
apt-get install -y cmake
apt-get install -y libmysqlclient-dev



# install nlopt inside virtual environment
# need to have numpy installed before trying to
# compile and install nlopt
if [ ! -d ${APP_PATH}/nlopt-2.4.2 ]; then
    cd ${APP_PATH}
    log "Installing the nlopt package"
    wget -q http://ab-initio.mit.edu/nlopt/nlopt-2.4.2.tar.gz
    tar -xf  nlopt-2.4.2.tar.gz
    cd nlopt-2.4.2
    ./configure PYTHON=${VIRTUAL_ENV}/bin/python --prefix=${VIRTUAL_ENV} --enable-shared
    make
    make install
fi
