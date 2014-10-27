FROM jenkins
USER root
RUN apt-get update && apt-get install -y maven build-essential cmake octave octave-io && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
USER jenkins

