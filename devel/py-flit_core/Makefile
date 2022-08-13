COMMENT =	distribution-building parts of Flit

MODPY_EGG_VERSION =	3.7.1
REVISION =	1

DISTNAME =	flit_core-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

# https://github.com/pypa/flit
HOMEPAGE =	https://flit.pypa.io/

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVOR =	python3
FLAVORS =	python3

MODPY_PYTEST_ARGS =	flit_core/tests
MODPY_PEP517 =	Yes

post-install:
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/flit_core/tests

.include <bsd.port.mk>
