**Q. Wite a Dockerfile with Ubuntu 16.04 as a base image. The image should have following packages present:**
1. **telnet**
1. **curl**
1. **ffmpeg**

**While running a container from the docker image, it should launch with bash.**
_______________________________________
Step 1: Install Docker and start and enable the docker services

```[root@server ~]# yum install docker -y```

```[root@server ~]# systemctl start docker```

```[root@server ~]# systemctl enable docker```


Step 2: Create a directory

```[root@server ~]# mkdir docker && cd docker```

Step 3: Create the Dockerfile

```[root@server docker]# vim Dockerfile```

```
FROM ubuntu:16.04
RUN apt-get -y update 
RUN apt-get -y install telnet curl ffmpeg
```
Step 4: Build the docker Image using the following command

```[root@server docker]# docker build -t task1 .```

Step 5: Once the build is completed you can verify your docker image by

```[root@server docker]# docker images```
```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
task1               latest              94b1b98a488b        42 minutes ago      419 MB
docker.io/ubuntu    16.04               9499db781771        2 weeks ago         131 MB
```

Step 6: Run the docker container using the task1 docker image to launch the container as bash

```[root@server docker]# docker run -it task1```

Finally, you can verify if the required packages are installed by using

```root@761a398bedeb:/# apt list telnet```
```
Listing... Done
telnet/xenial,now 0.17-40 amd64 [installed]
```

```root@761a398bedeb:/# apt list curl```
```
Listing... Done
curl/xenial-updates,xenial-security,now 7.47.0-1ubuntu2.18 amd64 [installed]
```

```root@761a398bedeb:/# apt list ffmpeg```
```
Listing... Done
ffmpeg/xenial-updates,xenial-security,now 7:2.8.17-0ubuntu0.1 amd64 [installed]
```
