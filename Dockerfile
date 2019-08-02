FROM centos

RUN yum install -y libaio
RUN yum install -y numactl

CMD ls -ltr
