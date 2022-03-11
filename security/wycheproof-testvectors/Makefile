COMMENT =	test vectors from Project Wycheproof

# No releases
VERSION =	20191219
DISTNAME =	wycheproof-testvectors-${VERSION}

GH_ACCOUNT =	google
GH_PROJECT =	wycheproof
GH_COMMIT =	2196000605e45d91097147c9c71f26b72af58003

CATEGORIES =	security devel

MAINTAINER =	Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

WYCHEPROOF_DIR =	${PREFIX}/share/wycheproof/testvectors

do-install:
	${INSTALL_DATA_DIR} ${WYCHEPROOF_DIR}
	${INSTALL_DATA} ${WRKSRC}/testvectors/*.json ${WYCHEPROOF_DIR}

.include <bsd.port.mk>
