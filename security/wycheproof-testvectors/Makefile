COMMENT =	test vectors from Project Wycheproof

# No releases
VERSION =	20250826
DISTNAME =	wycheproof-testvectors-${VERSION}
REVISION =	0

GH_ACCOUNT =	C2SP
GH_PROJECT =	wycheproof
GH_COMMIT =	96c3fa033271856d3dca237581cc2c98cf95e7d9

CATEGORIES =	security devel

MAINTAINER =	Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

WYCHEPROOF_DIR =	${PREFIX}/share/wycheproof/testvectors
WYCHEPROOF_DIR_V1 =	${PREFIX}/share/wycheproof/testvectors_v1
WYCHEPROOF_SCHEMAS =	${PREFIX}/share/wycheproof/schemas

do-install:
	${INSTALL_DATA_DIR} ${WYCHEPROOF_DIR}
	${INSTALL_DATA_DIR} ${WYCHEPROOF_DIR_V1}
	${INSTALL_DATA_DIR} ${WYCHEPROOF_SCHEMAS}
	${INSTALL_DATA} ${WRKSRC}/testvectors/*.json ${WYCHEPROOF_DIR}
	${INSTALL_DATA} ${WRKSRC}/testvectors_v1/*.json ${WYCHEPROOF_DIR_V1}
	${INSTALL_DATA} ${WRKSRC}/schemas/*.json ${WYCHEPROOF_SCHEMAS}

.include <bsd.port.mk>
