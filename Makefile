build:
	@./xcaddy build v2.11.1 --with github.com/mholt/caddy-ratelimit --with github.com/caddyserver/cache-handler --with github.com/ueffel/caddy-brotli --with github.com/caddy-dns/cloudflare --with github.com/mholt/caddy-l4

build-alpha:
	@xcaddy build v2.11.1 --with github.com/mholt/caddy-ratelimit --with github.com/caddyserver/cache-handler --with github.com/ueffel/caddy-brotli --with github.com/caddy-dns/cloudflare --with github.com/mholt/caddy-l4 --with github.com/devetek/caddyserver-minifier@v0.0.2-beta.0

build-dev:
	@xcaddy build v2.11.1 --with github.com/mholt/caddy-ratelimit --with github.com/caddyserver/cache-handler --with github.com/ueffel/caddy-brotli --with github.com/caddy-dns/cloudflare --with github.com/mholt/caddy-l4 --with github.com/devetek/caddyserver-minifier=../caddyserver-minifier