FROM openshift/jenkins-agent-maven-35-centos7

USER root

ADD ./google-chrome.repo /etc/yum.repos.d/google-chrome.repo
ADD ./install-chromedriver.sh $HOME/install-chromedriver.sh
RUN $HOME/install-chromedriver.sh

USER 1001