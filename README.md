# ppspp-adhoc-server
PPSPP AdhocServer source code from http://forums.ppsspp.org/showthread.php?tid=3595&pid=59021#pid59021

Credits for the original code go to Kyhel, from the PPSPP forums.

## Compiling on Linux
Don't forget to install *libsqlite3-dev* before running `make`

## Run as Docker image

apt-get update && apt-get upgrade

apt-get install sudo -y

apt-get install -y libsqlite3-dev

apt-get install build-essential

---

docker run --rm -it -v %cd%:/build debian:jessie

apt-get update && apt-get install libsqlite3-dev && ./AdhocServer



