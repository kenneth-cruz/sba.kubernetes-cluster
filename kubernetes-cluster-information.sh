 echo '### deployment information ###'
 kubectl describe deployment app-sba-kubernetes-cluster
 echo '### service information ###'
 kubectl describe service service-sba-kubernetes-cluster
 echo '### node information ###'
 kubectl get node  
 echo '### pod information ###'
 kubectl get pods