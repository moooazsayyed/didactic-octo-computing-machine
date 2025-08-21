FROM jenkins/jenkins:lts-jdk17

# Install needed plugins
RUN jenkins-plugin-cli --plugins \
  "configuration-as-code:latest github-oauth:latest role-strategy:latest"

# Copy JCasC into reference dir
COPY jenkins.yml /usr/share/jenkins/ref/casc_configs/jenkins.yml

# Point Jenkins to it
ENV CASC_JENKINS_CONFIG=/usr/share/jenkins/ref/casc_configs/jenkins.yml
