# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:57 sthen Exp $

MODPY_EGG_VERSION =	0.5.4
COMMENT =	download YouTube content and retrieve metadata
DISTNAME =	pafy-${MODPY_EGG_VERSION}
PKGNAME =	py-pafy-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia
REVISION =	0

# LGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		www/youtube-dl
RUN_DEPENDS =		www/youtube-dl

.include <bsd.port.mk>
