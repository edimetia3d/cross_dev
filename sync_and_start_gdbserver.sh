#!/bin/sh

REMOTE_SERVER= your_gdb_server
REMOTE_PATH= remote_abs_path

sshpass -p your_passwd rsync ./ -avz -e ssh --exclude='*.o*'  --exclude='*.lib*' --exclude='*cmake-build*' --exclude="*build/*" --exclude="*git*" ${REMOTE_SERVER}:${REMOTE_PATH}

sshpass -p your_passwd ssh ${REMOTE_SERVER} "cd ${REMOTE_PATH};./start_gdb_server.sh"
