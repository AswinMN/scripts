#!/bin/bash

config=http://10.7.0.100:51000/config
label=0.9.1
profile=env

docker run -tid --ulimit memlock=-1  -p 8088:8088 -e spring_config_url_env=$config  -e spring_config_label_env=$label -e active_profile_env=$profile  -v softhsm:/softhsm --name kernel-keymanager-service kernel-keymanager-service

docker run --restart always -tid -d -p 8094:8094 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-applicanttype-service kernel-applicanttype-service

docker run --restart always -tid -d -p 8091:8091 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-auth-service kernel-auth-service

docker run --restart always -tid -d -p 8080:8080 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-uingenerator-service kernel-uingenerator-service

docker run --restart always -tid -d -p 8081:8081 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-auditmanager-service kernel-auditmanager-service

docker run --restart always -tid -d -p 8083:8083 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-emailnotification-service kernel-emailnotification-service

docker run --restart always -tid -d -p 8084:8084 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-smsnotification-service kernel-smsnotification-service

docker run --restart always -tid -d -p 8085:8085 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-otpmanager-service kernel-otpmanager-service

docker run --restart always -tid -d -p 8086:8086 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-masterdata-service kernel-masterdata-service

docker run --restart always -tid -d -p 8087:8087 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-cryptomanager-service kernel-cryptomanager-service

docker run --restart always -tid -d -p 8089:8089 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-syncdata-service kernel-syncdata-service


docker run --restart always -tid -d -p 8093:8093 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-licensekeymanager-service kernel-licensekeymanager-service

docker run --restart always -tid -d -p 8096:8096 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-ridgenerator-service kernel-ridgenerator-service

docker run --restart always -tid -d -p 8097:8097 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-tokenidgenerator-service kernel-tokenidgenerator-service

docker run --restart always -tid -d -p 8092:8092 -e active_profile_env=$profile -e spring_config_label_env=$label -e spring_config_url_env=$config --name=kernel-signature-service kernel-signature-service

