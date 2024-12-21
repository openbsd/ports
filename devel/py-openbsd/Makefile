COMMENT =		Python pledge(2) and unveil(2) bindings
MODPY_DISTV =	0.1.0
DISTNAME =		openbsd-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-cffi
RUN_DEPENDS =		devel/py-cffi

TEST_DEPENDS =		devel/py-test-cov

.include <bsd.port.mk>
