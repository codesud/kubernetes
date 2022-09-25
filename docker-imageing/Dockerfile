FROM  centos:7 
RUN   yum install epel-release -y 
RUN   yum install nginx -y 
RUN   rm -rf /usr/share/nginx/html/* 
# RUN   echo "Hello World" > /usr/share/nginx/html/index.html 
COPY  index.html  /usr/share/nginx/html/index.html  
EXPOSE 80 
CMD   ["nginx", "-g", "daemon off;"]
ENV   COMPONENT=nginx 
LABEL COMPONENT=${COMPONENT}  
# ENTRYPOINT   ["nginx", "-g", "daemon off;"]


### Command    ----> New PID  
### Shell ---> PID  ---> Command exec 

# CMD vs ENTRYPOINT 
# CMD is just an argument  ; You can always override it
# ENTRYPOINT is not the actual command. So, you can never override it.

# FROM         centos:7 
# RUN          useradd roboshop 
# USER         roboshop 
# CMD          ["google.com"]
# ENTRYPOINT   ["ping" , "-c", "5"]
