# $OpenBSD: Makefile,v 1.1.1.1 2020/02/07 16:57:04 sthen Exp $

COMMENT =		CloudFlare PKI/TLS command-line toolkit and HTTP API server

GH_ACCOUNT =		cloudflare
GH_PROJECT =		cfssl
VERSION =		1.4.1
GH_TAGNAME =		v${VERSION}

CATEGORIES =		security

HOMEPAGE =		https://cfssl.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

USE_GMAKE =		Yes

MODULES=		lang/go
MODGO_LDFLAGS +=	-X github.com/cloudflare/cfssl/cli/version.version=${VERSION}

do-build:
	cd ${WRKSRC}; ${MODGO_BUILD_CMD} github.com/cloudflare/cfssl/...

post-build:
	rm ${MODGO_WORKSPACE}/bin/example
	mv ${MODGO_WORKSPACE}/bin/mkbundle ${MODGO_WORKSPACE}/bin/cfssl-mkbundle

do-test:
	cd ${WRKSRC}; ${MODGO_CMD} test github.com/cloudflare/cfssl/...

.include <bsd.port.mk>
