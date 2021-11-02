# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:56 sthen Exp $

COMMENT =		automatically mock HTTP interactions to speed testing

MODPY_EGG_VERSION =	2.1.1
DISTNAME =		vcrpy-${MODPY_EGG_VERSION}
PKGNAME =		py-vcrpy-${MODPY_EGG_VERSION}
REVISION =		3

CATEGORIES =		www

HOMEPAGE =		https://github.com/kevin1024/vcrpy

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			devel/py-wrapt${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-yarl${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-httpbin${MODPY_FLAVOR}

.include <bsd.port.mk>
