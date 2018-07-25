# $OpenBSD: Makefile,v 1.1.1.1 2018/07/25 09:17:34 tb Exp $

COMMENT =	test vectors from Project Wycheproof

# No releases
VERSION =	20180609
DISTNAME =	wycheproof-testvectors-${VERSION}

GH_ACCOUNT =	google
GH_PROJECT =	wycheproof
GH_COMMIT =	2904be69e9d666bf3064fdc15093747e695cfae6

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
