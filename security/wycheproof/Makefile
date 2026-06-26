COMMENT =	test vectors from C2SP's Project Wycheproof

# No releases
VERSION =	20260625
DISTNAME =	wycheproof-${VERSION}

GH_ACCOUNT =	C2SP
GH_PROJECT =	wycheproof
GH_COMMIT =	ee7b4f7e611928cbe163dc6f5e54527bfd166f34

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
