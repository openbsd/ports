COMMENT=	pytest plugin with advanced doctest features

MODPY_EGG_VERSION=	0.12.0

DISTNAME=	pytest-doctestplus-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/astropy/pytest-doctestplus

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes
MODPY_PYTEST=	Yes

FLAVOR=		python3
FLAVORS=	python3

BUILD_DEPENDS=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-test${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test-remotedata${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		textproc/py-sphinx${MODPY_FLAVOR}

.include <bsd.port.mk>
