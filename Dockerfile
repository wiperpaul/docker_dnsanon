FROM fedora:33
LABEL maintainer="wiperpaul@gmail.com"
LABEL org.label-schema.name="fedora/dnsanon"
LABEL org.label-schema.description="ANT dnsanon"

RUN dnf -y update && dnf -y install dnf-plugins-core 

RUN dnf -y copr enable johnh/libtrace

RUN dnf -y install wget \
pandoc \
ldns-devel \
libpcap-devel \
make automake gcc gcc-c++ kernel-devel \
libtrace-devel \ 
openssl-devel \
perl-Fsdb \
&& dnf clean all

WORKDIR /tmp
RUN wget https://ant.isi.edu/software/dnsanon/dnsanon-1.11-2.tar.gz

RUN tar -xvf dnsanon-1.11-2.tar.gz -C / 

WORKDIR /dnsanon-1.11-2

RUN make


