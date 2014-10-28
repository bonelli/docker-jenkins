FROM jenkins
USER root
RUN apt-get update && apt-get install -y isc-dhcp-client maven build-essential cmake octave octave-io && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mv /sbin/dhclient /usr/sbin/dhclient
RUN echo "jenkins ALL=(root) NOPASSWD: /usr/sbin/dhclient" >> /etc/sudoers

USER jenkins
ENTRYPOINT ["sudo /usr/sbin/dhclient eth0 && /usr/local/bin/jenkins.sh"]

