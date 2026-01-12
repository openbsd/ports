COMMENT=	CloudFlare PKI/TLS command-line toolkit and HTTP API server

MODGO_MODNAME=	github.com/cloudflare/cfssl
MODGO_VERSION=	v1.6.5
DISTNAME=	cfssl-${MODGO_VERSION:S/v//}

CATEGORIES=	security

HOMEPAGE=	https://cfssl.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

USE_GMAKE=	Yes

MODULES=	lang/go

.include "modules.inc"

MODGO_LDFLAGS=	-X github.com/cloudflare/cfssl/cli/version.version=$V
TEST_DEPENDS=	${BUILD_PKGPATH}
TEST_TARGET=	github.com/cloudflare/cfssl/...

do-build:
	rm -r ${WRKSRC}/vendor
	cd ${WRKSRC}; ${MODGO_BUILD_CMD} github.com/cloudflare/cfssl/...

post-build:
	rm ${MODGO_WORKSPACE}/bin/example
	mv ${MODGO_WORKSPACE}/bin/mkbundle ${MODGO_WORKSPACE}/bin/cfssl-mkbundle

.include <bsd.port.mk>
