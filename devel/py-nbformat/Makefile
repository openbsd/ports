# $OpenBSD: Makefile,v 1.11 2020/03/23 05:05:03 bket Exp $

COMMENT =		Jupyter notebook format

MODPY_EGG_VERSION =	4.4.0
REVISION =		0
DISTNAME =		nbformat-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org

RUN_DEPENDS =		devel/py-ipython_genutils${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=4.1 \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.3.0 \
			devel/py-jsonschema${MODPY_FLAVOR}>=2.4
TEST_DEPENDS =		devel/py-testpath${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	nbformat

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
