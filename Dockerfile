FROM jenkins
USER root
RUN apt-get install build-essential cmake
USER jenkins

