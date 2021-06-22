                                                                          
version: "3"
services:
  jenkins:
    container_name: jenkins
    image:jenkins/jenkins:lts
    privileged: true
    user: root
    ports:
      - 8080:8080
      - 50000:50000
    container_name: jenkins
    volumes:
      - "$PWD/jenkins_home:/var/jenkins_home"
      - ~/jenkins:/var/jenkins_home
      - /var/run/docker.sock:/var/run/docker.sock
      - /usr/local/bin/docker:/usr/local/bin/docker

    networks:
      - net
networks:
  net:



