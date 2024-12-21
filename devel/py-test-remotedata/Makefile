COMMENT =	pytest plugin for controlling remote data access

MODPY_DISTV =	0.4.1

DISTNAME =	pytest-remotedata-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/astropy/pytest-remotedata

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

RUN_DEPENDS =	devel/py-test \
		sysutils/py-packaging

# so that pytest can find this plugin; some tests need network access
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
