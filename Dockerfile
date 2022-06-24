FROM jenkins/agent
USER ${user}
RUN echo $user
RUN apt-get update &&\
    apt-get install -y curl &&\
    apt-get clean -y && rm -rf /var/lib/apt/lists/*
RUN  curl -sSL https://get.docker.com/ | sh
RUN usermod -aG docker jenkins