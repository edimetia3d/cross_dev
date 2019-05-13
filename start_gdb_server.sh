#!/bin/sh

EXEC_CMD='your_cmd'

make -d -j 4;
tmux kill-session -t remote_dbg_gdbserver
tmux new -s remote_dbg_gdbserver -d "localhost:9000 ${EXEC_CMD}"
