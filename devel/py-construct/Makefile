# $OpenBSD: Makefile,v 1.11 2022/03/01 10:29:53 sthen Exp $

COMMENT =	powerful declarative parser/builder for binary data

MODPY_EGG_VERSION = 2.10.68

DISTNAME =	construct-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://construct.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

EPOCH =		0

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

# github version has tests, but they require arrow (not yet in ports)
NO_TEST =		Yes

.include <bsd.port.mk>
