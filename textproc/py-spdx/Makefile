# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:57 sthen Exp $

COMMENT =		SPDX license list database

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		spdx-${MODPY_EGG_VERSION}
PKGNAME =		py-spdx-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/bbqsrc/spdx-python

# CC0-1.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
