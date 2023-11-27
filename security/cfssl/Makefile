COMMENT =		CloudFlare PKI/TLS command-line toolkit and HTTP API server

GH_ACCO7BT =		cloudflare
GH_PROJECT =		cfssl
GH_TAGNAME =		v$V

MODGO_MODNAME =		github.com/cloudflare/cfssl
V =			1.6.4
MODGO_VERSION =		v$V
#DISTNAME =		cfssl-$V

CATEGORIES =		security

HOMEPAGE =		https://cfssl.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

USE_GMAKE =		Yes

MODULES=		lang/go

.include "modules.inc"

MODGO_LDFLAGS +=	-X github.com/cloudflare/cfssl/cli/version.version=$V
TEST_DEPENDS =		${BUILD_PKGPATH}

do-build:
	rm -r ${WRKSRC}/vendor
	cd ${WRKSRC}; ${MODGO_BUILD_CMD} github.com/cloudflare/cfssl/...

post-build:
	rm ${MODGO_WORKSPACE}/bin/example
	mv ${MODGO_WORKSPACE}/bin/mkbundle ${MODGO_WORKSPACE}/bin/cfssl-mkbundle

do-test:
	cd ${WRKSRC}; ${MODGO_CMD} test github.com/cloudflare/cfssl/...

.include <bsd.port.mk>
