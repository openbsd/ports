# $OpenBSD: Makefile,v 1.4 2020/07/03 21:13:16 sthen Exp $

COMMENT =		SPDX license list database

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		spdx-${MODPY_EGG_VERSION}
PKGNAME =		py-spdx-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/bbqsrc/spdx-python

# CC0-1.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
