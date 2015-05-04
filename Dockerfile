FROM ansible/ubuntu14.04-ansible
MAINTAINER Tung Ha "tunght13488@gmail.com"

ADD ansible /srv/ansible
WORKDIR /srv/ansible

RUN ansible-galaxy install \
    -r roles.txt \
    -p roles

RUN ansible-playbook \
    -c local \
    site.yml
