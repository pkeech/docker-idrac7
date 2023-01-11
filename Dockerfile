## DEFINE BASE IMAGE
FROM rockylinux:9.1

## INSTALL DEPENDS
RUN dnf update && \
    dnf install -y wget openssl-devel perl && \
    dnf clean all

## ADD DELL YUM REPOS
RUN wget -q -O - http://linux.dell.com/repo/hardware/latest/bootstrap.cgi | bash

## INSTALL IDRAC7 TOOLS
RUN dnf install -y srvadmin-idracadm7 && \
    dnf clean all

## ADD RACADM TO PATH
RUN ln -s /opt/dell/srvadmin/bin/idracadm7 /usr/bin/racadm

## DEFINE CMD
CMD [ "racadm" ]
