# $OpenBSD: Makefile,v 1.10 2021/02/20 13:20:17 sthen Exp $

COMMENT =		getting image size from png/jpeg/jpeg2000/gif file

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		imagesize-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		graphics
REVISION =		3

HOMEPAGE =		https://github.com/shibukawa/imagesize_py

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
