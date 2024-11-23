COMMENT =		yet another URL library

MODPY_EGG_VERSION =	1.18.0
DISTNAME =		yarl-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www devel

# https://github.com/aio-libs/yarl
HOMEPAGE =		https://yarl.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR} \
			sysutils/py-expandvars${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-propcache${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR}>=2.0 \
			www/py-multidict${MODPY_FLAVOR}>=4.0

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-runner${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR}

.include <bsd.port.mk>
