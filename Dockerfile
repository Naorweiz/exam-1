# Start from the jenkins docker image
FROM jenkins/jenkins

# Don't run the setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# USER jenkins

# install the casc
RUN jenkins-plugin-cli --plugins configuration-as-code

# Run our casc file
ENV CASC_JENKINS_CONFIG /var/jenkins_home/jenkins-casc.yaml
COPY jenkins-casc.yaml /var/jenkins_home/jenkins-casc.yaml
