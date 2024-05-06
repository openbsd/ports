COMMENT=	Python wrapper for ERFA

MODPY_EGG_VERSION=	2.0.1.1

DISTNAME=	pyerfa-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	0

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

FLAVOR=		python3
FLAVORS=	python3

BUILD_DEPENDS=	math/py-numpy${MODPY_FLAVOR} \
		math/py-oldest-supported-numpy${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR}
RUN_DEPENDS=	math/py-numpy${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test-doctestplus${MODPY_FLAVOR}

pre-test:
	${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
