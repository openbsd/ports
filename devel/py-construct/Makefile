# $OpenBSD: Makefile,v 1.9 2021/07/02 15:28:37 sthen Exp $

COMMENT =	powerful declarative parser/builder for binary data

# as of 2021/07/01, pykeepass needs this specific version
MODPY_EGG_VERSION = 2.10.54
EPOCH =		0

DISTNAME =	construct-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://construct.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

# github version has tests, but they require arrow (not yet in ports)
NO_TEST =		Yes

.include <bsd.port.mk>
