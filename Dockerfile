FROM suchipi/novnc

RUN dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get install -y wine wine32 unzip

WORKDIR /root
RUN wget https://bgb.bircd.org/bgb.zip && \
  unzip bgb.zip

COPY ./bgb.conf /vnc/conf.d/bgb.conf
