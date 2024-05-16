COMMENT=	lightweight template library

MODPY_EGG_VERSION=	3.2.2
DISTNAME=	wheezy.template-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/akornatskyy/wheezy.template

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}

.include <bsd.port.mk>
