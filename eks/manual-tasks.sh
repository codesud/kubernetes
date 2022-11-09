# Here are the steps to install ingress controller :

helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update 
helm install my-release nginx-stable/nginx-ingress
