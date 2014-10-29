FROM jenkins
USER root
RUN apt-get update && apt-get install -y sudo isc-dhcp-client xorg maven build-essential cmake octave octave-io && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mv /sbin/dhclient /usr/sbin/dhclient
RUN echo "jenkins ALL=(root) NOPASSWD: /usr/sbin/dhclient" >> /etc/sudoers
COPY dhcp-jenkins.sh /usr/local/bin/dhcp-jenkins.sh

USER jenkins
ENTRYPOINT ["/usr/local/bin/dhcp-jenkins.sh"]

