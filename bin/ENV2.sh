#!/bin/bash
# ENV2.sh : 환경 설정
# * $HOME/.bashrc

echo " ==== [phase 1 : 환경파일 설정] ===="
# $HOME/.bashrc 파일 설정 절차
BASHRC=$HOME/.bashrc
# BASHRC=/root/bin/bashrc.txt
cat << EOF > $HOME/.bashrc

sourec $ HOME/.bashrc
alias fwcmd >/dev/null 2>&1
if [$? -eq 0 ]; then
    echo "[ OK ] $HOME/.bashrc 환경 설정 성공"
else
    echo "[ FAIL ] $HOME/.bashrc 환경 설정 실패"
    exit 1
fi