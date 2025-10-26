COMMENT =	test vectors from Project Wycheproof

# No releases
VERSION =	20251025
DISTNAME =	wycheproof-testvectors-${VERSION}

GH_ACCOUNT =	C2SP
GH_PROJECT =	wycheproof
GH_COMMIT =	b9298df917fbb5b4bfb73bb0dfb1137822b7a098

CATEGORIES =	security devel

MAINTAINER =	Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

WYCHEPROOF_DIR =	${PREFIX}/share/wycheproof/testvectors_v1
WYCHEPROOF_SCHEMAS =	${PREFIX}/share/wycheproof/schemas

do-install:
	${INSTALL_DATA_DIR} ${WYCHEPROOF_DIR}
	${INSTALL_DATA_DIR} ${WYCHEPROOF_SCHEMAS}
	${INSTALL_DATA} ${WRKSRC}/testvectors_v1/*.json ${WYCHEPROOF_DIR}
	${INSTALL_DATA} ${WRKSRC}/schemas/*.json ${WYCHEPROOF_SCHEMAS}

.include <bsd.port.mk>
