FROM jenkins
USER root
RUN apt-get install -y build-essential cmake
RUN apt-get install -y octave octave-io
USER jenkins

