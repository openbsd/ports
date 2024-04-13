COMMENT =		manage DNS configuration across any number of DNS hosts

MODGO_VERSION =		v4.9.0
MODGO_MODNAME =		github.com/StackExchange/dnscontrol/v4

DISTNAME =		dnscontrol-${MODGO_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://stackexchange.github.io/dnscontrol/

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go
FIX_CLEANUP_PERMISSIONS = Yes

DOCDIR =		${PREFIX}/share/doc/dnscontrol

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/* ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${DOCDIR}/providers
	${INSTALL_DATA} ${WRKSRC}/documentation/providers/*.md ${DOCDIR}/providers/
	${INSTALL_DATA} ${WRKSRC}/README.md ${WRKSRC}/docs/*.md ${DOCDIR}/

MODGO_TEST_FLAGS +=	-provider BIND
MAKE_ENV +=		BIND_DOMAIN=test.tld
do-test:
	cd ${WRKSRC}/integrationTest && ${MODGO_TEST_CMD}

.include "modules.inc"

.include <bsd.port.mk>
