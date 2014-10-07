FROM jenkins
USER root
RUN apt-get install cmake
USER jenkins

