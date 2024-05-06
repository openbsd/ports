COMMENT =		console XMPP client

MODPY_EGG_VERSION =	0.13.1
DISTNAME =		poezio-${MODPY_EGG_VERSION}
CATEGORIES =		net
REVISION =		4

HOMEPAGE =		https://poez.io/

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	-v test/

MODPY_DISTUTILS_BUILD =	build_ext --inplace

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}

RUN_DEPENDS =		devel/desktop-file-utils \
			net/py-aiodns${MODPY_FLAVOR} \
			net/py-slixmpp${MODPY_FLAVOR} \
			security/py-potr${MODPY_FLAVOR}

.include <bsd.port.mk>
