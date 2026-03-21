COMMENT =	test vectors from C2SP's Project Wycheproof

# No releases
VERSION =	20260321
DISTNAME =	wycheproof-${VERSION}

GH_ACCOUNT =	C2SP
GH_PROJECT =	wycheproof
GH_COMMIT =	45d916899992c5e42dba75106104ca8ce7ff8370

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
