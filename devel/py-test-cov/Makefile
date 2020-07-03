# $OpenBSD: Makefile,v 1.15 2020/07/03 21:12:50 sthen Exp $

COMMENT =		pytest plugin for measuring coverage

MODPY_EGG_VERSION =	2.8.1
DISTNAME =		pytest-cov-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		0

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

# Missing py-fields, py-hunter and py-process-tests
NO_TEST =		Yes

.include <bsd.port.mk>
