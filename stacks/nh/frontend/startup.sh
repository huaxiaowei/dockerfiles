#!/usr/bin/env bash
export FLUENTD_ADDRESS="localhost:24223"
docker stack up -c docker-compose.yml nhos