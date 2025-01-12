#!/bin/bash

ISH=$(git show --no-patch --format='%h')
TS=$(git show --no-patch --format='%at')
DATE=$(date -u -d "@${TS}" '+%Y-%m-%d %H:%M:%SZ')

echo "${DATE} (${ISH})"
