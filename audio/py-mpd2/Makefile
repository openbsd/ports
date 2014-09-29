# $OpenBSD: Makefile,v 1.5 2014/09/29 07:02:02 jasper Exp $

COMMENT =		Python client interface for MPD

MODPY_EGG_VERSION =	0.5.3
DISTNAME =		python-mpd2-${MODPY_EGG_VERSION}
PKGNAME =		py-mpd2-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		audio

HOMEPAGE =		https://pypi.python.org/pypi/python-mpd2

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/python-mpd2/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
