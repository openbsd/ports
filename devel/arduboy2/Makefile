# $OpenBSD: Makefile,v 1.2 2019/07/12 21:02:13 sthen Exp $

COMMENT=	Arduino library for the Arduboy miniature game system

V=		5.1.0
GH_ACCOUNT=	MLXXXp
GH_PROJECT=	Arduboy2
GH_TAGNAME=	${V}
PKGNAME=	arduboy2-${V}

CATEGORIES=	devel

# BSD 3-clause
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/arduino

NO_BUILD=       Yes
NO_TEST=	Yes
PKG_ARCH=       *

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/arduino/libraries
	cp -r ${WRKDIST} ${PREFIX}/share/arduino/libraries/Arduboy2

.include <bsd.port.mk>
