FROM python:3
RUN apt-get update && apt-get install -y zip
RUN mkdir /pack
ADD pack.sh /pack/pack.sh
WORKDIR /pack
VOLUME [/pack]
CMD /bin/sh pack.sh
