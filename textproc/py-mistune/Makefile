# $OpenBSD: Makefile,v 1.6 2019/05/13 19:03:53 danj Exp $

COMMENT =		markdown parser for Python

MODPY_EGG_VERSION =	0.7.4
DISTNAME =		mistune-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/lepture/mistune

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
