FROM jenkins/jenkins:lts-jdk17

USER root

# Install required plugins for OIDC/GitHub + JCasC
RUN jenkins-plugin-cli --plugins \
    "configuration-as-code:1775.v810dc950b_514" \
    "github-oauth:0.39" \
    "openid4java:0.9.8" \
    "git:5.6.0"

# Copy in JCasC config
COPY jenkins.yml /var/jenkins_home/jenkins.yml

USER jenkins
