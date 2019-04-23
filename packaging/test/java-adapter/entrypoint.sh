#!/usr/bin/env bash

javaTested=$1
javaRegex="openjdk"
createrepo /repo

if [ $(yum --assumeno install cypher-shell | grep -c "${javaRegex}" | bc) != "0" ]; then
    echo "Attempt to install java dependency "${javaTested} " FAILED. Here is the install output:"
    yum --assumeno install cypher-shell
    exit 1
else
    exit 0
fi
