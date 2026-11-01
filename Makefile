# dPanel router: Caddy with the plugins dPanel load balancers use.
# Versions are pinned so a release always builds the same binary.
CADDY_VERSION        ?= v2.11.7
PLUGIN_RATELIMIT     ?= github.com/mholt/caddy-ratelimit@v0.1.0
PLUGIN_CACHE         ?= github.com/caddyserver/cache-handler@v0.17.0
PLUGIN_BROTLI        ?= github.com/ueffel/caddy-brotli@v1.7.0
PLUGIN_CLOUDFLARE    ?= github.com/caddy-dns/cloudflare@v0.2.4
PLUGIN_LAYER4        ?= github.com/mholt/caddy-l4@v0.1.2
PLUGIN_MINIFIER      ?= github.com/devetek/caddyserver-minifier@v0.0.2-beta.0

PLUGINS = --with $(PLUGIN_RATELIMIT) --with $(PLUGIN_CACHE) --with $(PLUGIN_BROTLI) --with $(PLUGIN_CLOUDFLARE) --with $(PLUGIN_LAYER4)

# Used by the release workflow, which downloads xcaddy next to this file.
build:
	@./xcaddy build $(CADDY_VERSION) $(PLUGINS)

build-alpha:
	@xcaddy build $(CADDY_VERSION) $(PLUGINS) --with $(PLUGIN_MINIFIER)

build-dev:
	@xcaddy build $(CADDY_VERSION) --with $(PLUGIN_RATELIMIT) --with $(PLUGIN_CACHE) --with $(PLUGIN_BROTLI) --with github.com/caddy-dns/cloudflare=~/Projects/caddyserver-cloudflare --with $(PLUGIN_LAYER4) --with github.com/devetek/caddyserver-minifier=../caddyserver-minifier
