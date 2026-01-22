COMMENT =	test vectors from C2SP's Project Wycheproof

# No releases
VERSION =	20260119
DISTNAME =	wycheproof-${VERSION}

GH_ACCOUNT =	C2SP
GH_PROJECT =	wycheproof
GH_COMMIT =	0fd0ec1cf2114f456f5c3e7c61ba807fb1311b45

CATEGORIES =	security devel

MAINTAINER =	Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

WYCHEPROOF_DIR =	${PREFIX}/share/wycheproof/

do-install:
	${INSTALL_DATA_DIR} ${WYCHEPROOF_DIR}
	cd ${WRKSRC} && pax -rw -s ',^.*/\.github.*,,' . ${WYCHEPROOF_DIR}

.include <bsd.port.mk>
