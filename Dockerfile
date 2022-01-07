FROM debian
WORKDIR /usr/src/astrodocker
COPY . .
RUN  apt-get update \
  && apt-get install -y \
     sextractor \
     scamp \
     swarp \
     imagemagick \
  && rm -rf /var/lib/apt/lists/*