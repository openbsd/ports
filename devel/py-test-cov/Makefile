# $OpenBSD: Makefile,v 1.12 2019/05/13 18:06:44 danj Exp $

COMMENT =		library for stubbing in Python

MODPY_EGG_VERSION =	2.5.1
DISTNAME =		pytest-cov-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://pytest-cov.readthedocs.org/en/latest/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
