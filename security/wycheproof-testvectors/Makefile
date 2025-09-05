COMMENT =	test vectors from Project Wycheproof

# No releases
VERSION =	20250902
DISTNAME =	wycheproof-testvectors-${VERSION}

GH_ACCOUNT =	C2SP
GH_PROJECT =	wycheproof
GH_COMMIT =	78acd95f7c46c2377d301e692328b4df70ec50a7

CATEGORIES =	security devel

MAINTAINER =	Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

WYCHEPROOF_DIR_V1 =	${PREFIX}/share/wycheproof/testvectors_v1
WYCHEPROOF_SCHEMAS =	${PREFIX}/share/wycheproof/schemas

do-install:
	${INSTALL_DATA_DIR} ${WYCHEPROOF_DIR_V1}
	${INSTALL_DATA_DIR} ${WYCHEPROOF_SCHEMAS}
	${INSTALL_DATA} ${WRKSRC}/testvectors_v1/*.json ${WYCHEPROOF_DIR_V1}
	${INSTALL_DATA} ${WRKSRC}/schemas/*.json ${WYCHEPROOF_SCHEMAS}

.include <bsd.port.mk>
