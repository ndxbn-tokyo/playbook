#!/usr/bin/env bash
set -eu

cd ~

readonly SSH_DIRECTORY_NAME=".ssh"
if [[ ! -d ${SSH_DIRECTORY_NAME} ]]; then
	mkdir ${SSH_DIRECTORY_NAME}
	chmod 755 ${SSH_DIRECTORY_NAME}
fi

readonly PRIVATE_KEY_FILE="${SSH_DIRECTORY_NAME}/id_ed25519"
if [[ -e ${PRIVATE_KEY_FILE} ]]; then
	echo ${PRIVATE_KEY_FILE} is exists. skip ssh-keygen.
	exit 0
fi

ssh-keygen -t ed25519 -N "" -f ${PRIVATE_KEY_FILE}
cat "${PRIVATE_KEY_FILE}.pub" >> ~/.ssh/authorized_keys
ssh-keyscan localhost >> ~/.ssh/known_hosts
