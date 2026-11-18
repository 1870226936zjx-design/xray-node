#!/bin/sh
sed -e "s/__PORT__/${PORT:-8080}/g" -e "s/__UUID__/${UUID}/g" -e "s|__WSPATH__|${WSPATH}|g" /usr/local/etc/xray/config.json > /tmp/config.json
exec /usr/local/bin/xray run -config /tmp/config.json
