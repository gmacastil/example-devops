docker network create devops


# Maestro
docker run --name jenkins -u 0 -d -p 8080:8080 -p 50000:50000 \
   -v jenkins_home:/var/jenkins_home \
   --network=devops jenkins/jenkins:lts

# Slave
docker run -i -d -u 0 --name slave --init\
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(which docker):/usr/bin/docker \
  --network=devops \
  -v slave_home:/home/jenkins/agent jenkins/agent java -jar /usr/share/jenkins/agent.jar -workDir /home/jenkins/agent \
-jnlpUrl http://jenkins:8080/computer/slave/jenkins-agent.jnlp -secret ce9676bd24ff241888722d66d7a0faac93c80f8d469eff4abbb3beed2cbd3d4f



# gitlab token
glpat-sYDWKVXap1CzC8QfsVVY





