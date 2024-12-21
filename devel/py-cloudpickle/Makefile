COMMENT =	extended pickling support for Python objects
MODPY_DISTV =	1.5.0
DISTNAME =	cloudpickle-${MODPY_DISTV}
PKGNAME =	py-cloudpickle-${MODPY_DISTV}
CATEGORIES =	devel
REVISION =	5

HOMEPAGE =	https://github.com/cloudpipe/cloudpickle
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

TEST_DEPENDS =	devel/py-mock \
		sysutils/py-psutil \
		www/py-tornado

MODPY_TEST_LIBDIR = ".:tests:tests/cloudpickle_testpkg"

.include <bsd.port.mk>
