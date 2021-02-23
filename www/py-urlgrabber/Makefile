# $OpenBSD: Makefile,v 1.6 2021/02/23 19:39:48 sthen Exp $

COMMENT =		high-level cross-protocol url-grabber

MODPY_EGG_VERSION =	3.9.1
DISTNAME =		urlgrabber-${MODPY_EGG_VERSION}
PKGNAME =		py-urlgrabber-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/py-curl

.include <bsd.port.mk>
