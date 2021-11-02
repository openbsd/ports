# $OpenBSD: Makefile,v 1.9 2021/11/02 00:02:41 sthen Exp $

COMMENT =		makes working with XML feel like orking with JSON

MODPY_EGG_VERSION =	0.12.0
DISTNAME = 		xmltodict-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		textproc

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
