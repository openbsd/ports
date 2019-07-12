# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:54 sthen Exp $

COMMENT =		library for stubbing in Python

MODPY_EGG_VERSION =	2.5.1
DISTNAME =		pytest-cov-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://pytest-cov.readthedocs.org/en/latest/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
