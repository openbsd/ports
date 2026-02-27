COMMENT=	extensible HTTP/1-2-3 web server

MODGO_MODNAME=	github.com/caddyserver/caddy/v2
MODGO_VERSION=	v2.11.1
REVISION=	0
DISTNAME=	caddy-${MODGO_VERSION}

CATEGORIES=	www

HOMEPAGE=	https://caddyserver.com/

# Apache-2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
MODGO_LDFLAGS=	-X "github.com/caddyserver/caddy/v2.CustomVersion=${MODGO_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/caddy
	${INSTALL_DATA} files/Caddyfile \
		${PREFIX}/share/examples/caddy

.include "modules.inc"
.include <bsd.port.mk>
