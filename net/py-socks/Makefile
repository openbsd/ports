# $OpenBSD: Makefile,v 1.17 2021/11/02 00:01:42 sthen Exp $

COMMENT =		Python module for working with SOCKS proxies

MODPY_EGG_VERSION =	1.7.1
DISTNAME =		PySocks-${MODPY_EGG_VERSION}
PKGNAME =		py-socks-${MODPY_EGG_VERSION}
REVISION =		3

CATEGORIES =		net

HOMEPAGE =		https://github.com/Anorov/PySocks

MAINTAINER =		Clem Atis <clematis@insiberia.net>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# Tests depend on bundled Linux binary
NO_TEST =		Yes

.include <bsd.port.mk>
