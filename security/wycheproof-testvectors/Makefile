# $OpenBSD: Makefile,v 1.2 2018/08/07 19:00:05 tb Exp $

COMMENT =	test vectors from Project Wycheproof

# No releases
VERSION =	20180731
DISTNAME =	wycheproof-testvectors-${VERSION}

GH_ACCOUNT =	google
GH_PROJECT =	wycheproof
GH_COMMIT =	f89f4c53a8845fcefcdb9f14ee9191dbe167e3e3

CATEGORIES =	security devel

MAINTAINER =	Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

WYCHEPROOF_DIR =	${PREFIX}/share/wycheproof/testvectors

do-install:
	${INSTALL_DATA_DIR} ${WYCHEPROOF_DIR}
	${INSTALL_DATA} ${WRKSRC}/testvectors/*.json ${WYCHEPROOF_DIR}

.include <bsd.port.mk>
