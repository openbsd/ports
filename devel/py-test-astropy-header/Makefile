COMMENT=	add diagnostic information to pytest's output

MODPY_EGG_VERSION=	0.2.2

DISTNAME=	pytest-astropy-header-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/py//}
REVISION=	1

CATEGORIES=	devel

HOMEPAGE=	https://github.com/astropy/pytest-astropy-header

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
