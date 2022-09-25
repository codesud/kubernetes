# kubenetes commands 


Most used Kubernetes commands :

```
Syntax :  kubectl action resources 

* kubectl get nodes  
* kubectl get nodes -o wide
* kubectl cluster-info 
* kubectl api-versions
* kubectl api-resources 
* kubectl --help 
```

### Kubernetes Configuration :
```
Kubectl will try to use the config resides in ~/.kube/config file 
```

## K8 resources can be created by imperative commands or with the declaratvie approch ( VCS )

#### Resources :
```
1) PODS
2) ENV 
3) CMD 
4) ConfigMap 
5) Secret 
6) SETS  
    a) Deployments
    b) ReplicaSets 
    c) DaemonSets
    d) StatefulSets
7) Health Checks
    a) Readiness Probe 
    b) Liveliness Probe 
    c) Startup Probe 

8) Resource Utilization   ( CPU, Memory, Page )
    a) Requests
    b) Limits


### What is a page: 

```
In OS, processes are divided into equal parts called pages, and main memory is also divided into equal parts and each part is called a frame. Each page gets stored in one of the frames of the main memory whenever required. So, the size of a frame is equal to the size of a page.
```

``` 
### <u> OpenShift :  </u>
It's a RedHat Flavored K8's. Majorly used for Kubernetes Solution on Data Centers
```
Linux ---> RedHat ( ES )
        ---> CentOS ( CS )

K8   ---> OpenShift  ( ES ) 
        ---> Kubernetes ( CS )
            ( EKS , GKE )

```
## Probes

### Liveliness Prode:
```
The kubelet uses liveness probes to know when to restart a container. For example, liveness probes could catch a deadlock, where an application is running, but unable to make progress. Restarting a container in such a state can help to make the application more available despite bugs.
```
### Readiness Probe: 
```
The kubelet uses readiness probes to know when a container is ready to start accepting traffic. A Pod is considered ready when all of its containers are ready. One use of this signal is to control which Pods are used as backends for Services. When a Pod is not ready, it is removed from Service load balancers.
```


### Resource Allocation :
```
It's always recommended to give a maximum of 80% of the nodes capability to a pod.

t3.Medium : 2 CPU , 4 GB Memory 

2 - 0.4 = 16 Core 
4 - 1.2 = 2.8 Mem 
```


### Pod Priority & Preemption 
```
Pods can have priority. Priority indicates the importance of a Pod relative to other Pods. If a Pod cannot be scheduled, the scheduler tries to preempt (evict) lower priority Pods to make scheduling of the pending Pod possible.

Pob Preemption: Allows Cluster to evict the low priority pods, so that they can be evict the low priority pods to accomodat the high priority pods.


--> The higher the value, the higher the priority

```

### How to create a priority class ?

```
apiVersion: scheduling.k8s.io/v1
kind: PriorityClass
metadata:
name: high-priority
value: 1000000
globalDefault: false
description: "This priority class should be used for XYZ Customers pods only."

```
