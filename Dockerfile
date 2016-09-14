FROM registry.access.redhat.com/rhel7.2:latest

USER root
RUN yum install --disablerepo=* --enablerepo=rhel-7-server-ose-3.2-rpms --enablerepo=rhel-7-server-rpms -y tar wget openssh openssh-clients atomic-openshift-utils && yum clean all 
RUN ssh-keygen -b 2048 -t rsa -f /root/.ssh/install-key -q -N ""

VOLUME ["/etc/ansible/"]

