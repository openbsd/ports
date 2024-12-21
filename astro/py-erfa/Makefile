COMMENT=	Python wrapper for ERFA

MODPY_DISTV=	2.0.1.1

DISTNAME=	pyerfa-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	1

CATEGORIES=	astro

# https://github.com/liberfa/pyerfa
HOMEPAGE=	https://pyerfa.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MAINTAINER=	Wen Heping <wenheping2000@hotmail.com>

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
MODPY_PYTEST_ARGS=	erfa/tests

BUILD_DEPENDS=	math/py-numpy \
		math/py-oldest-supported-numpy \
		sysutils/py-packaging \
		www/py-jinja2
RUN_DEPENDS=	math/py-numpy
TEST_DEPENDS=	devel/py-test-doctestplus

pre-test:
	${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
