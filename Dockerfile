#
# Ubuntu 14.04 with pypy Dockerfile
#
# Pull base image.
FROM ubuntu:14.04
MAINTAINER Frank Wang "eternnoir@gmail.com"

#Update
RUN apt-get update && apt-get install -y pypy wget
RUN mkdir /pypytmp
RUN wget -P /pypytmp http://python-distribute.org/distribute_setup.py
RUN wget -P /pypytmp https://raw.github.com/pypa/pip/master/contrib/get-pip.py
RUN pypy /pypytmp/distribute_setup.py
RUN pypy /pypytmp/get-pip.py
RUN rm -rf /pypytmp

