FROM python:3.10-alpine
RUN apk --update add nano vim  net-tools curl ansible
RUN mkdir /root/.ssh && mkdir /root/playbooks
COPY .ssh/ /root/.ssh/
RUN chmod 700 /root/.ssh/*
COPY config/ /etc/ansible/
COPY playbooks/ /root/playbooks/
WORKDIR /root/playbooks

# docker build -t config-management .
# docker run --rm -ti config-management bash
