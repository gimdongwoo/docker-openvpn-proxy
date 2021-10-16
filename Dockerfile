FROM jonoh/openvpn-proxy

ENV LANG C.UTF-8

WORKDIR /app
COPY openvpn.ovpn /config/config.ovpn

ENV LOCAL_NETWORK=10.0.8.0/24 \
    OPENVPN_CONFIG_FILE=/config/config.ovpn \
    OPENVPN_PROXY_PORT=8040

EXPOSE 8040

CMD ["runsvdir", "/app"]
