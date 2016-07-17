# present (Reveal JS presentation using reveal-md)
#
# docker run -v `pwd`:/slides -p 1948:1948 -d madhuakula/present
#

FROM node:slim

MAINTAINER Madhu Akula <madhu.akula@hotmail.com>

RUN mkdir -p /slides

# installing reveal-md package
RUN npm install -g reveal-md

# slides directory which is mounted from host
WORKDIR /slides

# reveal-md default port for presentation 
EXPOSE 1948

ENTRYPOINT ["/usr/local/bin/reveal-md"]

CMD [ "--help" ]
