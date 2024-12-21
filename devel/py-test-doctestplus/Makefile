COMMENT=	pytest plugin with advanced doctest features

MODPY_DISTV=	1.2.1

DISTNAME=	pytest-doctestplus-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	0

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
