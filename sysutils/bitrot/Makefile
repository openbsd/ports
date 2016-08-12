# $OpenBSD: Makefile,v 1.1.1.1 2016/08/12 23:15:46 juanfra Exp $

COMMENT =		detects when files bit-rot

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		bitrot-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/ambv/bitrot/

MAINTAINER =		Michael McConville <mmcco@mykolab.com>

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
