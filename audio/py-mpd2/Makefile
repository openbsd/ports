# $OpenBSD: Makefile,v 1.12 2019/04/28 20:51:26 sthen Exp $

COMMENT =		Python client interface for MPD

MODPY_EGG_VERSION =	0.5.5
DISTNAME =		python-mpd2-${MODPY_EGG_VERSION}
PKGNAME =		py-mpd2-${MODPY_EGG_VERSION}
REVISION =		1

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
