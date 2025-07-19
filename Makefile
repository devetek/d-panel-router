build:
	@./xcaddy build v2.10.0 --with github.com/mholt/caddy-ratelimit --with github.com/caddyserver/cache-handler --with github.com/ueffel/caddy-brotli --with github.com/caddy-dns/cloudflare --with github.com/mholt/caddy-l4

build-dev:
	@xcaddy build v2.10.0 --with github.com/mholt/caddy-ratelimit --with github.com/caddyserver/cache-handler --with github.com/ueffel/caddy-brotli --with github.com/caddy-dns/cloudflare --with github.com/mholt/caddy-l4