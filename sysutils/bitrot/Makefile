# $OpenBSD: Makefile,v 1.6 2020/10/20 09:37:18 sthen Exp $

COMMENT =		detects when files bit-rot

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		bitrot-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/ambv/bitrot/

MAINTAINER =		Bryan Vyhmeister <bryan@bsdjournal.net>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=	Yes

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bitrot
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/bitrot

.include <bsd.port.mk>
