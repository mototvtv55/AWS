FROM jenkins/jenkins
USER root
RUN sudo  apt-get -y update && apt-get install -g docker-ce-cli
RUN sudo  apt-get -y update && apt-get install -g lsb-release
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
USER jenkins
