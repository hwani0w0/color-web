FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install openjdk-11-jdk -y
RUN curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
RUN apt-get update -y && apt-get install jenkins -y

CMD ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
CMD systemctl start jenkins

EXPOSE 8080/tcp