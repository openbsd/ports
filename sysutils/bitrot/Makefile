# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:40 sthen Exp $

COMMENT =		detects when files bit-rot

MODPY_EGG_VERSION =	0.9.2
DISTNAME =		bitrot-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/ambv/bitrot/

MAINTAINER =		Bryan Vyhmeister <bryan@bsdjournal.net>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS=	Yes

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bitrot
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/bitrot

.include <bsd.port.mk>
