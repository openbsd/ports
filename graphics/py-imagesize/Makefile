# $OpenBSD: Makefile,v 1.6 2019/05/13 19:03:52 danj Exp $

COMMENT =		getting image size from png/jpeg/jpeg2000/gif file

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		imagesize-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		graphics
REVISION =		1

HOMEPAGE =		https://github.com/shibukawa/imagesize_py

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
