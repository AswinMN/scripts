# scripts

Changes to be done for build_all.py file 

1. Change the path in module scevtion.

2. Change the tag version to be used.

3. Run the script to create jars and images by  
      
        ./build_all.py --clean --dockerize 
 
=============================================

Config file are example parameters to be used.


=============================================

nginx-https.conf file is an sample file to run proxy from nginx server to different application sandbox (pre-reg, kernel)

changes to be done in the file are 
      1. change the ips of kernel to kernel sandbox ip 
      2. Change the ips of Pre-reg to pre-reg sandbox ip. 

===========================================

docker-scripts contains shell scripts which can be run in single go once config container is created.

by the below command
		
		 ./kernel-docker.sh
		 ./pre-reg-docker.sh
