#!/bin/bash
echo '{
  "token": "'${IL_TOKEN}'",
  "username": "'${IL_USERNAME}'",
  "host": "'${IL_HOST}'",
  "remote_path": "'${IL_REMOTE_PATH}'",
  "http_address": "'${IL_HTTP_ADDR}'"
}' > config.json;

python3 inlinetexbot.py
