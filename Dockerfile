FROM debian
WORKDIR /usr/src/astrodocker
COPY . .
RUN  apt-get update \
  && apt-get install -y \
     sextractor \
     scamp \
     swarp \
  && rm -rf /var/lib/apt/lists/*
RUN cp /usr/share/source-extractor/* .
RUN cp /usr/src/astrodocker/sextractor/* .