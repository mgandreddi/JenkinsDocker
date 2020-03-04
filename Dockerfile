FROM node:10.19.0
FROM jenkins/jenkins:lts
USER root
COPY --from=0 /usr/local /usr/local
RUN npm --version
RUN node --version
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
USER jenkins