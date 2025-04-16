COMMENT =	test vectors from Project Wycheproof

# No releases
VERSION =	20250405
DISTNAME =	wycheproof-testvectors-${VERSION}

GH_ACCOUNT =	C2SP
GH_PROJECT =	wycheproof
GH_COMMIT =	3bfb67fca7c7a2ef436e263da53cdabe0fa1dd36

CATEGORIES =	security devel

MAINTAINER =	Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

WYCHEPROOF_DIR =	${PREFIX}/share/wycheproof/testvectors
WYCHEPROOF_DIR_V1 =	${PREFIX}/share/wycheproof/testvectors_v1

do-install:
	${INSTALL_DATA_DIR} ${WYCHEPROOF_DIR}
	${INSTALL_DATA_DIR} ${WYCHEPROOF_DIR_V1}
	${INSTALL_DATA} ${WRKSRC}/testvectors/*.json ${WYCHEPROOF_DIR}
	${INSTALL_DATA} ${WRKSRC}/testvectors_v1/*.json ${WYCHEPROOF_DIR_V1}

.include <bsd.port.mk>
