# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:51 sthen Exp $

COMMENT =		Jupyter notebook format

MODPY_EGG_VERSION =	4.3.0
DISTNAME =		nbformat-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org

RUN_DEPENDS =		devel/py-ipython_genutils${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.3.0 \
			devel/py-jsonschema${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-testpath${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	nbformat

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/jupyter-trust ${PREFIX}/bin/jupyter-trust${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
