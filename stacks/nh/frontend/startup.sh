#!/usr/bin/env bash
export FLUENTD_ADDRESS="localhost:23223"
docker stack up -c docker-compose.yml nhos