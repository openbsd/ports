# $OpenBSD: Makefile,v 1.1.1.1 2022/03/01 10:32:50 bket Exp $

COMMENT =		portable, lightweight MessagePack (de)serializer

MODPY_EGG_VERSION =	2.7.1
DISTNAME =		u-msgpack-python-${MODPY_EGG_VERSION}
PKGNAME =		py-u-msgpack-${MODPY_EGG_VERSION}

CATEGORIES =		net textproc

HOMEPAGE =		https://github.com/vsergeev/u-msgpack-python

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
