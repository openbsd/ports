# $OpenBSD: Makefile,v 1.35 2020/07/03 21:12:48 sthen Exp $

COMMENT =		tool for installing Python packages

MODPY_EGG_VERSION =	19.1.1
DISTNAME =		pip-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://pip.pypa.io/en/stable/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# No test suites in pypi tarball
NO_TEST =		Yes

.include <bsd.port.mk>
