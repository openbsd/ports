# $OpenBSD: Makefile,v 1.9 2016/01/10 15:55:50 jasper Exp $

COMMENT =		Python client interface for MPD

MODPY_EGG_VERSION =	0.5.4
DISTNAME =		python-mpd2-${MODPY_EGG_VERSION}
PKGNAME =		py-mpd2-${MODPY_EGG_VERSION}

CATEGORIES =		audio

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# too many missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
