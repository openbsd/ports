COMMENT=	pytest plugin for filtering based on sub-packages

MODPY_EGG_VERSION=	0.1.2

DISTNAME=	pytest-filter-subpackage-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/py//}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/astropy/pytest-filter-subpackage

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
