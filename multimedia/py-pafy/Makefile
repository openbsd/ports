# $OpenBSD: Makefile,v 1.15 2022/02/22 04:22:21 bket Exp $

MODPY_EGG_VERSION =	0.5.5
COMMENT =	download YouTube content and retrieve metadata
DISTNAME =	pafy-${MODPY_EGG_VERSION}
PKGNAME =	py-pafy-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia
REVISION =	1

# LGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes

BUILD_DEPENDS =		www/youtube-dl
RUN_DEPENDS =		www/youtube-dl

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
