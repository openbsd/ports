# $OpenBSD: Makefile,v 1.14 2021/11/02 00:01:38 sthen Exp $

MODPY_EGG_VERSION =	0.5.5
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

BUILD_DEPENDS =		www/youtube-dl
RUN_DEPENDS =		www/youtube-dl

.include <bsd.port.mk>
