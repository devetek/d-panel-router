# dPanel Router

Caddy built with the plugins dPanel load balancers use, released as
`dpanel-router-<tag>-<os>-<arch>.tar.gz`. The iac-modules `caddyserver`
module (role `dpanel-router`) installs it as `/usr/local/bin/caddy`.

| Component | Version |
| --- | --- |
| Caddy | v2.11.7 |
| caddy-dns/cloudflare | v0.2.4 (DNS-01 behind the Cloudflare proxy) |
| mholt/caddy-l4 | v0.1.2 (TCP, UDP and PostgreSQL load balancers) |
| mholt/caddy-ratelimit | v0.1.0 |
| caddyserver/cache-handler | v0.17.0 |
| ueffel/caddy-brotli | v1.7.0 |

Built with Go 1.26.10 and xcaddy v0.4.7.

## Release

1. Change the versions in the `Makefile` and this table.
2. Create a GitHub release with a `vX.Y.Z` tag. The release workflow builds
   linux and macOS binaries (386, amd64, arm64) and attaches them.
3. Pin the tag in iac-modules (`router_git_version` in the `dpanel-router`
   role and the `caddyserver` module) and in the backend
   (`drouter.RouterGitVersion`).
