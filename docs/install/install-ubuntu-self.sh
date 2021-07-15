#!/usr/bin/env bash

set -e

echo please input jdk download url:
read -r url
echo "url: ${url}"

curl -L "${url}" -o /tmp/jdk.tar.gz

jdk_home=/usr/local/jdk

rm -rf "${jdk_home}"
mkdir -p "${jdk_home}"
tar -zxf /tmp/jdk.tar.gz -C "${jdk_home}"

java_home="${jdk_home}/$(ls ${jdk_home})"
echo "java_home: ${java_home}"

old_path="export PATH=\""
new_path="export JAVA_HOME=${java_home}\n${old_path}\$JAVA_HOME/bin:"

sed_command="s@${old_path}@${new_path}@g"
echo "sed_command: ${sed_command}"

#init_script=~/.bashrc
init_script=~/.zshrc

sed -i "$sed_command" "${init_script}"

# shellcheck disable=SC1090
source "${init_script}"

echo successfully
