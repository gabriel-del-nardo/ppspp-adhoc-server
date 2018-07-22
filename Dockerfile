# build the image
#docker build --tag adhoc .
# for running it in front
#docker run -it --rm -p 27312:27312 --name test adhoc
# in background
#docker run -d -p 27312:27312 --name test adhoc

FROM debian:jessie
COPY . /usr/src/AdhocServer
WORKDIR /usr/src/AdhocServer
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y libsqlite3-dev
CMD ["./AdhocServer"]