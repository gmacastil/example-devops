# Maestro
docker run --name jenkins -u 0 -d -p 8080:8080 -p 50000:50000 \
   -v /var/run/docker.sock:/var/run/docker.sock \
   -v jenkins_home:/var/jenkins_home \
   -v $(which docker):/usr/bin/docker jenkins/jenkins:lts

# Slave
docker run -d -i -u 0 --name agent1 --init \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(which docker):/usr/bin/docker \
  -v agent1-workdir:/home/jenkins/agent jenkins/agent java -jar /usr/share/jenkins/agent.jar -workDir /home/jenkins/agent \
-jnlpUrl http://172.174.206.231:8080/computer/slave/jenkins-agent.jnlp -secret d63b8f38a6d295ea96889ede5c9d4e85eaa2d0df06e2d420f1e76f5003cec37f






# Datos de conexion
http://172.174.206.231:8080
admin/devops2023


