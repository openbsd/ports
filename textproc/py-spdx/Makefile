# $OpenBSD: Makefile,v 1.3 2019/07/12 20:50:13 sthen Exp $

COMMENT =		SPDX license list database

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		spdx-${MODPY_EGG_VERSION}
PKGNAME =		py-spdx-${MODPY_EGG_VERSION}
REVISION =		0

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
