# $OpenBSD: Makefile,v 1.5 2020/01/20 21:41:02 sthen Exp $

# XXX intersection of GO_ARCHS and LP64_ARCHS
# providers/octodns/octoyaml/read.go:265:17: constant 4294967295 overflows int
ONLY_FOR_ARCHS = aarch64 amd64

COMMENT =		manage DNS configuration across any number of DNS hosts

GH_ACCOUNT =		StackExchange
GH_PROJECT =		dnscontrol
GH_TAGNAME =		v2.10.0

CATEGORIES =		net

HOMEPAGE =		https://stackexchange.github.io/dnscontrol/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go

MODGO_TEST_FLAGS +=	-provider BIND

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} generate ${MODGO_FLAGS}
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS}
	cd ${WRKSRC}/cmd/convertzone && ${MODGO_CMD} build ${MODGO_FLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnscontrol ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/cmd/convertzone/convertzone ${PREFIX}/bin/

do-test:
	cd ${WRKSRC}/integrationTest && ${MODGO_TEST_CMD}

.include <bsd.port.mk>
