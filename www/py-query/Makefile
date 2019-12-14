# $OpenBSD: Makefile,v 1.1.1.1 2019/12/14 22:21:55 kmos Exp $

COMMENT =		jquery-like library for python

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		pyquery-${MODPY_EGG_VERSION}
PKGNAME =		py-query-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		https://github.com/gawel/pyquery

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		textproc/py-cssselect${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}
TEST_DEPENDS =		www/py-webtest${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
