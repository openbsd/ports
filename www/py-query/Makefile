COMMENT =		jquery-like library for python

MODPY_DISTV =	1.4.3
DISTNAME =		pyquery-${MODPY_DISTV}
PKGNAME =		py-query-${MODPY_DISTV}
REVISION =		5

CATEGORIES =		www

HOMEPAGE =		https://github.com/gawel/pyquery

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		textproc/py-cssselect \
			textproc/py-lxml
TEST_DEPENDS =		www/py-webtest

.include <bsd.port.mk>
