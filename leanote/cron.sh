#!/usr/bin/env bash

CName=leanote_db_1

Online=$(docker ps -a | grep $CName)

if [ -n "$Online" ]; then
    git clone https://git.oschina.net/caryyu/assets.git ~/assets
    cd ~/assets
    docker exec $CName mkdir /exports
    docker exec $CName mongodump -d leanote -o /exports
    docker cp $CName:/exports/leanote ~/assets/leanote
    docker exec $CName rm -rf /exports
    git add .
    git commit -m "sync"
    git push
    rm -rf ~/assets
fi