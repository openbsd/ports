COMMENT=	pytest plugin with advanced doctest features

MODPY_DISTV=	1.6.0
DISTNAME=	pytest_doctestplus-${MODPY_DISTV}
PKGNAME=	py-test-doctestplus-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/astropy/pytest-doctestplus

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-test
TEST_DEPENDS=	devel/py-test-remotedata \
		math/py-numpy \
		textproc/py-sphinx

.include <bsd.port.mk>
