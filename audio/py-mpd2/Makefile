# $OpenBSD: Makefile,v 1.14 2020/07/03 21:12:35 sthen Exp $

COMMENT =		Python client interface for MPD

MODPY_EGG_VERSION =	0.5.5
DISTNAME =		python-mpd2-${MODPY_EGG_VERSION}
PKGNAME =		py-mpd2-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		audio

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/python${MODPY_VERSION} mpd_test.py

.include <bsd.port.mk>
