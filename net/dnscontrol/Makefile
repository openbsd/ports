COMMENT =		manage DNS configuration across any number of DNS hosts

MODGO_VERSION =		v3.20.0
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

# zipexe.go is replaced during build with version from
# https://github.com/42wim/go.zipexe to fix panic with go-1.19:
# https://github.com/golang/go/issues/54227
do-build:
	cd ${WRKSRC} && ${MODGO_CMD} generate ${MODGO_FLAGS}
	chmod u+w \
		${MODGO_WORKSPACE}/pkg/mod/github.com/daaku/go.zipexe@v1.0.1/zipexe.go
	cp ${FILESDIR}/zipexe.go \
		${MODGO_WORKSPACE}/pkg/mod/github.com/daaku/go.zipexe@v1.0.1/
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnscontrol ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${DOCDIR}/providers
	${INSTALL_DATA} ${WRKSRC}/docs/_providers/*.md ${DOCDIR}/providers/
	${INSTALL_DATA} ${WRKSRC}/README.md ${WRKSRC}/docs/*.md ${DOCDIR}/

MODGO_TEST_FLAGS +=	-provider BIND
MAKE_ENV +=		BIND_DOMAIN=test.tld
do-test:
	cd ${WRKSRC}/integrationTest && ${MODGO_TEST_CMD}

.include "modules.inc"

.include <bsd.port.mk>
