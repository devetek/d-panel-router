build:
	@./xcaddy build v2.9.1 --with github.com/mholt/caddy-ratelimit --with github.com/caddyserver/cache-handler --with github.com/ueffel/caddy-brotli

build-dev:
	@xcaddy build v2.9.1 --with github.com/mholt/caddy-ratelimit --with github.com/caddyserver/cache-handler --with github.com/ueffel/caddy-brotli