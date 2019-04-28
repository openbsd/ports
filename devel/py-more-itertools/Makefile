# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:34 sthen Exp $

COMMENT =		routines for operating on iterables beyond itertools

MODPY_EGG_VERSION =	4.1.0
DISTNAME =		more-itertools-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	more_itertools/tests

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
