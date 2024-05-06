COMMENT =		crypto and TLS toolkit for Python

MODPY_EGG_VERSION =	0.40.1
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		security

HOMEPAGE =		https://gitlab.com/m2crypto/m2crypto

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		crypto pthread ssl ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/swig
MAKE_ENV =		SWIG_FEATURES=-I/usr/include

# skip tests which hang
MODPY_PYTEST_ARGS =	-k 'not test_do_handshake_succeed and not test_verify_cb_old'

.include <bsd.port.mk>
