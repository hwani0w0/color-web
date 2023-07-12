- 참고용
 ```bash
 alia k='kubectl'
 k create ns hyehwan
 k apply -f jenkins-volume.yaml
 k apply -f jenkins-service.yaml
 
 k get pods -n hyehwan
 k logs jenkins-77ffdbcf4f-cqv6w -n hyehwan
 ```
 