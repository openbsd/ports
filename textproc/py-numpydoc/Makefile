# $OpenBSD: Makefile,v 1.12 2020/07/03 21:13:15 sthen Exp $

COMMENT =		Sphinx extension to support docstrings in Numpy format

MODPY_EGG_VERSION =	0.7.0
DISTNAME =		numpydoc-${MODPY_EGG_VERSION}
PKGNAME =		py-numpydoc-${MODPY_EGG_VERSION}
CATEGORIES =		textproc devel
HOMEPAGE =		https://github.com/numpy/numpydoc
REVISION =		2

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	numpydoc

RUN_DEPENDS =		graphics/py-matplotlib${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

.include <bsd.port.mk>
