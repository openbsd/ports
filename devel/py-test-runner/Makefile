# $OpenBSD: Makefile,v 1.10 2019/05/13 18:06:44 danj Exp $

COMMENT =		invoke py.test as distutils command

MODPY_EGG_VERSION =	2.11.1
DISTNAME =		pytest-runner-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		1

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
