FROM lusoal/ansible-centos6
COPY . /tmp/

RUN cd /tmp/ && ansible-playbook -i prd/app-1 playbooks/lemp_stack_local.yml -vvvv && \
                goss validate