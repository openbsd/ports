COMMENT =		yet another URL library

MODPY_DISTV =	1.18.0
DISTNAME =		yarl-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www devel

# https://github.com/aio-libs/yarl
HOMEPAGE =		https://yarl.readthedocs.org

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		lang/cython \
			sysutils/py-expandvars

RUN_DEPENDS =		devel/py-propcache \
			net/py-idna>=2.0 \
			www/py-multidict>=4.0

TEST_DEPENDS =		devel/py-test-cov \
			devel/py-test-runner \
			devel/py-test-xdist

.include <bsd.port.mk>
