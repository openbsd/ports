COMMENT =	test vectors from Project Wycheproof

# No releases
VERSION =	20231103
DISTNAME =	wycheproof-testvectors-${VERSION}

GH_ACCOUNT =	google
GH_PROJECT =	wycheproof
GH_COMMIT =	d9f6ec7d8bd8c96da05368999094e4a75ba5cb3d

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
