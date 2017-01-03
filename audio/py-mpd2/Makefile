# $OpenBSD: Makefile,v 1.11 2017/01/03 19:14:44 landry Exp $

COMMENT =		Python client interface for MPD

MODPY_EGG_VERSION =	0.5.5
DISTNAME =		python-mpd2-${MODPY_EGG_VERSION}
PKGNAME =		py-mpd2-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		audio

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/python${MODPY_VERSION} mpd_test.py

.include <bsd.port.mk>
