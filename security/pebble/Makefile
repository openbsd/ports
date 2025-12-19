COMMENT=	small test server for RFC 8555 (ACME)

MODGO_MODNAME=	github.com/letsencrypt/pebble/v2
MODGO_VERSION=	v2.9.0

DISTNAME=	pebble-${MODGO_VERSION}

CATEGORIES=	security

# MPL-2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
NO_TEST=	Yes

MODGO_LDFLAGS=	-X 'main.version=${MODGO_VERSION:S/v//}'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/pebble
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,*.md} ${PREFIX}/share/doc/pebble/
	cp -r ${WRKSRC}/test ${PREFIX}/share/examples/pebble/
	${INSTALL_MAN} ${WRKSRC}/docs/man1/* ${PREFIX}/man/man1/

.include "modules.inc"
.include <bsd.port.mk>
