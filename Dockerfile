FROM caddy:2-alpine

RUN apk add --no-cache tailscale

COPY Caddyfile /etc/caddy/Caddyfile
COPY run.sh /run.sh

RUN chmod +x /run.sh
CMD /run.sh
