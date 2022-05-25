COMMENT=	build-time package to simplify C/Cython extensions

MODPY_EGG_VERSION= 0.1

DISTNAME=	extension-helpers-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://extension-helpers.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes
MODPY_PYTEST_ARGS= extension_helpers/tests

# wants py-coverage<5
NO_TEST=	Yes

FLAVOR=		python3
FLAVORS=	python3

.include <bsd.port.mk>
