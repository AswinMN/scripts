#!/bin/bash

config=http://10.7.0.100:51000/config
label=0.9.1
profile=env

docker run --restart always -tid -d -p 9090:9090 -e active_profile_env=$profile -e spring_config_label_env= $label -e spring_config_url_env=$config --name=pre-registration-login-service  pre-registration-login-service

docker run --restart always -tid -d -p 9092:9092 -e active_profile_env=$profile -e spring_config_label_env= $label -e spring_config_url_env=$config --name=pre-registration-demographic-service  pre-registration-demographic-service

docker run --restart always -tid -d -p 9093:9093 -e active_profile_env=$profile -e spring_config_label_env= $label -e spring_config_url_env=$config --name=pre-registration-document-service  pre-registration-document-service

docker run --restart always -tid -d -p 9094:9094 -e active_profile_env=$profile -e spring_config_label_env= $label -e spring_config_url_env=$config --name=pre-registration-datasync-service  pre-registration-datasync-service

docker run --restart always -tid -d -p 9095:9095 -e active_profile_env=$profile -e spring_config_label_env= $label -e spring_config_url_env=$config --name=pre-registration-booking-service  pre-registration-booking-service

docker run --restart always -tid -d -p 9096:9096 -e active_profile_env=$profile -e spring_config_label_env= $label -e spring_config_url_env=$config --name=pre-registration-batchjob-service pre-registration-batchjob-service

docker run --restart always -tid -d -p 9098:9098 -e active_profile_env=$profile -e spring_config_label_env= $label -e spring_config_url_env=$config --name=pre-registration-translitration-service  pre-registration-translitration-service

docker run --restart always -tid -d -p 9099:9099 -e active_profile_env=$profile -e spring_config_label_env= $label -e spring_config_url_env=$config --name=pre-registration-notification-service  pre-registration-notification-service

docker run --restart always -tid -d -p 9091:9091 -e active_profile_env=$profile -e spring_config_label_env= $label -e spring_config_url_env=$config --name=pre-registration-generateqrcode-service  pre-registration-generateqrcode-service

