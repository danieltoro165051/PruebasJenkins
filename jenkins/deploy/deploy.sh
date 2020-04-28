#!/bin/bash

# Generamos
echo app > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
#echo $PASS >> /tmp/.auth


# Transifere el archivo
scp  -i /opt/aws-devops.pem /tmp/.auth  ubuntu@ec2-52-39-179-208.us-west-2.compute.amazonaws.com:/tmp/.auth
scp  -i /opt/aws-devops.pem /home/usuario/EntrenamientoDevOps/jenkins/pipeline/jenkins/deploy/publish ubuntu@ec2-52-39-179-208.us-west-2.compute.amazonaws.com:/tmp/publish
ssh -i /opt/aws-devops.pem  ubuntu@ec2-52-39-179-208.us-west-2.compute.amazonaws.com /tmp/publish
