FROM ubuntu:latest
COPY . /tmp/
#install goss for ansible testing

RUN apt-get update -y
RUN apt-get install ansible -y && apt-get install curl -y
RUN curl -fsSL https://goss.rocks/install | sh

RUN cd /tmp/ && ansible-playbook -i prd/app-1 playbooks/lemp_stack_local.yml
#Testing with goss if everything is running
RUN cd /tmp/ && goss validate