COMMENT=	extensible HTTP/1-2-3 web server

MODGO_MODNAME=	github.com/caddyserver/caddy/v2
MODGO_VERSION=	v2.11.4
REVISION=	1
DISTNAME=	caddy-${MODGO_VERSION}

CATEGORIES=	www

HOMEPAGE=	https://caddyserver.com/

# Apache-2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
MODGO_LDFLAGS=	-X "${MODGO_MODNAME}.CustomVersion=${MODGO_VERSION}"

EXAMPLES_DIR=	${PREFIX}/share/examples/${PKGSTEM}

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} files/Caddyfile ${EXAMPLES_DIR}/

.include "modules.inc"
.include <bsd.port.mk>
