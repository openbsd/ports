# $OpenBSD: Makefile,v 1.3 2018/09/28 15:08:13 tb Exp $

COMMENT =	test vectors from Project Wycheproof

# No releases
VERSION =	20180921
DISTNAME =	wycheproof-testvectors-${VERSION}

GH_ACCOUNT =	google
GH_PROJECT =	wycheproof
GH_COMMIT =	c313761979d74b0417230eddd0f87d0cfab2b46b

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
