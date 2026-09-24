COMMENT=	extensible HTTP/1-2-3 web server

MODGO_MODNAME=	github.com/caddyserver/caddy/v2
MODGO_VERSION=	v2.11.4
REVISION=	2
DISTNAME=	caddy-${MODGO_VERSION}

CATEGORIES=	www

HOMEPAGE=	https://caddyserver.com/

# Apache-2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
MODGO_LDFLAGS=	-X "${MODGO_MODNAME}.CustomVersion=${MODGO_VERSION}"

EXAMPLES_DIR=	${PREFIX}/share/examples/${PKGSTEM}

post-build:
	${MODGO_WORKSPACE}/bin/caddy manpage -o ${WRKBUILD}/
	# strip built date and auto-generation marker
	sed -i -e '2s/"8".*/"8"/' -e '$$d' ${WRKBUILD}/*.8

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} files/Caddyfile ${EXAMPLES_DIR}/
	${INSTALL_MAN} ${WRKBUILD}/*.8 ${PREFIX}/man/man8/

.include "modules.inc"
.include <bsd.port.mk>
