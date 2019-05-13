# $OpenBSD: Makefile,v 1.11 2019/05/13 19:03:52 danj Exp $

COMMENT =		Python module for working with SOCKS proxies

MODPY_EGG_VERSION =	1.6.7
DISTNAME =		PySocks-${MODPY_EGG_VERSION}
PKGNAME =		py-socks-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		net

HOMEPAGE =		https://github.com/Anorov/PySocks

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
