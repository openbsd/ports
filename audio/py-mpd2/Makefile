# $OpenBSD: Makefile,v 1.15 2020/11/14 14:54:06 ajacoutot Exp $

COMMENT =		Python client interface for MPD

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		python-mpd2-${MODPY_EGG_VERSION}
PKGNAME =		py-mpd2-${MODPY_EGG_VERSION}

CATEGORIES =		audio

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=		python3

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/python${MODPY_VERSION} mpd_test.py

.include <bsd.port.mk>
