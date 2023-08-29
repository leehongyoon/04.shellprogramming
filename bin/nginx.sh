#!/bin/bash

#!/bin/bash
#Apache Web Server Configuration
# ㄱ) 패키지 설치
# ㄴ) 서비스 설정 X
# ㄷ) 서비스 기동
# ㄹ) 방화벽 등록 X
# ㅁ) SELINUX X

. /root/bin/functions.sh
#1) 패키지 설치
Pkginstall nginx


#2) 서비스 기동
ServiceStart nginx