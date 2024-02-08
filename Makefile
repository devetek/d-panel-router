build:
	@./xcaddy build v2.7.6 --with github.com/mholt/caddy-ratelimit --with github.com/caddyserver/cache-handler --with github.com/ueffel/caddy-brotli

build-dev:
	@xcaddy build v2.7.6 --with github.com/mholt/caddy-ratelimit --with github.com/caddyserver/cache-handler --with github.com/ueffel/caddy-brotli