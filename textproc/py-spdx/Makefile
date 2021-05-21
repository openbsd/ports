# $OpenBSD: Makefile,v 1.5 2021/05/21 19:50:37 kmos Exp $

COMMENT =		SPDX license list database

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		spdx-${MODPY_EGG_VERSION}
PKGNAME =		py-spdx-${MODPY_EGG_VERSION}
REVISION =		2

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
