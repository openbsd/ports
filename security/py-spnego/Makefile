COMMENT =		SPNEGO authentication library

MODPY_DISTV =	0.11.2
DISTNAME =		pyspnego-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://github.com/jborean93/pyspnego

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		security/py-cryptography \
			security/py-gssapi \
			security/py-krb5

TEST_DEPENDS =		devel/py-isort \
			devel/py-mypy \
			devel/py-test-mock \
			textproc/py-black \
			textproc/py-ruamel.yaml

TEST_IS_INTERACTIVE =	test_auth.py takes ages to complete

.include <bsd.port.mk>
