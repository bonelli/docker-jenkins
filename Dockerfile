FROM jenkins
USER root
RUN apt-get update && apt-get install -y maven build-essential cmake octave octave-io && rm -rf /var/lib/apt/lists/*
USER jenkins

