- 참고용
 ```bash
 alia k='kubectl'
 k create ns hyehwan
 k apply -f jenkins-volume.yaml
 k apply -f jenkins-service.yaml
 
 k get pods -n hyehwan
 k logs jenkins-77ffdbcf4f-cqv6w -n hyehwan
 ```
   
 ```bash
 git remote add origin https://github.com/hwani0w0/color-web.git
 git config --global user.name "hwani0w0"
 git config --global user.email hyehwan25@gmail.com
 ```