# $OpenBSD: Makefile,v 1.1.1.1 2019/04/29 12:55:44 bket Exp $

COMMENT =		py.test plugin to validate Jupyter notebooks

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		nbval-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	-v --current-env

RUN_DEPENDS =		devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-jupyter_client${MODPY_FLAVOR} \
			devel/py-nbformat${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nbval${MODPY_FLAVOR} \
			math/py-sympy${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

post-patch:
	sed -i 's,py.test,py.test${MODPY_BIN_SUFFIX},' \
		${WRKSRC}/tests/test_unit_tests_in_notebooks.py

.include <bsd.port.mk>
