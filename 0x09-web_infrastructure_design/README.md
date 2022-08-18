# 0x09. Web infrastructure design

# Tasks

## 0. Simple web stack

### Issues
SPOF - Single point of failure.
If one part of the system example database downtime the whole system will go down. Low availability.

The server does not operate during maintence or when deploying new code

The system is not scalable.

https://drive.google.com/file/d/1IKIsgYQ6rw61vZFiwidSZXS0JDOcwu4v/view

## 1-distributed_web_infrastructure
Distribution algorithm for load balancer is Round Robin Scheduling

Round Robin Scheduling
Requests are served by the server sequentially one after another.
After sending the request to the last server, it starts from the first server again.

load-balancer enabling an Active-Active

Active-Active
Both servers activaley running the same type of services at the same time.

Primary-Replica (Master-Slave)
a mechanism which enables data of one database server (the master) to be replicated or to be copied to one or more computers or database servers (the slaves), in order all users share the same level of information. This process leads to a distributed database in which users can quickly access data without interfering with each other.

Primary node vs Replica node
Primary database is regarded as the authoritative source, while the replica database is synchronized to it. 


https://drive.google.com/file/d/1WQygfW1d14N_N4mhcfBiBExog0-Nc_3Q/view


## 2. Secured and monitored web infrastructure

Queries per second
A measure of the rate of traffic going in a particular server serving a Web domain. 


https://drive.google.com/file/d/1g_uyeRDsr8bhXZYKx3d--KSnlHDuPqTr/view?usp=sharing