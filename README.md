Jenkins Docker Compose
1) run docker desktop
2) download project and unzip to foleder
3) run in command prompt: cd 'FOLDER_LOCATION'
example: cd C:\Users\PC\Desktop\jenkins
4) run command: docker compose build
5) open web-browser and enter url: localhost:8080 defult login User:admin Pass:admin

source/info: https://www.digitalocean.com/community/tutorials/how-to-automate-jenkins-setup-with-docker-and-jenkins-configuration-as-code

Kubernetes, Openldap, phpLDAPadmin - multi verifaction
1) install kubernetes
![kubernetes install](https://user-images.githubusercontent.com/109173989/180791303-8458902a-3e44-4381-b582-b30705566b20.PNG)
2) download helm https://helm.sh/docs/intro/install/
3) run command: helm repo add helm-openldap https://jp-gouin.github.io/helm-openldap/
4) run command: helm install my-release helm-openldap/openldap-stack-ha
5) run command: kubectl port-forward service/my-release-phpldapadmin 8080:80
