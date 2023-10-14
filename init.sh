#!/bin/sh

rm -rf sources/frontend/repository
rm -rf sources/backend/repository

chmod +x update.sh
chmod +x sources/frontend/pull.sh
chmod +x sources/backend/pull.sh

if [ -n "$1" ]; then
    git clone -b $1 https://github.com/LikDan/StudyumFrontend.git sources/frontend/repository
    git clone -b $1 https://github.com/LikDan/StudyumApi.git sources/backend/repository
else
    git clone https://github.com/LikDan/StudyumFrontend.git sources/frontend/repository
    git clone https://github.com/LikDan/StudyumApi.git sources/backend/repository
fi
