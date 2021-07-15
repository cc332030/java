#!/usr/bin/env bash

set -e

work_dir=/tmp/adoptopenjdk

mkdir -p "${work_dir}"
cd "${work_dir}"

apt-get install -y wget apt-transport-https gnupg

gpg_file=adoptopenjdk-keyring.gpg
gpg_file_path="./${gpg_file}"

curl https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public -o "${gpg_file_path}"

gpg --no-default-keyring --keyring "${gpg_file_path}" --import public

gpg_output_file=adoptopenjdk-archive-keyring.gpg
gpg --no-default-keyring --keyring "${gpg_file_path}" --export --output "${gpg_output_file}"

rm -f adoptopenjdk-keyring.gpg

mv "${gpg_output_file}" /usr/share/keyrings

VERSION_CODENAME=$(cat /etc/os-release | grep VERSION_CODENAME | cut -d = -f 2)
echo "deb [signed-by=/usr/share/keyrings/${gpg_output_file}] https://adoptopenjdk.jfrog.io/adoptopenjdk/deb ${VERSION_CODENAME} main" | tee /etc/apt/sources.list.d/adoptopenjdk.list

apt-get update

apt-get install adoptopenjdk-11-openj9
