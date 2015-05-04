FROM ansible/ubuntu14.04-ansible
MAINTAINER Tung Ha "tunght13488@gmail.com"

ADD ansible /srv/ansible
WORKDIR /srv/ansible

RUN ansible-galaxy install \
    --role-file=roles.txt \
    --roles-path=roles \
    --force

RUN ansible-playbook \
    --connection=local \
    site.yml
