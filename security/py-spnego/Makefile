COMMENT =		SPNEGO authentication library

MODPY_EGG_VERSION =	0.11.1
DISTNAME =		pyspnego-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		security

HOMEPAGE =		https://github.com/jborean93/pyspnego

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR} \
			security/py-gssapi${MODPY_FLAVOR} \
			security/py-krb5${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-isort${MODPY_FLAVOR} \
			devel/py-mypy${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			textproc/py-black${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR}

TEST_IS_INTERACTIVE =	test_auth.py takes ages to complete

.include <bsd.port.mk>
