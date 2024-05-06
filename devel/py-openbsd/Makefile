COMMENT =		Python pledge(2) and unveil(2) bindings
MODPY_EGG_VERSION =	0.1.0
DISTNAME =		openbsd-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
