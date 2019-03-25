# $OpenBSD: Makefile,v 1.5 2019/03/25 14:29:51 kn Exp $

COMMENT =		Jupyter notebook format

MODPY_EGG_VERSION =	4.3.0
DISTNAME =		nbformat-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

RUN_DEPENDS =		devel/py-ipython_genutils${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.3.0 \
			devel/py-jsonschema${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-testpath${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	nbformat

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/jupyter-trust ${PREFIX}/bin/jupyter-trust${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
