FROM ubuntu:22.04

# Install java and some linux convenient tools
RUN apt-get update && apt-get install -y openjdk-19-jre-headless wget curl vim

# Add template dir
ADD mc /mc

# Set default conatiner working dir
WORKDIR /data

ADD init /init
RUN chmod a+x /init

CMD ["/init"]

