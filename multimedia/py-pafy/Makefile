# $OpenBSD: Makefile,v 1.7 2018/11/25 20:34:37 danj Exp $

MODPY_EGG_VERSION =	0.5.4
COMMENT =	download YouTube content and retrieve metadata
DISTNAME =	pafy-${MODPY_EGG_VERSION}
PKGNAME =	py-pafy-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS +=		www/youtube-dl

.include <bsd.port.mk>
