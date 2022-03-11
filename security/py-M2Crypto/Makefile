COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.38.0
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		security

HOMEPAGE =		https://gitlab.com/m2crypto/m2crypto

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		crypto pthread ssl ${MODPY_WANTLIB}

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

MAKE_ENV =		SWIG_FEATURES=-I/usr/include

BUILD_DEPENDS =		devel/swig

# XXX tests need "parameterized", dep was added in 0.37.0

.include <bsd.port.mk>
