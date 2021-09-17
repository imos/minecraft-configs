#!/usr/bin/env bash

mkdir -p /data/plugins
cp /plugins/*.jar /data/plugins/

exec /start "$@"
