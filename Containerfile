FROM docker.io/luckfoxtech/luckfox_pico:1.0 

RUN apt-get update -y && \
  apt-get install -y kmod


