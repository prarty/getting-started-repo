FROM centos

COPY querysurge-installer-7.0.18-linux-x64.run .
RUN yum install -y libaio
RUN yum install -y numactl

CMD chmod +x querysurge-installer-7.0.18-linux-x64.run ;echo "Started"; ./querysurge-installer-7.0.18-linux-x64.run --mode unattended --enable-components Server,MySQL,Agent --db_hostname 127.0.0.1 --db_port 3306 --tomcat_http_port 80 --tomcat_shutdown_port 8005 --bundle_oracle_driver 1 --register_agent 1 --register_statsmon 0 --tomcat_username admin --tomcat_password admin --tomcat_username2 admin --tomcat_password2 admin --feature_code_field_group no_feature_code --custommemoryconfig 0  --installdir "/opt/QuerySurge"; echo "Done"  ;sleep infinity
