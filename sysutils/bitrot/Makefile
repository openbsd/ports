# $OpenBSD: Makefile,v 1.4 2018/02/07 14:04:48 bentley Exp $

COMMENT =		detects when files bit-rot

MODPY_EGG_VERSION =	0.9.2
DISTNAME =		bitrot-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/ambv/bitrot/

MAINTAINER =		Bryan Vyhmeister <bryan@bsdjournal.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS=	Yes

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bitrot
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/bitrot

.include <bsd.port.mk>
