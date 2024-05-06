COMMENT =		json rpc server library

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		python-lsp-jsonrpc-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		textproc/py-ujson${MODPY_FLAVOR}>=3.0.0

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
