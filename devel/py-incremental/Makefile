# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:33 sthen Exp $

COMMENT =		versioning library for Python projects

MODPY_EGG_VERSION =	17.5.0

DISTNAME =		incremental-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	src/incremental

TEST_DEPENDS =		devel/py-click${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
