# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:51 sthen Exp $

COMMENT =		plugin for managing VCR.py cassettes

MODPY_EGG_VERSION =	1.0.2
DISTNAME =		pytest-vcr-${MODPY_EGG_VERSION}
PKGNAME =		py-test-vcr-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/ktosiek/pytest-vcr

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		www/py-vcrpy${MODPY_FLAVOR}

#tests not included in PyPI sdist, an issue is open upstream
.include <bsd.port.mk>
