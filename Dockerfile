FROM jenkins
USER root
RUN apt-get install -y build-essential cmake
USER jenkins

