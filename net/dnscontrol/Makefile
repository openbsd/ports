COMMENT =		manage DNS configuration across any number of DNS hosts

MODGO_VERSION =		v3.14.0
MODGO_MODNAME =		github.com/StackExchange/dnscontrol/v3
GH_ACCOUNT =		StackExchange
GH_PROJECT =		dnscontrol
GH_TAGNAME =		${MODGO_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://stackexchange.github.io/dnscontrol/

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go
FIX_CLEANUP_PERMISSIONS = Yes

DOCDIR =		${PREFIX}/share/doc/dnscontrol

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} generate ${MODGO_FLAGS}
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS}
	cd ${WRKSRC}/cmd/convertzone && ${MODGO_CMD} build ${MODGO_FLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnscontrol ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/cmd/convertzone/convertzone ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${DOCDIR}/providers
	${INSTALL_DATA} ${WRKSRC}/docs/_providers/*.md ${DOCDIR}/providers/
	${INSTALL_DATA} ${WRKSRC}/README.md ${WRKSRC}/docs/*.md ${DOCDIR}/

MODGO_TEST_FLAGS +=	-provider BIND
MAKE_ENV +=		BIND_DOMAIN=test.tld
do-test:
	cd ${WRKSRC}/integrationTest && ${MODGO_TEST_CMD}

.include "modules.inc"

.include <bsd.port.mk>
