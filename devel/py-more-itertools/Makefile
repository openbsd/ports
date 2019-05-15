# $OpenBSD: Makefile,v 1.4 2019/05/15 12:04:37 kmos Exp $

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

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
