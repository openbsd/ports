# $OpenBSD: Makefile,v 1.38 2021/05/21 19:50:28 kmos Exp $

COMMENT =		tool for installing Python packages

MODPY_EGG_VERSION =	20.3.4
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
