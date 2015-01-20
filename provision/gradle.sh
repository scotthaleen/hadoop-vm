#!/usr/bin/env bash

sudo apt-get -y install gradle


if [[ ! -d /usr/lib/jvm/default-java ]]; then
    sudo ln -s /usr/lib/jvm/java-7-oracle /usr/lib/jvm/default-java
fi


