#!/bin/sh
# Ref: https://longhorn.io/docs/1.1.0/deploy/install/#installation-requirements

# 1. Installing open-iscsi
yum install iscsi-initiator-utils

# 2. Installing NFSv4 client
yum install nfs-utils -y